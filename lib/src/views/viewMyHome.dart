// ignore_for_file: constant_identifier_names, sized_box_for_whitespace, file_names

import 'package:flutter/material.dart';
import 'package:widgets_app/src/customItems/itemAppBar.dart';
import 'package:widgets_app/src/customItems/itemBanner.dart';

import 'package:widgets_app/src/customItems/itemRecipeCard.dart';
import 'package:widgets_app/src/customItems/itemSearchBar.dart';
import 'package:widgets_app/src/dataCreator.dart';
import 'package:widgets_app/src/assets/design.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //This data is going to be recived from an API in the future
    final DataCreator recipiesData = DataCreator();
    List<Map> recipiesList = recipiesData.fillData();

    return MaterialApp(
//HOME
      home: Scaffold(
        backgroundColor: const Color(Design.COLOR_BACKGROUND),
//APPBAR
        appBar: ItemAppBar().create(),

        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
//TITLE
            Container(
              child: ItemBanner().create(),
            ),
            
//SEARCH BAR
            Container(
              child: ItemSearchBar().create(),
            ),
              
//RECIPE CARDS
              Column(
                  children: _createCardList(recipiesList, "recipe", context)),
            ],
          ),
        ),
      ),
    );
  }

//FUNCTIONS

  List<Widget> _createCardList(List<Map> cardListData, String type, context) {
    List<Widget> cards = <Widget>[];
    switch (type) {
      case "recipe":
        for (Map card in cardListData) {
          ItemRecipeCard recipe = ItemRecipeCard(
              card['name'], card['stars'], card['time'], card['img'], context);
          cards.add(recipe.create());
        }
        break;
      default:
        break;
    }
    return cards;
  }
}
