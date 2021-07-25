//import 'dart:ffi';

import 'package:demoapp/pages/account_page.dart';
import 'package:demoapp/pages/address_page.dart';
import 'package:demoapp/pages/home_page.dart';
import 'package:demoapp/pages/login_page.dart';
import 'package:demoapp/pages/routes.dart';
import 'package:demoapp/pages/homescreen.dart';
import 'package:flutter/material.dart';
//import 'globals.dart';
import 'package:demoapp/pages/register_page.dart';
//import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      //commenting this home:Homepage() becauss homepage directory is used in routes
      //home: Homepage(),
      themeMode: ThemeMode.dark,
      theme: ThemeData(primarySwatch: Colors.red),
      darkTheme: ThemeData(
          //brightness: Brightness.dark,
          //primarySwatch: Colors.brown),
          ),
      initialRoute: Myroutes.homeroute,
      routes: {
        "/": (context) => LoginPage(),
        Myroutes.homeroute: (context) => Homepage(),
        Myroutes.loginroute: (context) => LoginPage(),
        Myroutes.registerroute: (context) => RegisterPage(),
        Myroutes.homescreenroute: (context) => Homescreen(),
        Myroutes.accountroute: (context) => Account(),
        Myroutes.addressroute: (context) => Address()
        // "/home": (context) => Homepage(),
        // "/login": (context) => LoginPage(),
      },
    );
  }
}
