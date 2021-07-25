import 'package:demoapp/pages/routes.dart';
import 'package:flutter/material.dart';
import 'package:demoapp/pages/globals.dart';

class Account extends StatelessWidget {
  const Account({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Account'),
      ),
      body: Center(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 35.0),
              child: Icon(
                Icons.account_circle,
                color: Colors.lightGreen,
                size: 130,
              ),
            ),
            Text(
              '$val',
              style: TextStyle(fontSize: 22),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 16.0),
              child: TextFormField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.person),
                    suffixIcon: Icon(Icons.edit),
                    contentPadding: EdgeInsets.all(18),
                    hintText: 'Your Name'),
              ),
            ),
            TextFormField(
              decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.all(18),
                  hintText: 'Email',
                  prefixIcon: Icon(Icons.mail),
                  suffixIcon: Icon(Icons.edit)),
            ),
            Padding(
              padding: const EdgeInsets.all(25.0),
              child: OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      side: BorderSide(color: Colors.lightGreen),
                      primary: Colors.lightGreen),
                  onPressed: () {
                    Navigator.pushNamed(context, Myroutes.addressroute);
                  },
                  child: Text('       ADD ADDRESS      ')),
            )
          ],
        ),
      ),
    );
  }
}
