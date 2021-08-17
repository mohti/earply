import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointofsale/coustomWidgets/CustomInputDecorationWidget.dart';
import 'package:pointofsale/coustomWidgets/customAppBar.dart';
import 'package:pointofsale/screens/enterContactDetails.dart';

class EnterCompanyDetails extends StatefulWidget {
  EnterCompanyDetails({Key key}) : super(key: key);

  @override
  _EnterCompanyDetailsState createState() => _EnterCompanyDetailsState();
}

class _EnterCompanyDetailsState extends State<EnterCompanyDetails> {
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(25, 10, 25, 29),
            child: Container(
                   height: MediaQuery.of(context).size.height / 1.3,
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height / 1.28,
                  child: Center(
                    child: Column(
                      children: [
                        Text(
                          'Enter your company details',
                          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 36,
                        ),
                        Container(
                          height: 44,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              decoration: CoustumInputDecorationWidget('Company Name')
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
                                  CoustumInputDecorationWidget('Address Line 1')
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
                                  CoustumInputDecorationWidget('Address Line 2')
                                      .decoration()),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Container(
                          height: 44,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              decoration: CoustumInputDecorationWidget('Post Code')
                                  .decoration()),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Container(
                          height: 44,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                            decoration: CoustumInputDecorationWidget('Reg. Code')
                                .decoration(),
                            validator: (value) {
                              if (value.isEmpty) {
                                return 'REQUIRED';
                              }
                              return null;
                            },
                          ),
                        ),
                        SizedBox(
                          height: 26,
                        ),
                        Container(
                          height: 44,
                          width: MediaQuery.of(context).size.width,
                          child: TextFormField(
                              decoration: CoustumInputDecorationWidget('VAT number')
                                  .decoration()),
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
                                  onPressed: () => {Get.to((EnterContactDetails()))},
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
          ),

        
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
    );
  }
}
