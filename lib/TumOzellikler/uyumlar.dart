import 'package:flutter/material.dart';
import 'package:flutter_application_1/TumOzellikler/Burclar/uyumluDetay.dart';
import 'package:flutter_application_1/model/burc.dart';

class uyumlar extends StatelessWidget {
  final Burc secilenBurc;
  const uyumlar({required this.secilenBurc, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: ShapeDecoration(
          image: DecorationImage(
            image: AssetImage(
              'images/galaksi4.jpg',
            ),
            fit: BoxFit.fill,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: CustomScrollView(slivers: [
          SliverAppBar(
            backgroundColor: Color.fromARGB(255, 13, 20, 122),
            expandedHeight: 350,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                title: Text(
                    '   ${secilenBurc.burcAdi} Burcunun Diğer Burçlarla Uyumu'),
                centerTitle: true,
                background: Image.asset(
                  'images/' + secilenBurc.burcBuyukResim,
                  fit: BoxFit.cover,
                )),
          ),
          SliverToBoxAdapter(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Koc")),
                      );
                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Koc  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Boga")),
                      );                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Boga  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Ikizler")),
                      );
                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Ikizler  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Yengec")),
                      );
                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Yengec  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Aslan")),
                      );
                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Aslan  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Basak")),
                      );
                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Basak  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Terazi",)),
                      );
                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Terazi  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                       Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Akrep")),
                      );
                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Akrep  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                       Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Yay")),
                      );
                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Yay  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                       Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Oglak")),
                      );
                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Oglak  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Kova")),
                      );
                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Kova  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
                Card(
                  color: Color.fromARGB(155, 107, 175, 215),
                  elevation: 1,
                  child: ListTile(
                    onTap: () {
                        Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) =>UyumluDetay(burcAdi: secilenBurc.burcAdi, uyumluBurcAdi: "Balik")),
                      );
                    },
                    title: Text(
                      "${secilenBurc.burcAdi} - Balik  ",
                      style: TextStyle(fontSize: 20, fontFamily: "Metrophobic"),
                    ),
                  ),
                ),
              ],
            ),
          ))
        ]),
      ),
    );
  }
}
