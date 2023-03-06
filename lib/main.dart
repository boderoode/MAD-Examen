import 'package:flutter/material.dart';
import 'package:shop_app/pages/gerechten_overview_page.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/pages/gerechten_zoeken.dart';
import 'package:shop_app/pages/login_page.dart';
import 'package:shop_app/providers/gerechten_provider.dart';
import 'package:shop_app/pages/gerechten_detail_page.dart';
import 'package:shop_app/pages/gerechten_ingredienten_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GerechtenProvider(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: Colors.orange,
        ),
        home: const GerechtOverviewPage(),
        routes: {
          GerechtDetailPage.routeName: (context) => GerechtDetailPage(),
          GerechtOverviewPage.routeName: (context) => GerechtOverviewPage(),
          GerechtenIngredientenPage.routeName: (context) => GerechtenIngredientenPage(),
          LoginPage.routeName: (context) => LoginPage(),
          GerechtenZoeken.routeName: (context) => GerechtenZoeken() 
        },
      ),
    );
    
  }
}


