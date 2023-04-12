import 'dart:ffi';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/pages/login_page.dart';
import 'package:shop_app/providers/gerechten_provider.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/gerechten_detail_page.dart';
import 'package:shop_app/pages/gerechten_ingredienten_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shop_app/pages/gerechten_overview_page.dart';
import 'package:shop_app/pages/gerechten_zoeken.dart';

class GerechtenIngredientenPage extends StatelessWidget {
  // final String title;

  // const GerechtenIngredientenPage({super.key, required this.title});
  static const routeName = '/gerecht-ingredient';

  @override
  Widget build(BuildContext context) {
    final gerechtId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedGerecht = Provider.of<GerechtenProvider>(context, listen: false)
        .findById(gerechtId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedGerecht.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 225,
              width: double.infinity,
              child: Image.network(
                loadedGerecht.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 25),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                loadedGerecht.ingredienten,
                softWrap: true,
              ),
            ),
            Image.asset(
              'assets/images/reclame-2.jpg',
              width: 300,
              height: 175,
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
