import 'package:flutter/material.dart';
import 'package:country_picker/country_picker.dart';
import 'package:get/get.dart';
import 'package:pointofsale/screens/enterCompanyDetails.dart';

class CountryPick extends StatefulWidget {
  CountryPick({Key key}) : super(key: key);

  @override
  _CountryPickState createState() => _CountryPickState();
}

class _CountryPickState extends State<CountryPick> {
  TextEditingController countryselector= TextEditingController();
  String countrySelector = '';

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
        padding: const EdgeInsets.fromLTRB(30, 10, 30, 10),
        child: Column(
          children: [
            Container(
              height: 44,
              width: MediaQuery.of(context).size.width,
              child: TextFormField(
                controller: countryselector,
                decoration: InputDecoration(
                    contentPadding: EdgeInsets.all(10.0),
                    hintText: 'Search',
                    border: new OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black)),
                    suffixIcon: InkWell(
                        onTap: () {
                          showCountryPicker(
                            context: context,
                            //Optional.  Can be used to exclude(remove) one ore more country from the countries list (optional).
                            exclude: <String>['KN', 'MF'],
                            //Optional. Shows phone code before the country name.
                            showPhoneCode: false,
                            onSelect: (Country country) {
                              //  countryselector.text = '';
                              setState(() {
                               
                              //  countrySelector = country.displayName.toString();
                               countryselector.text =   country.displayNameNoCountryCode==null?'':  country.displayNameNoCountryCode;
                              });
                              print('Select country: ${country.toJson()}');
                            },
                            // Optional. Sets the theme for the country list picker.
                            // countryListTheme: CountryListThemeData(
                            //   // Optional. Sets the border radius for the bottomsheet.
                            //   borderRadius: BorderRadius.only(
                            //     topLeft: Radius.circular(40.0),
                            //     topRight: Radius.circular(40.0),
                            //   ),
                            //   // Optional. Styles the search field.
                            //   inputDecoration: InputDecoration(
                            //     labelText: 'Search',
                            //     hintText: 'Start typing to search',
                            //     prefixIcon: const Icon(Icons.search),
                            //     border: OutlineInputBorder(
                            //       borderSide: BorderSide(
                            //         color: const Color(0xFF8C98A8).withOpacity(0.2),
                            //       ),
                            //     ),
                            //   ),
                            // ),
                          );
                        },
                        child: Icon(Icons.unfold_more_sharp))),
                        
              ),
            ),  SizedBox(
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
                      'GET STARTED',
                      style: TextStyle(color: Colors.white),
                    ),
                  )),
          ],
        ),
        
      ),
    );
  }
}
