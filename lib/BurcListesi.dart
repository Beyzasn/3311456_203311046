import 'package:flutter/material.dart';
import 'package:flutter_application_1/burc_item.dart';
import 'package:flutter_application_1/model/burc.dart';
import 'package:flutter_application_1/strings.dart';
class BurcListesi extends StatelessWidget {
   late List<Burc>tumBurclar;
   BurcListesi(){
    tumBurclar=veriKaynaginiHazirla();
    print(tumBurclar);
   }
  
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Burç Listesi',style: TextStyle(fontSize: 25),),
        backgroundColor: Color.fromARGB(255, 30, 13, 138),
      ),
      body: Center(
        child:Container(
          decoration: BoxDecoration(
           image: DecorationImage(
            image: AssetImage('images/galaksi4.jpg',
            ),
            fit: BoxFit.cover,
            ),
            
            
          ),
        
        child:ListView.builder(itemBuilder:(context,index ){
          return BurcItem(
            listelenenBurc: tumBurclar[index]);
        },itemCount: tumBurclar.length,),
         ),
    ),
    );
  }
 
  List<Burc> veriKaynaginiHazirla() {
    List<Burc>gecici=[];
    for(int i=0;i<12;i++){
      var burcAdi =Strings.BURC_ADLARI[i];
      var burcTarih =Strings.BURC_TARIHLERI[i];
      var burcDetay =Strings.BURC_GENEL_OZELLIKLERI[i];
      var isHayati=Strings.BURC_IS_HAYATI[i]; 
      var askHayati=Strings.BURC_ASK_HAYATI[i];
      var kadin=Strings.BURC_KADIN[i];
      var erkek=Strings.BURC_ERKEK[i];
      var burcKucukResim =
          Strings.BURC_ADLARI[i].toLowerCase()+'${i+1}.png';
      var burcBuyukResim = 
          Strings.BURC_ADLARI[i].toLowerCase() + '_B'+'${i+1}.jpg';
      


      Burc eklenecekBurc=Burc(burcAdi,burcTarih,burcDetay,burcKucukResim,burcBuyukResim,isHayati,askHayati,kadin,erkek);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
  
  
