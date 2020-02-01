import 'package:flutter/material.dart';

import 'location_screen.dart';
import 'weather.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {

  double latitude;
  double longitude;

  void getLocationData() async {
    WeatherModel weatherModel = WeatherModel();
    var weatherData = await weatherModel.getLocationWeather();

    Navigator.push(context, MaterialPageRoute(
      builder: (context) {
        return LocationScreen(locationWeather: weatherData);
      }),
    );
  }

  @override 
  void initState(){
    super.initState();
    getLocationData(); //calling the function
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          "data"
      ),
      ),
    );
  }
}