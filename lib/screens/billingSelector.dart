import 'package:flutter/material.dart';
import 'package:pointofsale/coustomWidgets/customButtonBlue.dart';
import 'package:get/get.dart';
import 'package:pointofsale/screens/createSecurePassword.dart';

class Billingperiod extends StatefulWidget {
  Billingperiod({Key key}) : super(key: key);

  @override
  _BillingperiodState createState() => _BillingperiodState();
}

class _BillingperiodState extends State<Billingperiod> {
  bool box1Clicked = false;
  bool box2Clicked = false;
  bool box3Clicked = false;
  bool mothlyplan = false;
  bool mothlyplan2 = false;
  bool monthlyplan3 = false;
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
        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Text(
                  'Billing peroid',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (box1Clicked == false) {
                        box1Clicked = true;
                        box2Clicked = false;
                        box3Clicked = false;
                      } else {
                        box1Clicked = false;
                      }
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue[400]),
                        color: box1Clicked ? Colors.blue[400] : Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.blue[300]),
                                  shape: BoxShape.circle),
                              child: Padding(
                                  padding: EdgeInsets.all(4),
                                  child: box1Clicked
                                      ? Container(
                                          width: 10,
                                          height: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              border: Border.all(
                                                  color: Colors.blue),
                                              shape: BoxShape.circle),
                                        )
                                      : Container()),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Text(
                                'ANNUAL',
                                style: TextStyle(
                                    color: box1Clicked
                                        ? Colors.white
                                        : Colors.blue),
                              )),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                              flex: 2,
                              child: Text(
                                '/Save 17%',
                                style: TextStyle(
                                    color: box1Clicked
                                        ? Colors.white
                                        : Colors.black),
                              )),
                          Expanded(
                              flex: 2,
                              child: Text(
                                '\$19 -\$69 MO',
                                style: TextStyle(
                                    color: box1Clicked
                                        ? Colors.white
                                        : Colors.black),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (box2Clicked == false) {
                        box2Clicked = true;
                        box1Clicked = false;
                        box3Clicked = false;
                      } else {
                        box2Clicked = false;
                      }
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue[400]),
                        color: box2Clicked ? Colors.blue[400] : Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.blue[300]),
                                  shape: BoxShape.circle),
                              child: Padding(
                                  padding: EdgeInsets.all(4),
                                  child: box2Clicked
                                      ? Container(
                                          width: 10,
                                          height: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              border: Border.all(
                                                  color: Colors.blue),
                                              shape: BoxShape.circle),
                                        )
                                      : Container()),
                            ),
                          ),
                          Expanded(
                              flex: 4,
                              child: Text(
                                'MONTHLY',
                                style: TextStyle(
                                    color: box2Clicked
                                        ? Colors.white
                                        : Colors.blue),
                              )),
                          Expanded(
                              flex: 2,
                              child: Text(
                                '\$29 -\$79 MO',
                                style: TextStyle(
                                    color: box2Clicked
                                        ? Colors.white
                                        : Colors.black),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      if (box3Clicked == false) {
                        box3Clicked = true;
                        box1Clicked = false;
                        box2Clicked = false;
                      } else {
                        box3Clicked = false;
                      }
                    });
                  },
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.blue[400]),
                        color: box3Clicked ? Colors.blue[400] : Colors.white),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              width: 16,
                              height: 16,
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  border: Border.all(color: Colors.blue[300]),
                                  shape: BoxShape.circle),
                              child: Padding(
                                  padding: EdgeInsets.all(4),
                                  child: box3Clicked
                                      ? Container(
                                          width: 10,
                                          height: 10,
                                          decoration: BoxDecoration(
                                              color: Colors.blue,
                                              border: Border.all(
                                                  color: Colors.blue),
                                              shape: BoxShape.circle),
                                        )
                                      : Container()),
                            ),
                          ),
                          Expanded(
                              flex: 2,
                              child: Text(
                                'FREE DEMO',
                                style: TextStyle(
                                    color: box3Clicked
                                        ? Colors.white
                                        : Colors.blue),
                              )),
                          // SizedBox(
                          //   width: 10,
                          // ),
                          Expanded(
                              flex: 2,
                              child: Text(
                                '30 day',
                                style: TextStyle(
                                    color: box3Clicked
                                        ? Colors.white
                                        : Colors.black),
                              )),
                          Expanded(
                              flex: 2,
                              child: Text(
                                'No Credit Card',
                                style: TextStyle(
                                    color: box3Clicked
                                        ? Colors.white
                                        : Colors.black),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Price plan',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(), color: Colors.blue[50]),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Point of Sale',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'POS for small shops without inventory',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black,
                          height: 1,
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '\$',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                //style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: '19',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 48,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text: '/Month',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            // Row(
                            //     // mainAxisAlignment: MainAxisAlignment.start,
                            //     crossAxisAlignment: CrossAxisAlignment.end,
                            //     children: [
                            //       Text('\$'),
                            //       Text(
                            //         '19',
                            //         style: TextStyle(fontSize: 48),
                            //       ),
                            //       Align(
                            //         alignment: Alignment.bottomRight,
                            //         child: Text('/Month',
                            //             style: TextStyle(fontSize: 20)),
                            //       )
                            //     ]),
                            FlatButton(
                                onPressed: () {
                                  setState(() {
                                    if (mothlyplan == false) {
                                      mothlyplan = true;
                                      mothlyplan2 = false;
                                      monthlyplan3 = false;
                                    } else {
                                      mothlyplan = false;
                                    }
                                  });
                                },
                                color:
                                    mothlyplan ? Colors.grey : Colors.blue[400],
                                child: Row(
                                  children: [
                                    Text(
                                      'Details',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    mothlyplan
                                        ? Icon(Icons.keyboard_arrow_up_sharp,
                                            color: Colors.white)
                                        : Icon(Icons.keyboard_arrow_down_sharp,
                                            color: Colors.white)
                                  ],
                                ))
                          ],
                        ),
                        mothlyplan
                            ? Column(
                                children: [
                                  CardText('Includes 2 User Accounts'),
                                  CardText('1 Point of Sale License'),
                                  CardText('Easy to Use Point of Sale'),
                                  CardText(
                                      'Basic x-/z-reports to run your shop '),
                                  CardText('Basic CRM '),
                                  CardText('POS Mobile App'),
                                  CardText('Cayan Integrated Payments'),
                                  CardText('mPOS '),
                                  CardText(' Email Receipts '),
                                  CardText('Flexible Hardware Support'),
                                  CardText('Bluetooh Peripheral Support '),
                                  CardText('Pop-up Shop Support '),
                                  CardText('Limited e-mail support only  '),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FlatButton(
                                      onPressed: () {
                                        Get.to(CreateSecurePassword());
                                      },
                                      color: Colors.blue,
                                      child: Center(
                                          child: Text(
                                        'SELECT PLAN',
                                        style: TextStyle(color: Colors.white),
                                      )))
                                ],
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(), color: Colors.blue[50]),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Inventory for e-commerce',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Inventory for webshops and warehouses',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black,
                          height: 1,
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '\$',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                //style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: '39',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 48,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text: '/Month',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            // Row(
                            //     // mainAxisAlignment: MainAxisAlignment.start,
                            //     crossAxisAlignment: CrossAxisAlignment.end,
                            //     children: [
                            //       Text('\$'),
                            //       Text(
                            //         '19',
                            //         style: TextStyle(fontSize: 48),
                            //       ),
                            //       Align(
                            //         alignment: Alignment.bottomRight,
                            //         child: Text('/Month',
                            //             style: TextStyle(fontSize: 20)),
                            //       )
                            //     ]),
                            FlatButton(
                                onPressed: () {
                                  setState(() {
                                    if (mothlyplan2 == false) {
                                      mothlyplan2 = true;
                                      mothlyplan = false;
                                      monthlyplan3 = false;
                                    } else {
                                      mothlyplan2 = false;
                                    }
                                  });
                                },
                                color: mothlyplan2
                                    ? Colors.grey
                                    : Colors.blue[400],
                                child: Row(
                                  children: [
                                    Text(
                                      'Details',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    mothlyplan2
                                        ? Icon(Icons.keyboard_arrow_up_sharp,
                                            color: Colors.white)
                                        : Icon(Icons.keyboard_arrow_down_sharp,
                                            color: Colors.white)
                                  ],
                                ))
                          ],
                        ),
                        mothlyplan2
                            ? Column(
                                children: [
                                  CardText('Includes 2 User Accounts'),
                                  CardText('1 Point of Sale License'),
                                  CardText('Easy to Use Point of Sale'),
                                  CardText(
                                      'Basic x-/z-reports to run your shop '),
                                  CardText('Basic CRM '),
                                  CardText('POS Mobile App'),
                                  CardText('Cayan Integrated Payments'),
                                  CardText('mPOS '),
                                  CardText(' Email Receipts '),
                                  CardText('Flexible Hardware Support'),
                                  CardText('Bluetooh Peripheral Support '),
                                  CardText('Pop-up Shop Support '),
                                  CardText('Limited e-mail support only  '),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FlatButton(
                                      onPressed: () {},
                                      color: Colors.blue,
                                      child: Center(
                                          child: Text(
                                        'SELECT PLAN',
                                        style: TextStyle(color: Colors.white),
                                      )))
                                ],
                              )
                            : Container()
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      border: Border.all(), color: Colors.blue[50]),
                  child: Padding(
                    padding: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          'Inventory +Retail POS',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'High volume single or multi-store retailers',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          color: Colors.black,
                          height: 1,
                        ),
                        SizedBox(
                          height: 27,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            RichText(
                              text: TextSpan(
                                text: '\$',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                                //style: DefaultTextStyle.of(context).style,
                                children: const <TextSpan>[
                                  TextSpan(
                                      text: '59',
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 48,
                                          fontWeight: FontWeight.bold)),
                                  TextSpan(
                                    text: '/Month',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            // Row(
                            //     // mainAxisAlignment: MainAxisAlignment.start,
                            //     crossAxisAlignment: CrossAxisAlignment.end,
                            //     children: [
                            //       Text('\$'),
                            //       Text(
                            //         '19',
                            //         style: TextStyle(fontSize: 48),
                            //       ),
                            //       Align(
                            //         alignment: Alignment.bottomRight,
                            //         child: Text('/Month',
                            //             style: TextStyle(fontSize: 20)),
                            //       )
                            //     ]),
                            FlatButton(
                                onPressed: () {
                                  setState(() {
                                    if (monthlyplan3 == false) {
                                      monthlyplan3 = true;
                                      mothlyplan2 = false;
                                      mothlyplan = false;
                                    } else {
                                      monthlyplan3 = false;
                                    }
                                  });
                                },
                                color: monthlyplan3
                                    ? Colors.grey
                                    : Colors.blue[400],
                                child: Row(
                                  children: [
                                    Text(
                                      'Details',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                    monthlyplan3
                                        ? Icon(Icons.keyboard_arrow_up_sharp,
                                            color: Colors.white)
                                        : Icon(Icons.keyboard_arrow_down_sharp,
                                            color: Colors.white)
                                  ],
                                ))
                          ],
                        ),
                        monthlyplan3
                            ? Column(
                                children: [
                                  CardText('Includes 2 User Accounts'),
                                  CardText('1 Point of Sale License'),
                                  CardText('Easy to Use Point of Sale'),
                                  CardText(
                                      'Basic x-/z-reports to run your shop '),
                                  CardText('Basic CRM '),
                                  CardText('POS Mobile App'),
                                  CardText('Cayan Integrated Payments'),
                                  CardText('mPOS '),
                                  CardText(' Email Receipts '),
                                  CardText('Flexible Hardware Support'),
                                  CardText('Bluetooh Peripheral Support '),
                                  CardText('Pop-up Shop Support '),
                                  CardText('Limited e-mail support only  '),
                                  SizedBox(
                                    height: 20,
                                  ),
                                  FlatButton(
                                      onPressed: () {},
                                      color: Colors.blue,
                                      child: Center(
                                          child: Text(
                                        'SELECT PLAN',
                                        style: TextStyle(color: Colors.white),
                                      )))
                                ],
                              )
                            : Container()
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
