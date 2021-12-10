// ignore_for_file: file_names, unnecessary_getters_setters
import 'package:flutter/material.dart';

import 'package:widgets_app/src/assets/design.dart';

class ItemAppBar extends StatelessWidget implements PreferredSize {
  
//ATTRIBUTES
  String _customTitle = '';
  String _avatarImage = 'assets/img/avatar_1.png';

  final double _customSizedBoxWidth = 7.0;
  final double _customElevation = 10.0;
  final Map<String, Widget> icons = {
    'notifications': IconButton(
      icon: const Icon(
        Icons.notifications,
        color: Color(Design.COLOR_CARD),
      ),
      onPressed: () {},
    ),
    'favorite': IconButton(
      icon: const Icon(
        Icons.favorite,
        color: Color(Design.COLOR_CARD),
      ),
      onPressed: () {},
    ),
    'search': IconButton(
      icon: const Icon(
        Icons.search,
        color: Color(Design.COLOR_CARD),
      ),
      onPressed: () {},
    ),
    'delete': IconButton(
      icon: const Icon(
        Icons.delete,
        color: Color(Design.COLOR_CARD),
      ),
      onPressed: () {},
    ),
  };

//CONSTRUCTOR
  ItemAppBar(
    this._customTitle, {
    Key? key,
  }) : super(
          key: key,
        );

//PREFERREDSIZE REQUIRED
  @override
  Size get preferredSize => const Size.fromHeight(50);

//BUILD
  @override
  Widget build(BuildContext context) {
    return AppBar(
        leading: const Icon(
          Icons.menu,
          color: Color(Design.COLOR_CARD),
        ),
        backgroundColor: Colors.black54,
        elevation: _customElevation,
        title: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Icon(
              Icons.restaurant_menu,
              color: Color(Design.COLOR_CARD),
            ),
            SizedBox(width: _customSizedBoxWidth),
            Text(
              _customTitle,
              style: const TextStyle(
                color: Color(Design.COLOR_CARD),
              ),
            ),
          ],
        ),
        actions: addAppBarIcons(_customTitle));
  }

//FUNCTIONS
  List<Widget> addAppBarIcons(String sectionTitle) {
    List<Widget> iconsList = <Widget>[];
    switch (sectionTitle) {
      case "Recipes":
        iconsList.add(icons['favorite']!);
        iconsList.add(icons['delete']!);
        break;
      default:
        iconsList.add(icons['notifications']!);
        iconsList.add(icons['favorite']!);
        iconsList.add(icons['search']!);
        break;
    }
    iconsList.add(
      Container(
        padding: EdgeInsets.only(right: 10.0),
        child: CircleAvatar(
          backgroundImage: AssetImage(_avatarImage),
          radius: 30.0,
        ),
      ),
    );
    return iconsList;
  }

//GETTERS AND SETTERS
  String get customTitle => _customTitle;
  String get avatarImage => _avatarImage;
  set avatarImage(String path) {
    _avatarImage = path;
  }

//I DON'T KNOW WHAT IS THIS AND WHAT DO I NEED IT FOR, BUT IT IS REQUIRED
  @override
  Widget get child => this;
}
