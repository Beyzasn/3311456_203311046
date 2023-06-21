import 'package:flutter/material.dart';
import 'package:flutter_application_1/burc_ozellik.dart';
import 'package:flutter_application_1/model/burc.dart';
class BurcItem extends StatelessWidget {
  final Burc listelenenBurc;
  const BurcItem({required this.listelenenBurc ,Key?key}) : super(key : key);

  @override
  Widget build(BuildContext context) {
    var myTextStyle=Theme.of(context).textTheme;
    return Card(
      color: Color.fromARGB(155, 107, 175, 215),
      elevation: 4,
      child: ListTile(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: ((context) =>BurcOzellik(secilenBurc:listelenenBurc )
              ),
              ),
          );
        },
         
        leading: Image.asset("images/"+listelenenBurc.burcKucukResim,width:64 ,height: 64,),
        title: Text(
          listelenenBurc.burcAdi,style: myTextStyle.headline5,),
        subtitle: Text(
          listelenenBurc.burcTarihi,style : myTextStyle.subtitle1),
        trailing: Icon(
          Icons.arrow_forward_ios,
          color: Color.fromARGB(255, 11, 25, 150),
          ),
      ),
    );
  }
}