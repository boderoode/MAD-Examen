import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shop_app/pages/gerechten_overview_page.dart';
import 'package:shop_app/pages/gerechten_detail_page.dart';
import 'package:shop_app/pages/gerechten_zoeken.dart';
import 'package:shop_app/pages/login_page.dart';
import 'package:shop_app/pages/registratie_succes.dart';

class RegistratiePage extends StatefulWidget {
  @override
  _RegistratiePage createState() => _RegistratiePage();
  static const routeName = '/registratie-page';
}

class _RegistratiePage extends State<RegistratiePage> {
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
              padding: const EdgeInsets.only(top: 5),
              child: Center(
                child: Container(
                  width: 200,
                  height: 150,
                  /*decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(50.0)),*/
                        child: Image.asset('assets/images/avatar-vector.jpg')
                ),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Gebruikersnaam',
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Herhaal email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 15),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Wachtwoord',),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 0, bottom: 30),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Herhaal Wachtwoord',),
              ),
            ),
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(

                  color: Color.fromARGB(255, 255, 255, 255), borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (_) => RegistratieSuccesPage()));
                },
                child: Text(
                  'Registreer',
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
