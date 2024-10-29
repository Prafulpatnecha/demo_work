

import 'dart:convert';

import 'package:http/http.dart';
import 'package:http/http.dart' as http;
import 'package:untitled/model/api_model.dart';

class ApiHelper {
  ApiHelper._();
  static ApiHelper apiHelper = ApiHelper._();
  String url = "https://saavn.dev/api/search/songs?query=p";
  Future apiCalling()
  async {
    Response response = await http.get(Uri.parse(url));
    if(response.statusCode==200)
      {
        final json = jsonDecode(response.body);
        return json;
      }
    else{
      return {};
    }
  }
}