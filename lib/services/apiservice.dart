import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:mypcot/model/home_model.dart';

class FetchDataService{

Future<HomeData> fetchapidata()async{
  String url='https://64bfc2a60d8e251fd111630f.mockapi.io/api/Todo';

try{
  final uri=Uri.parse(url);
  final result=await http.get(uri);
  if(result.statusCode==200){
    print('this is the api call');
    // final response=jsonDecode(result.body);
    final Map<String, dynamic> response=jsonDecode(result.body);
    print('this is the response from apiservice $response');
    return HomeData.fromJson(response);
  }
  else{
    throw Exception('Some error occured');
  }}
  catch(e){
    throw Exception('this is the error in apiservice: $e');
  }
}
}