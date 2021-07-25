//import 'dart:html';

import 'package:demoapp/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class RegisterPage extends StatefulWidget {
  // const RegisterPage({Key? key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.greenAccent,
      child: SingleChildScrollView(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Container(
              alignment: Alignment.topCenter,
              child: Expanded(
                  child: Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, Myroutes.homeroute);
                    },
                    child: Container(
                      // alignment: Alignment(5, 0),

                      child: Center(
                        child: Text(
                          'X',
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),

                      margin: EdgeInsets.only(right: 325, top: 10),
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                          color: Colors.greenAccent, shape: BoxShape.circle),

                      //child: Icon(Icons.close),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text(
                        'REGISTER',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 52,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    margin: EdgeInsets.only(
                        top: 70, bottom: 60, left: 100, right: 100),
                    width: 150,
                    height: 150,
                    decoration: BoxDecoration(
                        color: Colors.greenAccent, shape: BoxShape.circle),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 8, right: 8),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: (InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0),
                            child: Icon(Icons.app_registration_rounded),
                          ),
                          hintText: 'DISPLAY NAME',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 8, right: 8),
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      decoration: (InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0),
                            child: Icon(Icons.mail),
                          ),
                          hintText: 'EMAIL',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)))),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 10, left: 8, right: 8),
                    child: TextFormField(
                      obscureText: true,
                      decoration: (InputDecoration(
                          prefixIcon: Padding(
                            padding: EdgeInsets.all(0),
                            child: Icon(Icons.lock),
                          ),
                          hintText: 'PASSWORD',
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(40)))),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 70, left: 15, right: 15),
                    child: TextButton(
                      child: Text('CREATE ACCOUNT',
                          style: TextStyle(fontSize: 18)),
                      style: TextButton.styleFrom(
                          primary: Colors.white,
                          //onSurface: Colors.white,
                          //shadowColor: Colors.black,
                          backgroundColor: Colors.greenAccent,
                          elevation: 5,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30)),
                          minimumSize: Size(double.infinity, 30),
                          //minimumSize: Size(400, 100),

                          padding: EdgeInsets.only(
                              left: 0, right: 0, top: 15, bottom: 15)),
                      onPressed: () {
                        //Navigator.pushNamed(context, Myroutes.loginroute);
                      },
                    ),
                  ),
                ],
              )),

              width: double.infinity,
              height: 760,
              //constraints: BoxConstraints.expand(),

              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),

                //color: Colors.greenAccent,
              ),
            ),
          ),

          // Container(
          //   decoration: BoxDecoration(),

          // )

          //Container 1

          // Image.asset("assets/images/login.png"),
          // Text("This right here is the Second Screen"),
          // SizedBox(
          //   height: 40,
          // ),
          //Padding(padding:EdgeInsetsGeometry ),
          // Text(
          //   "THANK YOU FOR SUBMITTING !!",
          //   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
          // ),
          //SizedBox(
          // height: 40,
          // ),

          //Container 2
          // Center(
          //   child: Text(
          //     "Login Page",
          //     style: TextStyle(
          //         fontSize: 40,
          //         fontStyle: FontStyle.italic,
          //         fontWeight: FontWeight.bold,
          //         color: Colors.blue),
          //     textScaleFactor: 1.0,
          //   ),
        ]),
      ),
    );
  }
}

// Inserting Text Widget
//    child: Center(
//         child: Text(
//           "Login Page",
//           style: TextStyle(
//               fontSize: 40,
//               fontStyle: FontStyle.italic,
//               fontWeight: FontWeight.bold,
//               color: Colors.blue),
//           textScaleFactor: 1.0,
//         ),
//       ),
