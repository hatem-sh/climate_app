import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper{
  NetworkHelper( this.url);
  final String url ;

  Future getData() async {

    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      String data = response.body;
      var deCodedData = jsonDecode(data);
      return deCodedData;

    } else {
      print(response.statusCode);
    }
  }


}