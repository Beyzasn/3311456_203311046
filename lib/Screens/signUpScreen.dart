import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/Screens/loginScreen.dart';



class SignUpScreen extends StatelessWidget {
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image:DecorationImage(
            image:AssetImage("images/arkaplan2.png",
            ),
            fit: BoxFit.cover,
            alignment: Alignment.centerLeft,
             ), ),
        
        width: Helper.getScreenWidth(context),
        height: Helper.getScreenHeight(context),
        child:SafeArea(
        child:Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical:30),
            child: Column(
              children: [ 
                const Text("Sign Up",
                 style: TextStyle(
                 fontFamily: "Metrophobic",
                 fontSize: 25,
        
                 fontWeight: FontWeight.bold),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Text("Add your details to sign up",
                style: TextStyle(
                  fontFamily:"Metrophobic",
                  fontSize: 20,
                  color: Color.fromARGB(255, 9, 9, 9) ),
                  ),
                  const Spacer(),
                  
                 const CustomTextInput(hintText: "Name",),
                 const Spacer(),
                 const CustomTextInput(hintText: "Email"),
                 const Spacer(),
                 const CustomTextInput(hintText: "Mobil No"),
                 const Spacer(),
                 const CustomTextInput(hintText: "Adress"),
                 const Spacer(),
                 const CustomTextInput(hintText: "Password"),
                 const Spacer(),
                 const CustomTextInput(hintText: "Confirm Password"),
                 const Spacer(),
                 SizedBox(
                  height: 50,
                  width:double.infinity ,
                  child: ElevatedButton(
                    onPressed: () {  },
                    child: const Text("Sign Up"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(const Color.fromARGB(255, 14, 119, 180)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                        side: const BorderSide( 
                          color:Colors.white,
                          width: 3, )
                        ),
                       ),
                      ),
                     ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: ((context) => LoginScreen())));
                      },
                      child: Row(
                        mainAxisAlignment:MainAxisAlignment.center ,
                        children: const [
                          Text("Already have an Account?",style: TextStyle(color:Color.fromARGB(255, 137, 135, 135),fontFamily: "Metrophobic",fontSize: 20),),
                          Text("  "),
                          Text("Login",style: TextStyle(color: Color.fromARGB(255, 14, 119, 180),fontFamily: "Metrophobic",fontSize: 20,
                          fontWeight: FontWeight.w600),)],
                      ),
                    ),
                    




              ]
              ),
          
        ),
         ),
        ),
    );
  }
}