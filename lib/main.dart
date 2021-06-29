import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'dart:convert';
import 'package:flutter_application_1/utils/routes.dart';
import 'pages/second.dart';
import 'package:flutter_application_1/pages/login.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: FirstPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(primarySwatch: Colors.indigo),
      darkTheme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      routes: {
        "/" : (context) => FirstPage(),
        MyRoutes.login : (context) => LoginPage()
      },
    );
  }
}


//Can you see me???