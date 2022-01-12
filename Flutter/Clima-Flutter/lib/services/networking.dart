import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{

  final String url;
  NetworkHelper({this.url});

  Future getData() async{
    //Update URL in http.dart

    http.Response response = await http.get(Uri.parse(url));

    if(response.statusCode==200){
      String data = response.body;

      // var longitude = jsonDecode(data)['coord']['lon'];
      // var latitude = jsonDecode(data)['coord']['lat'];
      // var weatherDescription = jsonDecode(data)['weather'][0]['main'];
      // print(data);
      var decodedData = jsonDecode(data);
      return decodedData;

    }else{
      print("Error: "+response.body);
    }
  }
}