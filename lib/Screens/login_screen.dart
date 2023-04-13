import 'dart:ffi';
import 'package:flutter_application_1/BurcListesi.dart';
import 'package:flutter_application_1/Screens/loginScreen.dart';
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
        child: Stack(
          children: [
             Align(alignment:Alignment.topCenter ,
            // child:ClipShadow( clipper: CustomClipperAppBar(),  boxShadow: [ BoxShadow( color:Colors.orange, offset: Offset(0,15), blurRadius:10, ),],
             //child :ClipPath(
              //clipper: CustomClipperAppBar(),
          child: Container(
            width:double.infinity,
            height: Helper.getScreenHeight(context)*0.5,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image:AssetImage('images/galaksi4.jpg'),
                fit: BoxFit.cover, ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
            ),
            ),
            //),
             
            ),
            Align(
              alignment: Alignment.center,
              
              child:
               
               Padding(
                 padding: const EdgeInsets.all(80),
                 child: Image.asset('images/arkaplan4.png',
              ),
               ),
              ),
            Align(

              alignment: Alignment.bottomCenter,
              child: Container(
                width: double.infinity,
                height: Helper.getScreenHeight(context)*0.3, 
                
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Column(
                  children:[
                    Padding(padding: EdgeInsets.only(bottom: 10), ),
                  Flexible(child:
                  Text('BURÇLAR',
                  style: TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 25, 28, 189),
                    fontFamily: "Metrophobic"),
                  textAlign: TextAlign.center,
                  ),
                  ),

                  Spacer(
                   

                  ),
                  
                  SizedBox(
                    
                    width :double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      
                      
                      onPressed:(
                      ){
                        Navigator.push(context, MaterialPageRoute(builder: ((context) => LoginScreen()),));
                       

                      } ,
                      style: ElevatedButton.styleFrom(
                        
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side: BorderSide(color: Color.fromARGB(255, 108, 115, 204),width: 1.5)
                        ),
                       backgroundColor: Color.fromARGB(255, 15, 50, 209),
                      ),
                      
                      child: Text('Login' ),

                    ),

                  )

                  ], 
                )
              ),
            ),
         
          ]
        )
      ),
    );
  }
}

/*class CustomClipperAppBar extends CustomClipper<Path> {
  @override
  Path getClip(size){
    Offset controlPoint =Offset(size.width*0.24, size.height);
    Offset endPoint =Offset(size.width*0.25, size.height*0.96);
    Offset controlPoint2 =Offset(size.width*0.3, size.height*0.78);
    Offset endPoint2 =Offset(size.width*0.5, size.height*0.78);
    Offset controlPoint3 =Offset(size.width*0.7, size.height*0.78);
    Offset endPoint3 =Offset(size.width*0.75, size.height*0.96);
    Offset controlPoint4 =Offset(size.width*0.76, size.height);
    Offset endPoint4 =Offset(size.width*0.79, size.height);

    Path path = Path()
    ..lineTo(0, size.height)
    ..lineTo(size.width*0.21, size.height)
    ..quadraticBezierTo(controlPoint.dx, controlPoint.dy, endPoint.dx , endPoint.dy)
    ..quadraticBezierTo(controlPoint2.dx, controlPoint2.dy, endPoint2.dx , endPoint2.dy)
    ..quadraticBezierTo(controlPoint3.dx, controlPoint3.dy, endPoint3.dx , endPoint3.dy)
    ..quadraticBezierTo(controlPoint4.dx, controlPoint4.dy, endPoint4.dx , endPoint4.dy)
    ..lineTo(size.width, size.height)
    ..lineTo(size.width, 0);



    return path ;
  }
  bool shouldReclip( covariant  CustomClipper <Path> oldClipper){
    return true;
  }
}*/

                
                    
                      
        