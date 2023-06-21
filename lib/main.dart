import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/BurcListesi.dart';
import 'package:flutter_application_1/Screens/splashScreen.dart';
import 'package:flutter_application_1/firebase_options.dart';

void main(List<String> args) async { 
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 14, 32, 162)
      ),  
      debugShowCheckedModeBanner: false,
      
      home: splashScreen(),
    );
  }
}