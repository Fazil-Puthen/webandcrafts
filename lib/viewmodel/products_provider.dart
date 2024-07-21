import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:web_crafts/model/model2/home_model2.dart';

class HomeDataProvider with ChangeNotifier {
  HomeData? homeData;
  bool isLoading = true;
  String? error;

  Future<void> fetchHomeData() async {
    const  url = 'https://64bfc2a60d8e251fd111630f.mockapi.io/api/Todo';
    try {
      final response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        final data =await jsonDecode(response.body);
        homeData =  HomeData.fromJson(data);
        if (homeData != null) {
        isLoading = false;
        notifyListeners();

      }else{
      }
       }
      else {
        error = 'Failed to load data';
      }
    } catch (e) {
      error = e.toString();
    } 
}}
