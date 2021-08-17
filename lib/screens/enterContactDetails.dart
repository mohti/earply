import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointofsale/coustomWidgets/CustomInputDecorationWidget.dart';
import 'package:pointofsale/coustomWidgets/customAppBar.dart';
import 'package:pointofsale/screens/howBigyourCompany.dart';

class EnterContactDetails extends StatefulWidget {
  EnterContactDetails({Key key}) : super(key: key);

  @override
  _EnterContactDetailsState createState() => _EnterContactDetailsState();
}

class _EnterContactDetailsState extends State<EnterContactDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       resizeToAvoidBottomPadding: false,
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
        padding: const EdgeInsets.fromLTRB(25, 10, 25, 29),
        child: Column(
          children: [
            Container(
               height: MediaQuery.of(context).size.height / 1.31,
                 child: SingleChildScrollView(
                   
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.3,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Enter your contact details',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Container(
                          height: 44,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              decoration: CoustumInputDecorationWidget('First Name')
                                  .decoration()),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Container(
                          height: 44,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              decoration: CoustumInputDecorationWidget('Last Name')
                                  .decoration()),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Container(
                          height: 44,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              decoration:
                                  CoustumInputDecorationWidget('Email').decoration()),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Container(
                          height: 44,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              decoration:
                                  CoustumInputDecorationWidget('Phone').decoration()),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Container(
                          height: 44,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                            decoration:
                                CoustumInputDecorationWidget('Role').decoration(),
                          ),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Expanded(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              height: 46,
                              child: FlatButton(
                                  height: 46,
                                  color: Colors.blue,
                                  onPressed: () => {Get.to((HowBigYourCompanyIs()))},
                                  child: Center(
                                    child: Text(
                                      'NEXT',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  )),
                            ),
                          ),
                        ),
                     
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20,),
               Expanded(
                                child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey[400]),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey[400]),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey[400]),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.grey[400]),
                            )
                          ],
                        ),
               )
          ],
        ),

      ),
    );
  }
}
