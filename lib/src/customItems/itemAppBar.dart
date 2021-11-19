// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ItemAppBar extends AppBar {
  final String _customTitle = 'Recipe App';
  final double _elevation = 10.0;

  ItemAppBar();

  AppBar create() {
    return AppBar(
        title: Text(_customTitle),
        elevation: _elevation,
        backgroundColor: Colors.black54,
        leading: const Icon(Icons.menu),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.favorite,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.search,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              Icons.delete,
            ),
            onPressed: () {},
          ),
          const CircleAvatar(
            //radius: 30.0,
            backgroundImage: AssetImage('assets/avatar_1.png'),
          ),
        ]);
  }

  String get customTitle => _customTitle;
  double get elevation => _elevation;
}
