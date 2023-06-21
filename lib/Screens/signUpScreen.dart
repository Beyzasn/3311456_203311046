import 'package:flutter/material.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:flutter_application_1/Screens/loginScreen.dart';
import 'package:flutter_application_1/service/firebase_service.dart';

class SignUpScreen extends StatelessWidget {
  AuthService _authService = AuthService();
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController numaraController = TextEditingController();
  TextEditingController adresController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                "images/arkaplan2.png",
              ),
              fit: BoxFit.cover,
              alignment: Alignment.centerLeft,
            ),
          ),
          width: Helper.getScreenWidth(context),
          height: Helper.getScreenHeight(context),
          child: SafeArea(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              child: Column(children: [
                const Text(
                  "Sign Up",
                  style: TextStyle(
                      fontFamily: "Metrophobic",
                      fontSize: 25,
                      fontWeight: FontWeight.bold),
                ),
                const Spacer(
                  flex: 1,
                ),
                const Text(
                  "Add your details to sign up",
                  style: TextStyle(
                      fontFamily: "Metrophobic",
                      fontSize: 20,
                      color: Color.fromARGB(255, 9, 9, 9)),
                ),
                const Spacer(),
                CustomTextInput(hintText: "Name", controller: nameController),
                const Spacer(),
                CustomTextInput(
                  hintText: "Email",
                  controller: emailController,
                ),
                const Spacer(),
                CustomTextInput(
                  hintText: "Mobil No",
                  controller: numaraController,
                ),
                const Spacer(),
                CustomTextInput(
                  hintText: "Adress",
                  controller: adresController,
                ),
                const Spacer(),
                CustomTextInput(
                  hintText: "Password",
                  controller: passwordController,
                ),
                const Spacer(),
                CustomTextInput(
                  hintText: "Confirm Password",
                  controller: passwordController,
                ),
                const Spacer(),
                SizedBox(
                  height: 50,
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      _authService
                          .createPerson(
                            nameController.text,
                            adresController.text,
                            numaraController.text,
                            emailController.text,
                            passwordController.text,
                          )
                          .then(
                            (value) => Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => LoginScreen()),
                            ),
                          );
                    },
                    child: const Text("Sign Up"),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                          const Color.fromARGB(255, 14, 119, 180)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30),
                            side: const BorderSide(
                              color: Colors.white,
                              width: 3,
                            )),
                      ),
                    ),
                  ),
                ),
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: ((context) => LoginScreen())));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Text(
                        "Already have an Account?",
                        style: TextStyle(
                            color: Color.fromARGB(255, 137, 135, 135),
                            fontFamily: "Metrophobic",
                            fontSize: 20),
                      ),
                      Text("  "),
                      Text(
                        "Login",
                        style: TextStyle(
                            color: Color.fromARGB(255, 14, 119, 180),
                            fontFamily: "Metrophobic",
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      )
                    ],
                  ),
                ),
              ]),
            ),
          ),
        ),
      ),
    );
  }
}
