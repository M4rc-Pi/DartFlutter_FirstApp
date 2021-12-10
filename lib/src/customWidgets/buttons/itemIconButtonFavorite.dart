// ignore_for_file: file_names

import 'package:flutter/material.dart';

class ItemIconButtonFavorite extends StatefulWidget {
  const ItemIconButtonFavorite({Key? key}) : super(key: key);

  @override
  _ItemIconButtonFavoriteState createState() => _ItemIconButtonFavoriteState();
}

class _ItemIconButtonFavoriteState extends State<ItemIconButtonFavorite> {
  Color _favColor = Colors.grey;

  @override
  void initState() {
    _favColor = Colors.grey;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: const EdgeInsets.fromLTRB(0.0, 0.0, 8.0, 0.0),
      constraints: const BoxConstraints(),
      icon: Icon(Icons.favorite_border, color: _favColor),
      tooltip: 'Add recipe to favorites.',
      onPressed: () => {
        setState(() {
          _favColor =
              (_favColor == Colors.grey ? Colors.pinkAccent : Colors.grey);
        })
      },
    );
  }
}
