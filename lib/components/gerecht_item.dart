import 'package:flutter/material.dart';
import 'package:shop_app/pages/gerechten_detail_page.dart';

class GerechtItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;

  const GerechtItem({
    super.key,
    required this.id,
    required this.title,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return GridTile(
      footer: GridTileBar(
        title: Text(
          title,
          textAlign: TextAlign.center,
        ),
        backgroundColor: Colors.black54,
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.comment,
          ),
        ),
      ),
      child: GestureDetector(
        onTap: () {
          Navigator.of(context).pushNamed(
            GerechtDetailPage.routeName,
            arguments: id,
          );
        },
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
