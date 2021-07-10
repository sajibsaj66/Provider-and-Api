import 'package:http/http.dart';
import 'package:santotu03sajib/model/ip_data_model_quick.dart';

Future<IpDataModel> getData() async {
  var request =
      Request('GET', Uri.parse('https://ipapi.co/45.127.245.158/json/'));

  StreamedResponse response = await request.send();

  if (response.statusCode == 200) {
    var body = await response.stream.bytesToString();
    IpDataModel encodeData = ipDataModelFromJson(body);

    print(body);
    return encodeData;
  } else {
    print(response.reasonPhrase);
    return IpDataModel();
  }
}
