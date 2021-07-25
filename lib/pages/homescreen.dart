import 'package:demoapp/pages/routes.dart';
import 'package:flutter/material.dart';
import 'globals.dart';

//import 'globals.dart';

class Homescreen extends StatelessWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //int val = 98737483938;
    return Scaffold(
      appBar: AppBar(
        title: Text('Homescreen'),
        backgroundColor: Colors.lightGreen,
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 70.0),
                child: Image.asset('assets/images/login.png'),
              ),
              Text(
                'Hey there!',
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.black),
              )
            ],
          ),
        ),
      ),
      drawer: Drawer(
        child: ListView(children: [
          // ListTile(
          //   title: Text('item1'),
          // ),
          Container(
            width: 30,
            height: 150,
            child: ListTile(
              contentPadding: EdgeInsets.only(top: 45, left: 15),
              leading: Icon(
                Icons.account_circle,
                color: Colors.white,
              ),
              title: Text(
                '$val',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
              trailing: IconButton(
                onPressed: () {
                  Navigator.pushNamed(context, Myroutes.accountroute);
                },
                icon: Icon(Icons.chevron_right),
                color: Colors.white,
                iconSize: 30,
              ),
              tileColor: Colors.lightGreen,
              //shape: ,
            ),
          ),
          // Container(
          //   color: Colors.lightGreen,
          //   height: 150,
          //   child: Center(
          //     child: Column(children: [
          //       Text(
          //         '97856456664',
          //         style: TextStyle(color: Colors.white, fontSize: 20),
          //       ),
          //       //Icon(Icons.ac_unit)
          //     ]),
          //   ),
          // ),
          ListTile(
            leading: Icon(Icons.list),
            title: Text(
              'Order History',
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),
          ListTile(
            leading: Icon(Icons.phone),
            title: Text(
              'Help & Support',
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),
          ListTile(
            leading: Icon(Icons.sync),
            title: Text(
              'Updates',
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),
          ListTile(
            onTap: () => _alertDialog(context),
            leading: Icon(Icons.power_settings_new),
            title: Text(
              'Logout',
              style: TextStyle(fontSize: 20, fontStyle: FontStyle.italic),
            ),
          ),

          // Container(
          //   width: double.infinity,
          //   height: 50,
          //   color: Colors.blue,
          // ),
        ]),
      ),
    );
  }
}

_alertDialog(BuildContext context) => showDialog(
    context: context,
    builder: (context) => AlertDialog(
          title: Text('Are you sure you want to logout?',
              style: TextStyle(color: Colors.black, fontSize: 18)),
          actions: [
            // SizedBox(
            //   width: 50,
            //   height: 90,
            // ),
            // Container(
            //   width: 50,
            //   height: 100,
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                  // Navigator.pushNamed(context, Myroutes.homescreenroute);
                },
                child: Text('No',
                    style: TextStyle(color: Colors.black, fontSize: 20)),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30.0),
              child: TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, Myroutes.loginroute);
                  },
                  child: Text(
                    'Yes,Logout',
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  )),
            )
          ],
        ));
  //await Future.delayed(Duration(seconds: 1));
  //showDialog(context: context, builder: (BuildContext context) => alert);
//}
