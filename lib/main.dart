import 'dart:io';

import 'package:flutter/material.dart';
import 'package:mypcot/services/sslservice.dart';
import 'package:mypcot/view/homescreen/homescreen.dart';
import 'package:mypcot/viewmodel/products_provider.dart';
import 'package:provider/provider.dart';

void main() {
  HttpOverrides.global = MyHttpOverrides();
  runApp(
    ChangeNotifierProvider(
    create: (context) =>HomeDataProvider(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const Homescreen(),
    );
  }
}

