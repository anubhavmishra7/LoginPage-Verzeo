import 'package:demoapp/pages/routes.dart';
import 'package:flutter/material.dart';
//import 'package:url_launcher/url_launcher.dart';

class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);
  //String fullName = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text(
      //     "Task-4",
      //     style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
      //   ),
      //   centerTitle: true,
      //   backgroundColor: Colors.yellow,
      //   actions: [Icon(Icons.login), Icon(Icons.logout)],
      //   //leading: Icon(Icons.holiday_village),
      // ),
      body: Center(
        child: Column(
          children: [
            Expanded(
              child: Container(
                child: Column(
                  children: <Widget>[
                    // Container(
                    //   child: TextField(
                    //     decoration: InputDecoration(
                    //       border: OutlineInputBorder(),
                    //       labelText: 'Full Name',
                    //     ),
                    //   ),
                    // ),
                    //crossAxisAlignment: CrossAxisAlignment.stretch
                    Container(
                      child: Center(
                        child: Text(
                          'GO',
                          style: TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 107,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      margin: EdgeInsets.all(50),
                      width: 147,
                      height: 147,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 190.0),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                            color: Colors.white, shape: BoxShape.circle),
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 70.0),
                      child: TextButton(
                        child: Text('LOGIN', style: TextStyle(fontSize: 20)),
                        style: TextButton.styleFrom(
                            primary: Colors.greenAccent,
                            //onSurface: Colors.white,
                            //shadowColor: Colors.black,
                            backgroundColor: Colors.white,
                            elevation: 5,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30)),
                            minimumSize: Size(double.infinity, 30),
                            //minimumSize: Size(400, 100),

                            padding: EdgeInsets.only(
                                left: 0, right: 0, top: 15, bottom: 15)),
                        onPressed: () {
                          Navigator.pushNamed(context, Myroutes.loginroute);
                        },
                      ),
                    ),

                    Padding(
                      padding: const EdgeInsets.only(top: 15),
                      child: TextButton(
                        child: Text('REGISTER', style: TextStyle(fontSize: 20)),
                        style: TextButton.styleFrom(
                            primary: Colors.white,
                            backgroundColor: Colors.greenAccent,
                            elevation: 5,
                            minimumSize: Size(double.maxFinite, 30),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: EdgeInsets.only(
                                top: 15, bottom: 15, left: 0, right: 0)),
                        onPressed: () {
                          Navigator.pushNamed(context, Myroutes.registerroute);
                        },
                      ),
                    ),
                  ],
                ),

                padding: EdgeInsets.only(top: 40),
                //color: Colors.blue,
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    // border: Border.all(
                    //   color: Colors.black,
                    // ),
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(200))),
                // alignment: Alignment.bottomRight,

                // child: Image.network(
                //   "https://images.unsplash.com/photo-1624542316124-4dd666c0e2c4?ixid=MnwxMjA3fDB8MHxlZGl0b3JpYWwtZmVlZHwxNXx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=600&q=60",
                width: double.maxFinite,
                height: double.maxFinite,
              ),
            ),

            // child: Text(
            //   'Home Screen',
            //   style: TextStyle(
            //       fontSize: 40, color: Colors.red, fontWeight: FontWeight.bold),
            // ),

            // Container(
            //     margin: EdgeInsets.all(20),
            //     child: TextField(
            //       decoration: InputDecoration(
            //         border: OutlineInputBorder(),
            //         labelText: 'Full Name',
            //       ),
            //     )),

            // TextButton(
            //   child: Text('Submit : Click to go to login page'),
            //   style: TextButton.styleFrom(
            //       primary: Colors.yellow, backgroundColor: Colors.blue),
            //   onPressed: () {
            //     Navigator.pushNamed(context, Myroutes.loginroute);
            //   },
            // ),

            // LAUNCH URL(OPEN ANY URL USING THIS SIZED BOX)
            //
            // SizedBox(
            //   width: 130,
            //   height: 40,
            //   child: ElevatedButton(
            //     onPressed: _launchURL,
            //     child: Text("Launch URL"),
            //     style: ButtonStyle(
            //         backgroundColor: MaterialStateProperty.all(Colors.red)),
            //   ),
            // ),

            // SizedBox(
            //   width: 300,
            //   height: 50,
            //   child: ElevatedButton(
            //     child: Text("SizedBox"),
            //     style: ElevatedButton.styleFrom(primary: Colors.red),
            //     onPressed: () {},
            //   ),
            // ),

            //Icon

            // Row(children: <Widget>[
            //   Center(child: Icon(Icons.directions_transit)),
            //   Center(
            //     child: Icon(Icons.directions_transit_rounded),
            //   )
            // ]),

            // Container(
            //   child: Column(children: <Widget>[
            //     Center(child: Icon(Icons.directions_transit)),
            //     Center(
            //       child: Icon(Icons.directions_transit_rounded),
            //     ),
            //     Center(
            //       child: Icon(Icons.directions_transit_rounded),
            //     )
            //   ]),
            // ),
          ],
        ),
      ),

      //for adding drawer in appbar => drawer: Drawer(),

      //  DRAWER
      //
      //drawer: Drawer(
      //   child: Column(
      //     children: [
      //       Container(
      //         height: 45,
      //         width: double.infinity,
      //         //decoration: BoxDecoration(),
      //         color: Colors.white,
      //         child: Text(
      //           "       Drawer Menu",
      //           style: TextStyle(
      //               fontSize: 30,
      //               fontWeight: FontWeight.bold,
      //               color: Colors.black),
      //         ),
      //       )
      //     ],
      //   ),
      // ),
    );
  }
}

//  LAUNCHING URL
//
//_launchURL() async {
//   const url = 'https://flutterdevs.com/';
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw "Cound Not Launch $url";
//   }
// }
