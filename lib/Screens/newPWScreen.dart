import 'package:flutter/material.dart';
import 'package:flutter_application_1/BurcListesi.dart';
import 'package:flutter_application_1/helper.dart';

import '../customTextField.dart';

class NewPWScreen extends StatelessWidget {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image:AssetImage("images/arkaplan2.png",
            ),
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
             ), ),
        

        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child:SafeArea(
          
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
            ),
            child: Column(
              children: [
                Text("New Password",
                style: TextStyle(
                  fontFamily: "Metrophobic",
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),),
                SizedBox(
                  height: 20,
                ),
                Text("Please enter your email to recieve a link to create a new password via email",
                style: TextStyle(
                  fontFamily: "Metrophobic",
                  fontSize: 17,
                  color: Color.fromARGB(255, 33, 33, 33),
                ),
                textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 30,
                ),
                CustomTextInput(
                  hintText: "New Password"),
                SizedBox(
                  height: 20,
                  ),
                CustomTextInput(
                  hintText:"Confirm Password" ),
                  SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    height: 50,
                    width: double.infinity,
                    child: ElevatedButton(onPressed: (() {
                     Navigator.of(context).push(MaterialPageRoute(builder:((context) => BurcListesi())));

                    }),
                    
                    child: Text("Next"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 14, 119, 180)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: BorderSide(
                          color:Colors.white,
                          width: 3, )
                        ),
                       ),
                      ),
                    ),
                  ),

              ],
            ),
          ),
          ),
      ),
    );
  }
}