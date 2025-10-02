import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';

class CityScreen extends StatefulWidget {
  const CityScreen({super.key});

  @override
  _CityScreenState createState() => _CityScreenState();
}

class _CityScreenState extends State<CityScreen> {
  String? typedCityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/city_background.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 50.0,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  onChanged: (value) {
                    typedCityName = value;
                  },
                  style: TextStyle(color: Colors.black),
                  decoration: kTextFieldInputDecoration,
                ),
              ),
              TextButton(
                onPressed: () async {
                  Navigator.pop(context, typedCityName);
                },
                child: Text('Get Weather', style: kButtonTextStyle),
              ),

              // Padding(
              //   padding: EdgeInsets.only(left: 15.0),
              //   child: Row(
              //     children: <Widget>[
              //       Text('$temprature°', style: kTempTextStyle),
              //       Text('$weatherIcon', style: kConditionTextStyle),
              //     ],
              //   ),
              // ),
              // Padding(
              //   padding: EdgeInsets.only(right: 15.0),
              //   child: Text(
              //     "$weatherMessage in $city",
              //     textAlign: TextAlign.right,
              //     style: kMessageTextStyle,
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
