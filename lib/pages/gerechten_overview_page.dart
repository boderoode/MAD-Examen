import 'package:flutter/material.dart';
import 'package:shop_app/components/gerechten_grid.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:shop_app/pages/gerechten_zoeken.dart';
import 'package:shop_app/pages/login_page.dart';


class GerechtOverviewPage extends StatefulWidget {
  const GerechtOverviewPage({super.key});

  static const routeName = '/gerecht-overview';

  @override
  State<GerechtOverviewPage> createState() => _GerechtOverviewPageState();
}

class _GerechtOverviewPageState extends State<GerechtOverviewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Thuis gemaakt'),
        ),
        body: const Padding(
          padding: EdgeInsets.all(10.0),
          child: GerechtenGrid(),
        ),
        bottomNavigationBar: 
        GNav(gap: 10, backgroundColor: Colors.orange, tabs: [
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
