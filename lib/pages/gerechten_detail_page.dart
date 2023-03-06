import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/gerechten_provider.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/pages/gerechten_detail_page.dart';
import 'package:shop_app/pages/gerechten_ingredienten_page.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shop_app/pages/gerechten_zoeken.dart';
import 'package:shop_app/pages/login_page.dart';
import 'package:shop_app/pages/gerechten_overview_page.dart';

class GerechtDetailPage extends StatelessWidget {
  // final String title;

  // const ProductDetailPage({super.key, required this.title});
  static const routeName = '/gerecht-detail';

  @override
  Widget build(BuildContext context) {
    final gerechtId = ModalRoute.of(context)?.settings.arguments as String;
    final loadedGerecht = Provider.of<GerechtenProvider>(context, listen: false)
        .findById(gerechtId);

    return Scaffold(
        appBar: AppBar(
          title: Text(loadedGerecht.title),
        ),
        body: Column(
          children: [
             SizedBox(
              height: 150,
              width: double.infinity,
              child: Image.network(
                loadedGerecht.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 5),
            Icon(Icons.timer),
            Text(
              loadedGerecht.bereidingstijd,
              style: const TextStyle(
                  color: Color.fromARGB(255, 20, 87, 0), fontSize: 30),
            ),
            const SizedBox(height: 25),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                loadedGerecht.description,
                softWrap: true,
              ),
            ),
            ElevatedButton(
                child: const Text('Ingredienten'),
                onPressed: () {
                  Navigator.of(context).pushNamed(
                    GerechtenIngredientenPage.routeName,
                    arguments: gerechtId,
                  );
                }),
          ],
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
