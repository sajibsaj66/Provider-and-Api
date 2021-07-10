import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:santotu03sajib/apis/ip_data.dart';
import 'package:santotu03sajib/model/ip_data_model_quick.dart';
import 'package:santotu03sajib/provider/provider.dart';

class AbolTable extends StatefulWidget {
  @override
  _AbolTableState createState() => _AbolTableState();
}

class _AbolTableState extends State<AbolTable> {
  late Future<IpDataModel> data;
  // int count = 123;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    data = getData();
  }

  @override
  Widget build(BuildContext context) {
    // var _provider = Provider.of<ABProvider>(context);
    var _provider = Provider.of<ABProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Center(
          child: Text(
            "Provide With Api",
            textAlign: TextAlign.justify,
          ),
        ),
      ),
      body: Center(
        child: FutureBuilder<IpDataModel>(
          future: data,
          builder: (context, snapShot) {
            return snapShot.hasData
                ? Text(
                    snapShot.data!.countryCapital.toString(),
                    style: TextStyle(fontSize: 60.0, color: Colors.teal),
                  )
                : CircularProgressIndicator();
          },
        ),
      ),
      // AbolTableChild(
      //     // child: Text(
      //     //   // count.toString(),
      //     //   Provider.of<ABProvider>(context).count.toString(),
      //     //   style: TextStyle(fontSize: 40.0),
      //     // ),
      //     ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FloatingActionButton(
            // onPressed: () => setState(() => count++),
            onPressed: () => _provider.increase(),
            child: Icon(Icons.add),
          ),
          SizedBox(
            width: 20.0,
          ),
          FloatingActionButton(
            // onPressed: () => setState(() => count--),
            onPressed: () => _provider.decrease(),

            child: Icon(Icons.remove),
          ),
        ],
      ),
    );
  }
}
