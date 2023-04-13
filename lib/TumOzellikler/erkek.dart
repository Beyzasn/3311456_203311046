import 'package:flutter/material.dart';
import 'package:flutter_application_1/model/burc.dart';

class burcErkek extends StatelessWidget {
  final Burc secilenBurc;
  const burcErkek({
    
    required this.secilenBurc,
    super.key});
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Color.fromARGB(255, 107, 175, 215),
        
        child: CustomScrollView(
          slivers: [   
            SliverAppBar(
              title: Text(secilenBurc.burcAdi+" Burcu Erkeği "),
              expandedHeight: 10,
              pinned: true,
              backgroundColor: Color.fromARGB(255, 6, 50, 225),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                 child:
                 Padding(
                   padding: const EdgeInsets.all(20.0),
                   child: Text(secilenBurc.erkek,
                   style: TextStyle(
                   fontFamily: "Metrophobic",
                   fontSize: 20,
                   fontWeight: FontWeight.w200,
                   ),
                
                   ),
                 ),
                ),
               ),
              ],
          
          
          
        ),
      ),
        
      
    );
  }
}