import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointofsale/screens/signinCompleted.dart';

class CreateSecurePassword extends StatefulWidget {
  CreateSecurePassword({Key key}) : super(key: key);

  @override
  _CreateSecurePasswordState createState() => _CreateSecurePasswordState();
}

class _CreateSecurePasswordState extends State<CreateSecurePassword> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 0.1,
        backgroundColor: Colors.white,
        title: Text(
          'Back',
          style: TextStyle(color: Colors.black, fontSize: 16),
        ),
        elevation: 0,
        leading: IconButton(
          color: Colors.black,
          icon: Icon(
            Icons.arrow_back_ios,
            size: 16,
          ),
          onPressed: () => Navigator.of(context).pop(),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(25, 10, 25, 0),
        child: Center(
          child: Column(children: [
            Text(
              'Create a secure password',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 36,
            ),
            Container(
              height: 44,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 10),
                    border: new OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    suffixIcon: Icon(Icons.email_outlined)),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              height: 44,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 10),
                    border: new OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    suffixIcon: Icon(Icons.visibility_off_outlined)),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
              height: 44,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                decoration: InputDecoration(
                    labelText: 'CONFIRM PASSWORD',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 10),
                    border: new OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    suffixIcon: Icon(Icons.visibility_off_outlined)),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Container(
                width: MediaQuery.of(context).size.width,
                child: FlatButton(
                  height: 46,
                  onPressed: () {
                    Get.to(SignInComplete());
                  },
                  color: Colors.blue,
                  child: Text(
                    'NEXT',
                    style: TextStyle(color: Colors.white),
                  ),
                ))
          ]),
        ),
      ),
    );
  }
}
