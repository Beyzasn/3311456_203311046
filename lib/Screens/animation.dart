import 'package:flutter/material.dart';
import 'package:flutter_application_1/BurcListesi.dart';
import 'package:flutter_application_1/Screens/notes.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:lottie/lottie.dart';

class AnimationPage extends StatefulWidget {
  const AnimationPage({Key? key}) : super(key: key);

  @override
  _AnimationPageState createState() => _AnimationPageState();
}

class _AnimationPageState extends State<AnimationPage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Color?> _colorAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(microseconds: 1),
      vsync: this,
    )..repeat(reverse: true);

    _colorAnimation = ColorTween(
      begin: Colors.red,
      end: Colors.blue,
    ).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 20, 122),
      ),
      body: AnimatedBuilder(
        animation: _colorAnimation,
        builder: (context, child) {
          return Container(
            height: Helper.getScreenHeight(context) * 0.8,
            color: _colorAnimation.value,
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => BurcListesi())),
                );
              },
              
              child: Center(
                child: Lottie.network(
                  'https://assets4.lottiefiles.com/packages/lf20_wzbqr5lv.json',
                ),
              ),
            ),
          );
        },
      ),
      bottomNavigationBar: GestureDetector(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: ((context) => Notes())),
          );
        },
        child: Container(
          height: 60,
          color: _colorAnimation.value,
          child: Center(
            child: Text(
              "Notlara gitmek için tıklayın",
              style: TextStyle(
                fontSize: 20,
                color: Color.fromARGB(255, 107, 175, 215),
                fontFamily: "Metrophobic",
                fontWeight: FontWeight.w900,
              ),
            ),
          ),
        ),
      ),
    );
  }
}



/* import 'package:flutter/material.dart';
import 'package:flutter_application_1/BurcListesi.dart';
import 'package:flutter_application_1/Screens/notes.dart';
import 'package:flutter_application_1/helper.dart';
import 'package:lottie/lottie.dart';


class animation extends StatefulWidget {
  const animation({super.key});

  @override
  State<animation> createState() => _animationState();
}

class _animationState extends State<animation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 20, 122),
      
      ),
      body: Column(
        children: [
          Container(
            height: Helper.getScreenHeight(context)*0.8,
            child: ElevatedButton(
              
              onPressed: () {
                Navigator.of(context).push(
                    MaterialPageRoute(builder: ((context) => BurcListesi())));
              },
              child: Center(
                
                child: Lottie.network(
                    'https://assets4.lottiefiles.com/packages/lf20_wzbqr5lv.json'),
              ),
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          GestureDetector(
            onTap: (() {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: ((context) => Notes())));
            }
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Notlara gitmek için tıklayın",
                  style: TextStyle(
                      fontSize: 20,
                      color: Color.fromARGB(255, 107, 175, 215),
                      fontFamily: "Metrophobic",
                      fontWeight: FontWeight.w900),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
 */