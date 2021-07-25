import 'package:flutter/material.dart';

class Address extends StatelessWidget {
  const Address({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightGreen,
        title: Text('Add Address'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                child: TextFormField(
                  decoration: InputDecoration(hintText: 'Full Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 7),
                child: TextFormField(
                  decoration:
                      InputDecoration(hintText: 'House No./Building Name'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 7),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'Locality',
                      labelStyle: TextStyle(color: Colors.lightGreen)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 15.0, right: 15.0, top: 7),
                child: TextField(
                  decoration: InputDecoration(
                      labelText: 'City',
                      labelStyle: TextStyle(color: Colors.lightGreen)),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.only(left: 15.0, right: 15.0, top: 7),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Pincode',
                      labelStyle: TextStyle(color: Colors.lightGreen),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.only(top: 330.0, left: 16, right: 16),
                child: Container(
                  height: 100,
                  width: double.maxFinite,
                  padding: EdgeInsets.only(top: 40),
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(primary: Colors.grey),
                      onPressed: () {},
                      child: Text('ADD ADDRESS')),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
