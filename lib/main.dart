//import 'dart:html';

import 'package:flutter/material.dart';

import 'package:widgets_app/src/views/viewMyHome.dart';

void main() {
  runApp(MaterialApp(
    /*
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => MyHome(),
      },
      //onGenerateRoute: (RouteSettings settings) {
        //print( 'Ruta llamada: ${settings.name});
        //return MaterialPageRoute(
          //builder: (BuildContext context) => AlertPage()
        //);
      //},
      */
      home: MyHome()
    ));
}


