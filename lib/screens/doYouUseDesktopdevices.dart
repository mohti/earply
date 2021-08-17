import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pointofsale/coustomWidgets/customButton.dart';
import 'package:pointofsale/screens/billingSelector.dart';
import 'package:pointofsale/screens/enterContactDetails.dart';

class DoYouUseDesktopDevices extends StatefulWidget {
  DoYouUseDesktopDevices({Key key}) : super(key: key);

  @override
  _DoYouUseDesktopDevicesState createState() => _DoYouUseDesktopDevicesState();
}

class _DoYouUseDesktopDevicesState extends State<DoYouUseDesktopDevices> {
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
            padding: const EdgeInsets.fromLTRB(30, 0, 30, 0),
            child: Container(
              height: MediaQuery.of(context).size.height/1.3,
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(25.5, 0, 25.5, 0),
                    child: Text(
                      'Do you use desktop hardware?',
                      style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          flex: 9,
                          child: Text(
                            'I want to use mobile or tablet devices',
                            style: TextStyle(fontSize: 16),
                          )),
                      Expanded(
                        flex: 1,
                        child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                            child: CustomButton(),
                      ))
                    ],
                  ),
                  Expanded(
                            child: Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                height: 46,
                                child: FlatButton(
                                    height: 46,
                                    color: Colors.blue,
                                    onPressed: () => {Get.to((Billingperiod()))},
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
            SizedBox(height: 20,),
               Expanded(
                                child: Row(
                          
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 10,
                              height: 10,
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
                              width: 16,
                              height: 16,
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
