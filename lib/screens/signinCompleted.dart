import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointofsale/coustomWidgets/CustomInputDecorationWidget.dart';
import 'package:pointofsale/coustomWidgets/customButton.dart';
import 'package:pointofsale/screens/enterCompanyDetails.dart';

class SignInComplete extends StatefulWidget {
  SignInComplete({Key key}) : super(key: key);

  @override
  _SignInCompleteState createState() => _SignInCompleteState();
}

class _SignInCompleteState extends State<SignInComplete> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Padding(
        padding: const EdgeInsets.fromLTRB(29, 44, 31, 29),
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Center(
              child: Column(
               // mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
             Image.asset('assets/images/mobile.png'),
              Text(
                'Point of Sale',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Text('Thank you for signing up!',style: TextStyle(fontSize: 24),),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 44,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(2.0),
                    border: new OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    labelText: 'LOGIN METHOD',
                    alignLabelWithHint: false,
                    labelStyle: TextStyle(color: Colors.black, fontSize: 10),
                    prefixIcon: Icon(
                      Icons.person_outline_sharp,
                      color: Colors.black,
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.unfold_more_sharp),
                    ),
                  ),
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Enter value';
                    }
                    return null;
                  },
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 44,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: InputDecoration(
                     contentPadding: EdgeInsets.all(10.0),
                      hintText: 'Client code',
                      border: new OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      suffixText: '123'),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 44,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(10.0),
                      hintText: 'Email',
                      border: new OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      suffixIcon: Icon(Icons.email_outlined)),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Container(
                height: 44,
                width: MediaQuery.of(context).size.width,
                child: TextFormField(
                  decoration: InputDecoration(

                      border: new OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black)),
                      suffixIcon: Icon(Icons.visibility_off_outlined)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              FlatButton(
                  height: 46,
                  color: Colors.blue,
                  onPressed: () => {
                    Get.to(EnterCompanyDetails())
                  },
                  child: Center(
                    child: Text(
                      'SIGN IN',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
              SizedBox(
                height: 20,
              ),
              // OutlineButton(
              //   borderSide: BorderSide(color: Colors.blue),
              //  // height: 46,
              //   color: Colors.white,
              //   onPressed: () => {},
              //   child: Center(
              //       child: Text(
              //     'CREATE  FREE ACCOUNT',
              //     style: TextStyle(
              //       color: Colors.black,
              //     ),
              //   )),
              // ),
              // SizedBox(
              //   height: 20,
              // ),
             Padding(
               padding: const EdgeInsets.fromLTRB(10,0,10,0),
               child: SizedBox(
                  height: 46,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(child: Text('Remember me',style: TextStyle(fontSize:16 ),)),
                      Container(height: 10,width: 20,
                      //child: Container(height: 10,width: 18,color:blue,),
                      ) ,
                     CustomButton()
                    ],
                  ),
                ),
             ),
           //  SizedBox(height: 50,),
              Expanded(
                              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Text('v.1.000.212xyz')),
              )
            ],
          )),
          
        ),
      ),
    );
  }
}
