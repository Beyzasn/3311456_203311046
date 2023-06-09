import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/burc.dart';

class isHayati extends StatelessWidget {
  final Burc secilenBurc;
  const isHayati({
    
    required this.secilenBurc,
    super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 13, 20, 122),
        title: Text(
          
          secilenBurc.burcAdi+" Burcu İş Hayatı"),
        
       ),
      body: Container(
        color: Color.fromARGB(155, 107, 175, 215),

        child: Column(
          
          children: [
            SizedBox(
              height: 10,
            ),
              Text(secilenBurc.isHayati,
              style: TextStyle(
                fontFamily: "Metrophobic",
                fontSize: 18,
              ),
              ),
              
              
          ],
        ),
      ),
        
      
    );
  }
}