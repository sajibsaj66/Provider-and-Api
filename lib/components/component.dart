import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:santotu03sajib/provider/provider.dart';

class AbolTableChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // var _provider = Provider.of<ABProvider>(context);
    print("Sajib");
    return Center(
      child: Consumer<ABProvider>(
        builder: (context, data, child) {
          return Text(
            data.count.toString(),
            style: TextStyle(fontSize: 90.0),
          );
        },
        // child: Text("Out child"),
      ),
      // child: Text(
      //    _provider.count.toString(),
      //   style: TextStyle(fontSize: 40.0),
      // ),
    );
  }
}
