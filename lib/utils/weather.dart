import 'dart:convert';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:location/location.dart';
import 'package:http/http.dart';
import 'location.dart';

const apiKey = "48e59ba5d686fbfe117ed755cc4a3db3";

class WeatherDisplayData {
  Icon weatherIcon;
  //AssetImage weatherImage;
  WeatherDisplayData({
    required this.weatherIcon,
    // required this.weatherImage
  });
}

class WeatherData {
  WeatherData({required this.locationData});
  late LocationHelper locationData;
  late double currentTemperature;
  late int currentCondition;
  late String city;

  Future<void> getCurrentTemperature() async {
    Response response = await get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?lat=${locationData.latitude}&lon=${locationData.longitude}&appid=${apiKey}&unit=metric'));
    if (response.statusCode == 200) {
      String data = response.body;
      var currentWeather = jsonDecode(data);

      try {
        currentTemperature = currentWeather['main']['temp'];
        currentCondition = currentWeather['weather'][0]['id'];
        city=currentWeather['name'];
      } catch (e) {
        print(e);
      }
    } else {
      log("api den değer gelmiyor");
    }
  }

  getWeatherDisplayData() {
    if (currentCondition < 600) {
      return WeatherDisplayData(
        weatherIcon:const Icon(
          FontAwesomeIcons.cloud,
          size: 85,
          color: Colors.white,
        ),
        //  weatherImage: AssetImage()
      );
    }
    else{
      //hava iyi-gece gündüz kontrolü
      var now =new DateTime.now();
      if(now.hour >=19){
        return WeatherDisplayData(
        weatherIcon:const Icon(
          FontAwesomeIcons.moon,
          size: 85,
          color: Colors.white,
        ),
      );
      }
      else{
        return WeatherDisplayData(
        weatherIcon:const Icon(
          FontAwesomeIcons.sun,
          size: 85,
          color: Colors.yellow,
        ),
      );
      }
    }
  }
}
