import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shop_app/pages/gerechten_overview_page.dart';
import 'package:shop_app/pages/gerechten_detail_page.dart';
import 'package:shop_app/pages/gerechten_zoeken.dart';
import 'package:shop_app/pages/login_succes.dart';
import 'package:shop_app/pages/registratie_page.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPage createState() => _LoginPage();
    static const routeName = '/login-page';
}

class _LoginPage extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login Pagina"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
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
                    labelText: 'Email',),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (_) => RegistratiePage()));
              },
              child: Text(
                'Registreer',
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ),
            
            Container(
              height: 50,
              width: 250,
              decoration: BoxDecoration(
                  color: Colors.blue, borderRadius: BorderRadius.circular(20)),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (_) => LoginSuccesPage()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(color: Colors.white, fontSize: 25),
                ),
              ),
            ),
            
            SizedBox(
              height: 150,
            ),
          ],
        ),
      ),
      bottomNavigationBar: GNav(
        gap: 10,
        backgroundColor: Colors.orange,
        tabs:  [
          GButton(
            icon: Icons.home,
            onPressed: () {
              Navigator.of(context).pushNamed(
                GerechtOverviewPage.routeName,
              );
            }
          ),
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
            },)
        ]),
    );
  }
}
