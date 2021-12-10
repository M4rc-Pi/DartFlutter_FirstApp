// ignore_for_file: constant_identifier_names, sized_box_for_whitespace, file_names
import 'package:flutter/material.dart';

import 'package:widgets_app/src/customWidgets/banners/itemBanner.dart';
import 'package:widgets_app/src/customWidgets/bars/itemAppBar.dart';
import 'package:widgets_app/src/customWidgets/bars/itemSearchBar.dart';
import 'package:widgets_app/src/customWidgets/cards/itemCardRecipe.dart';
import 'package:widgets_app/src/customWidgets/titles/itemSubTitle.dart';
import 'package:widgets_app/src/providers/recipes_provider.dart';
import 'package:widgets_app/src/utils/data.dart';
import 'package:widgets_app/src/assets/design.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);

  final String _appBarTitle = 'Home';
  final String _subTitleRecentSearches = 'Recent Searches';

  @override
  Widget build(BuildContext context) {
    //This data is going to be recived from an API in the future
    //print(recipesProvider.recipes);

    final Data _appData = Data();
    final String _mainBannerTitle = _appData.mainBanner['title']!;
    final String _mainBannerImg = _appData.mainBanner['img']!;

    return MaterialApp(
//HOME
      home: Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color(Design.COLOR_BACKGROUND),

//APPBAR
        appBar: ItemAppBar(_appBarTitle),

//BODY
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
//BANNER
            ItemBanner(_mainBannerTitle, _mainBannerImg, context, true),

//SUBTITLE: RECENT SEARCHES
            //ItemSubTitle(_subTitleRecentSearches),

//RECIPE CARDS
            Expanded(
              child: _list(),
              //ListView(
              //children: _createCardList(_appData.data, "recipe", context)),
              //children: _list(),
            ),

//SEARCHBAR
            //ItemSearchBar(),
          ],
        ),
      ),
    );
  }

//FUNCTIONS
/*
  List<Widget> _createCardList(List<Map<String, String>> cardListData, String type, context) {
    List<Widget> cards = <Widget>[];
    cards.add(ItemSubTitle('Recent Searches'),);
    switch (type) {
      case "recipe":
        for (Map<String, String> cardData in cardListData) {
          ItemCardRecipe recipe = ItemCardRecipe(cardData);
          cards.add(recipe);
        }
        break;
      default:
        break;
    }
    cards.add(const SizedBox(
      height: 10.0,
    ));
    return cards;
  }
*/

  Widget _list() {
    return FutureBuilder(
      future: recipesProvider.loadData(),
      initialData: const [],
      builder: (context, AsyncSnapshot<List<dynamic>> snapshot) {
        return ListView(
          children: _recipeList(snapshot.data!),
        );
      },
    );
  }

  List<Widget> _recipeList(List<dynamic> data) {
    final List<Widget> opts = [];
    opts.add(ItemSubTitle(_subTitleRecentSearches));
    data.forEach((opt) {
      //final widgetTemp = ItemCardRecipe(opt['title'], opt['stars'], opt['time'], opt['img'], opt['banner']);
      final widgetTemp = ItemCardRecipe(opt);
      opts.add(widgetTemp);
    });
    opts.add(const SizedBox(
      height: 10.0,
    ));
    return opts;
  }

  //String get subTitleRecentSearches => _subTitleRecentSearches;
}
