import 'package:flutter/material.dart';

import '../../models/place.dart';
import '../pages/detail_page.dart';

class LandscapeView extends StatelessWidget {
  const LandscapeView({required this.places, Key? key}) : super(key: key);

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: places.length,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 4),
        itemBuilder: (context, index) {
          final Place place = places[index];
          return Card(
            child: InkWell(
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailPage(place: place)));
              },
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: Column(
                  children: [
                    Expanded(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(4),
                        child: Image.asset(
                          'images/${place.imagePath}.jpg',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 4,
                    ),
                    Text(
                      place.name,
                      maxLines: 1,
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}
