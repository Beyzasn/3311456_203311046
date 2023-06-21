import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screens/mainScreen.dart';
import 'package:flutter_application_1/utils/location.dart';
import 'package:flutter_application_1/utils/weather.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
class LoadingScreen extends StatefulWidget {
  const LoadingScreen({super.key});

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  late LocationHelper locationData;
  Future <void> getLocationData() async{
    locationData =LocationHelper();
    await locationData.getCurren1tLocation();

   if(locationData.latitude==null || locationData.longitude==null){
    print("Konum Bilgileri Gelmiyor");
   }
   else{
    log("latitude:"+locationData.latitude.toString());
    log("longitude:"+locationData.longitude.toString());

   }
  }
  void getWeatherData() async {
    await getLocationData();
    WeatherData weatherData =WeatherData(locationData: locationData);
    await weatherData.getCurrentTemperature();

    if(weatherData.currentTemperature == null || weatherData.currentCondition == null ){
      log("api den sıcaklık ve durum bilgsi boş dönüyor  ");
    }
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context){
      return MainScreen(weatherData: weatherData,);
    }));

  }
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWeatherData();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: ShapeDecoration(
          
          image: DecorationImage(
          image:AssetImage('images/galaksi4.jpg'),
          fit: BoxFit.cover, ), 
          shape: RoundedRectangleBorder(
            
            borderRadius: BorderRadius.circular(10),
          ),),
        child:Center(
          child: SpinKitFadingCircle(
            color:Colors.grey,
            size: 100,
            duration:Duration(milliseconds: 1200) ,
             ),
        ),
      ),
    
    );
  }
}