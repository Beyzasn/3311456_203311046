import 'package:flutter/material.dart';
import 'package:flutter_application_1/BurcListesi.dart';
import 'package:flutter_application_1/helper.dart';
import 'ForgetScreen.dart';
import 'signUpScreen.dart';

class LoginScreen extends StatelessWidget {
  static const routeName ="/loginScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration:BoxDecoration(
          image:DecorationImage(
            image: AssetImage("images/galaksi4.jpg"
          ),
          fit: BoxFit.cover,
          alignment: Alignment.topLeft,
          ),
          ) ,
        height: Helper.getScreenHeight(context),
        width: Helper.getScreenWidth(context),
        

        child: SafeArea(
          child:Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 40,
              vertical: 20,
              ),
            child: Column(
              children: [
                Text("Login",
                style: TextStyle(
                  fontFamily: "Metrophobic",
                  fontSize: 30,
                   color: Color.fromARGB(255, 107, 175, 215),
                  ),
                ),
                SizedBox(
                  height:10),
                Text("Add your details to login",
                style: TextStyle(
                  fontFamily: "Metrophobic",
                  fontSize: 20,
                  
                  color: Color.fromARGB(255, 107, 175, 215)),
                  ),
                  SizedBox(
                    height: 20),
                  CustomTextInput(
                    hintText: "email"
                    ),  
                    SizedBox(
                      height: 30,
                    ),
                   CustomTextInput(
                    hintText: "password"
                    ),
                    SizedBox(
                      height: 30,
                    ),
                   
                    SizedBox(
                      height: 50,
                      width: double.infinity,
                      
                      child: ElevatedButton(
                        onPressed: (() {
                         Navigator.of(context).push(MaterialPageRoute(builder:((context) => BurcListesi())));

                        }),
                         style: ButtonStyle(
                          backgroundColor:MaterialStateProperty.all<Color> (Color.fromARGB(255, 15, 50, 209)),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side:BorderSide(
                              width: 3,
                              color: Colors.white), 
                           ),
                          ),
                         ),
                         child: Text("Login",
                         style: TextStyle(fontSize: 17),
                         ),
                         ),
                    ),
                    SizedBox(
                      height: 30,
                   ),
                   GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: ((context) => ForgetScreen())));
                    },
                    child: Text("Forget your password?",
                    style:TextStyle(
                      color: Color.fromARGB(255, 107, 175, 215),
                      fontSize: 20,
                      fontFamily: "Metrophobic")),
                   ),
                   SizedBox(
                    height: 20,
                    width: double.infinity,
                   ),
                   SizedBox(
                    height: 50,
                    width: double.infinity,
                     child: ElevatedButton(
                      onPressed: (() {
                     }), 
                     child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Image.asset("images/f.png"),
                        ),
                        SizedBox(
                          width: 60,

                        ),
                        Text("sign in with Facebook")
                      ],
                     ),
                     style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 16, 94, 157)),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side:BorderSide(
                            width: 3,
                            color: Colors.white), 
                        ),
                       ),
                      ),
                     ),
                   ),
                   SizedBox(
                    height: 30,
                   ),
                   SizedBox(
                    height: 50,
                    width: double.infinity,
                     child: ElevatedButton(
                      onPressed: (() {
                     }), 
                     child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Image.asset("images/google.png"),
                        ),
                        SizedBox(
                          width: 60,

                        ),
                        Text("sign in with Google")
                      ],
                     ),
                     style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(Color.fromARGB(255, 201, 51, 41)),
                       shape: MaterialStateProperty.all<RoundedRectangleBorder>(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                          side:BorderSide(
                            width: 3,
                            color: Colors.white), 
                        ),
                       ),
                      ),
                     ),
                   ),
                   SizedBox(
                    height: 60,
                   ),
                   GestureDetector(
                    onTap: (() {
                     Navigator.of(context).push(MaterialPageRoute(builder:((context) => SignUpScreen())));
                    }),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an Account?",style: 
                        TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 107, 175, 215),
                          fontFamily: "Metrophobic",
                          fontWeight: FontWeight.w900),),
                        Text("   "),
                        Text("sign up",
                        style: TextStyle(
                          color: Color.fromARGB(255, 0, 43, 237),
                          fontSize: 20,
                          fontFamily: "Metrophobic",
                          fontWeight: FontWeight.w900),),
                      ],
                    ),
                   )



         ],
        ),
          ),
       ),
      ),
    );
  }
}

class CustomTextInput extends StatelessWidget {
  const CustomTextInput({
    required String hintText,
    Key? key,
  }) : _hintText =hintText,super(key: key);
  final String _hintText;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration:ShapeDecoration(
        color:Color.fromARGB(255, 239, 237, 237),
        shape: StadiumBorder(),
         ),
         child: TextField(
          decoration:InputDecoration(
            border: InputBorder.none,

            hintText: _hintText,
            hintStyle: TextStyle(
              fontFamily: "Metrophobic",
              color: Colors.grey,
            ), 
            contentPadding: const EdgeInsets.only(left: 30),
          ),
         ),
         
    );
  }
}