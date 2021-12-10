import 'package:flutter/services.dart' show rootBundle;
import 'dart:convert';

class _RecipesProvider {
  List<dynamic> recipes = [];

  _RecipesProvider() {
    //loadData();
  }

  Future<List<dynamic>> loadData() async {
    
    final resp = await rootBundle.loadString('assets/data/recipes.json');
     
    Map dataMap = json.decode(resp);
    print(dataMap['recipes']);
    recipes = dataMap['recipes'];

    return recipes;
  }
}

final recipesProvider = _RecipesProvider();