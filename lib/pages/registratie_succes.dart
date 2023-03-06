import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shop_app/pages/gerechten_overview_page.dart';
import 'package:shop_app/pages/gerechten_detail_page.dart';
import 'package:shop_app/pages/gerechten_zoeken.dart';
import 'package:shop_app/pages/login_page.dart';
import 'package:shop_app/pages/registratie_page.dart';

class RegistratieSuccesPage extends StatefulWidget {
  @override
  _RegistratieSuccesPage createState() => _RegistratieSuccesPage();
  static const routeName = '/registratie-page';
}

class _RegistratieSuccesPage extends State<RegistratieSuccesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Registratie pagina"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
             Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Center(
                child: Container(
                    width: 200,
                    height: 250,
                    /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                    child: Image.asset('assets/images/thumbs-up-vector.jpg')),
              ),
            ),
            Text('U bent geregistreerd'),
             Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => LoginPage()));
                },
                child: Text(
                  'Log in',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            SizedBox(
              height: 130,
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
