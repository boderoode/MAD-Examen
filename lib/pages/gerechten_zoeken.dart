import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shop_app/pages/gerechten_overview_page.dart';
import 'package:shop_app/pages/gerechten_detail_page.dart';
import 'package:shop_app/pages/login_page.dart';

class GerechtenZoeken extends StatefulWidget {
  @override
  _GerechtenZoeken createState() => _GerechtenZoeken();
  static const routeName = '/gerecht-zoeken';
}

class _GerechtenZoeken extends State<GerechtenZoeken> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Zoek naar uw gerecht!"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Center(
                child: Container(
                  width: 200,
                  height: 15,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                ),
              ),
            ),
            
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
          style: TextStyle(fontSize: 25.0),
          decoration: InputDecoration(
            contentPadding: EdgeInsets.fromLTRB(0,0,0,0),
            prefixIcon: Icon(Icons.search),
            hintText: "Zoek gerecht!",
            border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.orange, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0)
              ),
            focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 32.0),
                    borderRadius: BorderRadius.circular(25.0))))
            ),
          ],
        ),
      ),
      bottomNavigationBar: GNav(gap: 10, backgroundColor: Colors.orange, tabs: [
        GButton(
            icon: Icons.home,
            onPressed: () {
              Navigator.of(context).pushNamed(
                GerechtOverviewPage.routeName,
              );
            }),
        GButton(
          icon: Icons.search,
          onPressed: () {
            Navigator.of(context).pushNamed(GerechtenZoeken.routeName);
          },
        ),
        GButton(
          icon: Icons.person,
          onPressed: () {
            Navigator.of(context).pushNamed(
              LoginPage.routeName,
            );
          },
        )
      ]),
    );
  }
}
