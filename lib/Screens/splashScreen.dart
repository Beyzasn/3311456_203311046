//import 'dart:ffi';
import 'package:flutter_application_1/BurcListesi.dart';
import 'package:flutter_application_1/Screens/loginScreen.dart';
import 'package:flutter_application_1/Screens/mainScreen.dart';
import 'package:flutter_application_1/Screens/signUpScreen.dart';
import 'package:flutter_application_1/Screens/loadingScreen.dart';
import 'package:lottie/lottie.dart';
import '../../utils/helper.dart';
import 'package:flutter/material.dart';

import '../helper.dart';

class splashScreen extends StatefulWidget {
  const splashScreen({super.key});

  @override
  State<splashScreen> createState() => _splashScreenState();
}

class _splashScreenState extends State<splashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: Stack(children: [
            Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeight(context) * 0.5,
                decoration: ShapeDecoration(
                  image: const DecorationImage(
                    image: AssetImage('images/galaksi4.jpg'),
                    fit: BoxFit.cover,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: const EdgeInsets.all(80),
                child: Lottie.network(
                    'https://assets4.lottiefiles.com/packages/lf20_simtetw3.json'),
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  width: double.infinity,
                  height: Helper.getScreenHeight(context) * 0.320,
                  padding: const EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 10),
                      ),
                      Flexible(
                        child: Text(
                          'BURÇLAR',
                          style: TextStyle(
                              fontSize: 40,
                              color: Color.fromARGB(255, 25, 28, 189),
                              fontFamily: "Metrophobic"),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      GestureDetector(
                        onTap: (() {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: ((context) => LoadingScreen())));
                        }),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "HAVA DURUMU için tıklayın",
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 107, 175, 215),
                                  fontFamily: "Metrophobic",
                                  fontWeight: FontWeight.w900),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: ((context) => LoginScreen()),
                                ));
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(30),
                                side: BorderSide(
                                    color: Color.fromARGB(255, 108, 115, 204),
                                    width: 1.5)),
                            backgroundColor: Color.fromARGB(255, 15, 50, 209),
                          ),
                          child: Text('Login'),
                        ),
                      )
                    ],
                  )),
            ),
          ])),
    );
  }
}
