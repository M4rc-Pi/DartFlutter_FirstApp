// ignore_for_file: constant_identifier_names, file_names
import 'package:flutter/material.dart';

import 'package:widgets_app/src/assets/design.dart';
import 'package:widgets_app/src/customWidgets/banners/itemBanner.dart';
import 'package:widgets_app/src/customWidgets/bars/itemAppBar.dart';
import 'package:widgets_app/src/customWidgets/buttons/itemButtonFavourite.dart';
import 'package:widgets_app/src/customWidgets/buttons/itemButtonMail.dart';
import 'package:widgets_app/src/customWidgets/cards/itemCardRecipeInfo.dart';


class ViewRecipeDetail extends StatefulWidget {

  final Map<String,dynamic> data;
  const ViewRecipeDetail( {Key? key, required this.data}) : super(key: key);

  @override
  _ViewRecipeDetailState createState() => _ViewRecipeDetailState();
}

class _ViewRecipeDetailState extends State<ViewRecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
//HOME
      home: Scaffold(
        backgroundColor: const Color(Design.COLOR_BACKGROUND),
//APPBAR
        appBar: ItemAppBar('Recipes'),
//BODY
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
//BANNER
              Container(
                child: ItemBanner(
                        widget.data['title']!,
                        widget.data['banner']!,
                        context,
                        false),
              ),
//RECIPE INFO
              ItemCardRecipeInfo(data: widget.data),
//BUTTONS
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
//MAIL BUTTON
                ItemButtonMail(),
//FAVORITE BUTTON
                ItemButtonFavourite(),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
