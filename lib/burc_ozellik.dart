import 'package:flutter/material.dart';
import 'package:flutter_application_1/TumOzellikler/erkek.dart';
import 'package:flutter_application_1/TumOzellikler/genelOzellikler.dart';
import 'package:flutter_application_1/TumOzellikler/kadin.dart';
import 'package:flutter_application_1/model/burc.dart';
import 'package:flutter_application_1/strings.dart';

import 'TumOzellikler/askHayati.dart';
import 'TumOzellikler/isHayati.dart';

class BurcOzellik extends StatelessWidget {
  final Burc secilenBurc;
  const BurcOzellik({required this.secilenBurc});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: Container(
          decoration: ShapeDecoration(
              image: DecorationImage(
                image:AssetImage('images/galaksi4.jpg',
                ),
                fit: BoxFit.fill, ), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
            ),
        
        child: CustomScrollView(
          
          slivers: [
            SliverAppBar(
              backgroundColor: Color.fromARGB(255, 13, 20, 122),
              expandedHeight: 300,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(secilenBurc.burcAdi+'  Burcu ve Özellikleri'),
                centerTitle: true,
                background: Image.asset('images/'+secilenBurc.burcBuyukResim,fit: BoxFit.cover,) ),

            ),
            SliverToBoxAdapter(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Card(
                      color: Color.fromARGB(255, 107, 175, 215),
                      elevation: 4,
                      child: ListTile(
                        onTap:()
                         {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>isHayati(secilenBurc: secilenBurc)));
                        },
                        leading: Image(
                          image: AssetImage("images/evrak.png"),
                          ), 
                        title: Text("İŞ HAYATI",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily:"Metrophobic" 
                        ),
                        ),
                        ),
                      
                    ),
                    Card(
                      color: Color.fromARGB(255, 107, 175, 215),
                      elevation: 4,
                      child: ListTile(
                        onTap:()
                         {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>ask(secilenBurc: secilenBurc)));
                        
                        },
                        leading: Image(
                          image: AssetImage("images/kalp.png"),
                          ), 
                        title: Text("AŞK HAYATI",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily:"Metrophobic" 
                        ),
                        ),
                        ),

                    ),
                    Card(
                      color: Color.fromARGB(255, 107, 175, 215),
                      elevation: 4,
                      child: ListTile(
                        onTap:()
                         {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>genelOzellik(secilenBurc: secilenBurc)));
                        
                        },
                        leading: Image(
                          image: AssetImage("images/arti.png"),
                          ), 
                        title: Text("GENEL ÖZELLİKLER",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily:"Metrophobic" 
                        ),
                        ),
                        ),

                    ),
                    Card(
                      color: Color.fromARGB(255, 107, 175, 215),
                      elevation: 4,
                      child: ListTile(
                        onTap:()
                         {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>burcKadin(secilenBurc: secilenBurc)));
                        
                        },
                        leading: Padding(
                          padding: const EdgeInsets.only(left:8.0),
                          child: Image(
                            image: AssetImage("images/kadin.png"),
                            ),
                        ), 
                        title: Text("  KADIN",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily:"Metrophobic" 
                        ),
                        ),
                        ),

                    ),
                    Card(
                      color: Color.fromARGB(255, 107, 175, 215),
                      elevation: 4,
                      child: ListTile(
                        onTap:()
                         {
                         Navigator.of(context).push(MaterialPageRoute(builder: (context)=>burcErkek(secilenBurc: secilenBurc)));

                        },
                        leading: Image(
                          image: AssetImage("images/erkek.png"),
                          ), 
                        title: Text("ERKEK",
                        style: TextStyle(
                          fontSize: 20,
                          fontFamily:"Metrophobic" 
                        ),
                        ),
                        ),

                    ),
                  ],
                ),
                
                
              
                
                ),
            )
          ],
        ),
      )
    );
         
     
  }
  
  askHayati({required Burc secilenBurc}) {}
}

  
