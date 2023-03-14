import 'package:flutter/material.dart';

import '../../models/place.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({required this.place, Key? key}) : super(key: key);

  final Place place;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(place.name),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'images/${place.imagePath}.jpg',
              width: double.infinity,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(place.desc),
            )
          ],
        ),
      ),
    );
  }
}
