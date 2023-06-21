import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/utils/weather.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MainScreen extends StatefulWidget {
  final WeatherData weatherData;

  const MainScreen({super.key, required this.weatherData});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late int temperature;
  late Icon weatherDisplayIcon;
  late String city;
  void updateDisplayInfo(WeatherData weatherData) {
    setState(() {
      temperature = weatherData.currentTemperature.round();
      city = weatherData.city;
      WeatherDisplayData weatherDisplayData =
          weatherData.getWeatherDisplayData();
      weatherDisplayIcon = weatherDisplayData.weatherIcon;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    updateDisplayInfo(widget.weatherData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 20, 122),
        title: Text(
          "HAVA DURUMU",
          style: TextStyle(
              fontSize: 20,
              color: Colors.white,
              fontFamily: "Metrophobic",
              fontWeight: FontWeight.w900),
        ),
      ),
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/galaksi4.jpg',
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 100,
            ),
            Container(child: weatherDisplayIcon),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Text(
                '${(temperature - 273.15).round()}°',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 75,
                  letterSpacing: -5,
                ),
              ),
            ),
            SizedBox(
              height: 45,
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '$city',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'Metrophobic',
                    fontSize: 50,
                    letterSpacing: -5,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
