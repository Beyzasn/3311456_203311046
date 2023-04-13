import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';


import '../customTextField.dart';
import 'sentOTPScreen.dart';

class ForgetScreen extends StatelessWidget {
  

  const ForgetScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: const BoxDecoration(
          image:DecorationImage(
            image:AssetImage("images/arkaplan2.png",
            ),
            fit: BoxFit.cover,
            alignment: Alignment.bottomRight,
             ), ),
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context), 
        child: SafeArea(
          child:Container(
            padding: const EdgeInsets.symmetric(
              horizontal:40,
              vertical: 30,
         ),
         child: Column(
          children: [
            const Text("Reset Pasword",style: TextStyle(
              fontFamily:"Metrophobic",
              fontSize: 25,
              fontWeight: FontWeight.bold),
           ),
           Spacer(

           ),
           const Text("Please enter your email to recieve a link to create a new password via email",
           style: TextStyle(
            fontFamily: "Metrophobic",
            fontSize: 18,
            color: Color.fromARGB(255, 2, 2, 2),
           ),
           textAlign: TextAlign.center,),
           
           SizedBox(
            height: 20,
           ),
           const CustomTextInput(hintText: "Email",
           ),
           const Spacer(),
           SizedBox(
            width: double.infinity,
            height: 50,
            child: ElevatedButton(
            onPressed:(() {
              Navigator.of(context).push(MaterialPageRoute(builder:((context) => SendOTPScreen())));
              } 
             ),
             child: const Text("Send"),
             style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 15, 50, 209)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
                side: const BorderSide(
                  width:3,
                  color: Colors.white, )
                ),
                
                ),
             ),
            )
           )
          ],
         ),
        ), 
       ),
      ),
    );
  }
}