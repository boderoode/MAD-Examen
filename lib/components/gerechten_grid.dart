import 'package:flutter/material.dart';
import 'package:shop_app/components/gerecht_item.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/providers/gerechten_provider.dart';

class GerechtenGrid extends StatelessWidget {
  const GerechtenGrid({super.key});
  

  @override
  Widget build(BuildContext context) {
    final gerechtenData = Provider.of<GerechtenProvider>(context);
    final gerechten = gerechtenData.getItems;
    return GridView.builder(
      itemCount: 7,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 3 / 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
      itemBuilder: (context, i) => GerechtItem(
        id: gerechten[i].id,
        title: gerechten[i].title,
        imageUrl: gerechten[i].imageUrl,
      ),
    );
  }
}
