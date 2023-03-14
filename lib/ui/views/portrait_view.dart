import 'package:flutter/material.dart';

import '../../models/place.dart';
import '../pages/detail_page.dart';

class PortraitView extends StatelessWidget {
  const PortraitView({required this.places, Key? key}) : super(key: key);

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemCount: places.length,
        separatorBuilder: (context, index) {
          return const Divider(color: Colors.blue);
        },
        itemBuilder: (context, index) {
          final Place place = places[index];
          return GestureDetector(
            onTap: () {
              Navigator.of(context).push(
                  MaterialPageRoute(
                      builder: (context) => DetailPage(place: place)));
            },
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: Row(
                children: [
                  Text((index + 1).toString()),
                  const SizedBox(width: 8,),
                  Expanded(
                      child: Text(
                        place.name,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                      )),
                  const SizedBox(width: 8,),
                  Image.asset(
                    'images/${place.imagePath}.jpg',
                    width: 100,
                  )
                ],
              ),
            ),
          );
        });
  }
}
