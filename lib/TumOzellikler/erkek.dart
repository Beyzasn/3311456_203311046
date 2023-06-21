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
        color: Color.fromARGB(155, 107, 175, 215),
        
        child: CustomScrollView(
          slivers: [   
            SliverAppBar(
              title: Text(secilenBurc.burcAdi+" Burcu Erkeği "),
              expandedHeight: 10,
              pinned: true,
              backgroundColor: Color.fromARGB(255, 13, 20, 122),
            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                 child:
                 Padding(
                   padding: const EdgeInsets.all(10.0),
                   child: Text(secilenBurc.erkek,
                   style: TextStyle(
                   fontSize: 18,
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