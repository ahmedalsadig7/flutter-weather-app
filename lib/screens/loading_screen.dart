// ignore_for_file: library_private_types_in_public_api

import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/location_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

const weatherApiKey = 'a41c50a7951007f70fd8d22e1c707e01';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  Future<void> getCurrentLocationData() async {
    WeatherModel weatherModel=WeatherModel();
    var weatherData = await weatherModel.getCurrentLocationData();
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return LocationScreen(locationWeather: weatherData);
        },
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    getCurrentLocationData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: SpinKitDoubleBounce(color: Colors.blue, size: 100)),
    );
  }
}
