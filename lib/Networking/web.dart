import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:taskwin/models/other_links_model.dart';
import 'package:taskwin/variables/global_variables.dart';
import 'package:taskwin/variables/model_variables.dart';


//fetch other links data
Future<String> otherLinksDataFetch() async {
  http.Response response = await http.get(Uri.parse("$baseUrl$basePostFix$otherLinksUrl"));
  if(response.statusCode == 200)
  {
    print(response.body);
    otherLinksModel = OtherLinksModel.fromJson(jsonDecode(response.body.toString()));
    if(otherLinksModel.otherlinks![0].link?.trim()=='1')
    {
      objLive=true;
    }
    return response.body;
  }
  else
  {
    return "0";
    //check connection
  }
}

