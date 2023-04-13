
import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'newPWScreen.dart';
//One Time Password
class SendOTPScreen extends StatelessWidget {
 

  const SendOTPScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
      
            child: Container(
               decoration: const BoxDecoration(
               image:DecorationImage(
               image:AssetImage("images/arkaplan2.png",
              
            ),
                fit: BoxFit.cover,
               alignment: Alignment.bottomLeft,

             ), ),
             
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 40),
                child: Column(
                  
                  children: [const Text("We have sent you an OTP to your Mobile ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "Metrophobic",
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 29, 29, 29)),
                    ),
                     SizedBox(
                      height: Helper.getScreenHeight(context)*0.3,
                    ),
                    const Text("Please check your mobile number continue to reset your password ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                    fontFamily: "Metrophobic",
                    fontSize: 20,
                    color: Color.fromARGB(255, 77, 75, 75)),),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      
                      OTPInput(),
                      OTPInput(),
                      OTPInput(),
                      OTPInput(),
                   
                       
                     ],
                     ),
                     const SizedBox(
                      height: 60,
                     ),
                     SizedBox(
                      height: 50,
                      width: double.infinity,
                      child:ElevatedButton(
                      
                      onPressed: (() {
                       Navigator.of(context).push(MaterialPageRoute(builder:((context) => NewPWScreen())));
                     }), 
                     child: const Text("Next"),
                     style: ButtonStyle(

                      backgroundColor:MaterialStateProperty.all<Color> (Color.fromARGB(255, 14, 119, 180)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side:const BorderSide(
                        width: 3,
                        color: Colors.white), 
                               ),
                              ),
                             ),
                            ),
                     ),
                     const SizedBox(
                      height: 90,
                     ),
                     Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      children: const [
                      Text("Didn't Recieve?  ",
                      style: TextStyle(
                        fontFamily: "Metrophobic",
                        fontSize: 20,
                        color: Color.fromARGB(255, 103, 101, 101)
                      ),
                      ),
                      Text("Click Here",
                      style: TextStyle(
                        fontFamily: "Metrophobic",
                        fontSize: 20,
                        color: Color.fromARGB(255, 2, 114, 179),
                      ),
                      )
                     ],)

                    ],
                ),
              ),
            ),
           ),
          
    );
  }

            
  }

class OTPInput extends StatelessWidget {
  const OTPInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
     width: 60,
     height:60 ,
     decoration: ShapeDecoration(
      color: const Color.fromARGB(255, 107, 175, 215),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        ),
       ) ,
       child: Stack(
        children: const [
          Padding(padding: EdgeInsets.only(top: 10,left: 20),
          child: Text(
            "*",
            style: TextStyle(
              fontSize: 50,
              color: Color.fromARGB(255, 140, 188, 216)),
             ),
            ),
          TextField(
            decoration: InputDecoration(
              border:InputBorder.none),
          )
        ],
      ),
                  );
  }
}
