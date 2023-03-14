import 'package:flutter/material.dart';
import 'package:tp_marseille/repositories/datasource.dart';
import 'package:tp_marseille/ui/views/landscape_view.dart';
import 'package:tp_marseille/ui/views/portrait_view.dart';

import '../../models/place.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final List<Place> places = DataSource().allPlaces();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Marseille'),
      ),
      body: MediaQuery.of(context).orientation == Orientation.portrait
          ? PortraitView(
              places: places,
            )
          : LandscapeView(places: places),
    );
  }
}
