import 'package:flutter/material.dart';

class CustomTextInput extends StatefulWidget {
  const CustomTextInput({
    required String hintText,
    Key? key,
  }) : _hintText =hintText,super(key: key);
  final String _hintText;

  @override
  State<CustomTextInput> createState() => _CustomTextInputState();
}

class _CustomTextInputState extends State<CustomTextInput> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 50,
      decoration:const ShapeDecoration(
      color:Color.fromARGB(82, 151, 161, 173),
      
        shape: StadiumBorder(),
         ),
         child: TextField(
          decoration:InputDecoration(
            border: InputBorder.none,

            hintText: widget._hintText,
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