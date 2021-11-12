//import 'dart:html';
import 'package:flutter/material.dart';
import 'package:widgets_app/myhome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHome()
    );
  }
}

/*
class MyHome extends StatelessWidget {
  /*
  const MyHome({
    Key? key,
    required this.color_background,
    required this.color_card,
    required this.color_shadow,
    required this.context,
  }) : super(key: key);
*/
  //final color_background = 0xFFccb378;
  static const color_background = 0xFFabb983;
  //final color_card = 0xFFdcca9d;
  static const color_card = 0xFFe5ddc4;
  static const color_shadow = 0xFF786d50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
//APPBAR
        appBar: AppBar(
          title: Text('Recipe App'),
          elevation: 10.0,
          backgroundColor: Colors.black54,
          //APPBAR ICONS
          leading: Icon(Icons.menu),
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
            CircleAvatar(
              //radius: 30.0,
              backgroundImage: AssetImage('assets/avatar_1.png'),
            ),
          ],
        ),
        //backgroundColor:  Colors.white,
        backgroundColor: Color(color_background),
        //backgroundColor: Color(0xFFc2a564),
        //backgroundColor: Color(0xFFe4d5b3),
        //backgroundColor: Color(0xFFc19329),
        //backgroundColor: Color(0xFFc0a76f),

//BODY
        body: SingleChildScrollView(
          //MAIN COLUMN
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //MAIN ARRAY
            children: <Widget>[
              //UPPER PART
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 20.0, 0.0, 0.0),
                //TITLE
                child: Text(
                  'Traditional Food!',
                  style: TextStyle(
                    fontSize: 55.0,
                    fontWeight: FontWeight.w600,
                    color: Colors.black87,
                    backgroundColor: Color(color_card),
                    decoration: TextDecoration.combine(
                      [
                        TextDecoration.overline,
                        TextDecoration.underline,
                      ],
                    ),
                    //decorationColor: Color(0xFF816e40),
                    decorationColor: Colors.deepOrangeAccent,
                    decorationThickness: 2.0,
                    decorationStyle: TextDecorationStyle.wavy,
                    letterSpacing: 1.0,
                    wordSpacing: 5.0,
                    //shadows: [
                    //  Shadow(
                    //    color: Colors.black54,
                    //    blurRadius: 20.0,
                    //    offset: Offset(5.0, 10.0),
                    //  ),
                    //],
                    fontFamily: 'PuppiesPlay',
                  ),
                ),
              ),

              //SEARCH BAR
              Padding(
                padding: EdgeInsets.fromLTRB(15, 30, 15, 0),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white60,
                    filled: true,
                    border: const OutlineInputBorder(),
                    labelText: 'Search Bar',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(15.0),
                      borderSide: const BorderSide(
                        color: Colors.blue,
                      ),
                    ),
                    prefixIcon: const Icon(
                      Icons.search,
                      color: Colors.black,
                    ),
                    hintText: 'Search for a recipe...',
                    hintStyle: const TextStyle(
                      color: Colors.blue,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
              ),


              GestureDetector(
                onTap: () {
                  Navigator.push(context, 
                    MaterialPageRoute(builder: (context)=>DetailRecipe()));
                },
                child: Stack(
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 5.0),
                      height: 150.0,
                      decoration: BoxDecoration(
                        color: Color(color_card),
                        borderRadius: BorderRadius.circular(12.0),
                        boxShadow: [
                          BoxShadow(
                            color: Color(color_shadow),
                            blurRadius: 10.0,
                          ),
                        ],
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: 120.0,
                                  child: Text(
                                    'Tortilla de patatas',
                                    style: TextStyle(
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.pinkAccent,
                                )
                              ],
                            ),
                            Text('★★★★'),
                            Row(
                              children: [
                                Text(
                                  '2 hours',
                                  style: TextStyle(
                                    color: Colors.black54,
                                  ),
                                ),
                                Icon(
                                  Icons.timer,
                                  color: Colors.black54,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      top: 15.0,
                      left: 20.0,
                      bottom: 5.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12.0),
                        child: Image.network(
                          'https://www.recetasderechupete.com/wp-content/uploads/2020/11/Tortilla-de-patatas-4.jpg',
                          width: 150.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              Stack(
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 5.0),
                    height: 150.0,
                    decoration: BoxDecoration(
                      color: Color(color_card),
                      borderRadius: BorderRadius.circular(12.0),
                      boxShadow: [
                        BoxShadow(
                          color: Color(color_shadow),
                          blurRadius: 10.0,
                        ),
                      ],
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.fromLTRB(160.0, 10.0, 10.0, 20.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                width: 120.0,
                                child: Text(
                                  'Gazpacho',
                                  style: TextStyle(
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.favorite_border,
                                color: Colors.pinkAccent,
                              )
                            ],
                          ),
                          Text('★★★★'),
                          Row(
                            children: [
                              Text(
                                '45 min',
                                style: TextStyle(
                                  color: Colors.black54,
                                ),
                              ),
                              Icon(
                                Icons.timer,
                                color: Colors.black54,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    top: 15.0,
                    left: 20.0,
                    bottom: 5.0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: Image.network(
                        'https://www.acouplecooks.com/wp-content/uploads/2021/07/Gazpacho-002s.jpg',
                        width: 150.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ],
              ),

//TORTILLA
              //CONTAINER
              Container(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 50.0),
                //STACK

                child: Stack(
                  clipBehavior: Clip.none,
                  //alignment: Alignment.topRight,
                  children: <Widget>[
                    //TORTILLA IMAGE
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Expanded(
                        //alignment: Alignment.center,
                        //margin: EdgeInsets.all(20.0),
                        //padding: EdgeInsets.all(40.0),
                        //height: 200.0,
                        //width: 400.0,
                        //color: Colors.white70,
                        flex: 2,
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(8.0),
                            border: Border.all(width: 1, color: Colors.black87),
                            boxShadow: const [
                              BoxShadow(
                                color: Color(color_shadow),
                                spreadRadius: 5.0,
                                blurRadius: 20.0,
                                offset: Offset(8, 9),
                              ),
                            ],
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                                'https://res.cloudinary.com/tienda-com/image/upload/ar_16:9,c_fill/c_scale,w_auto,dpr_auto/recipes/tortilla-espanola.jpg'),
                          ),
                        ),
                      ),
                    ),

                    //SIZED BOX
                    const SizedBox(
                      //alignment: Alignment.center,
                      //margin: EdgeInsets.all(20.0),
                      //padding: EdgeInsets.all(40.0),
                      //height: 200.0,
                      //width: 400.0,
                      //color: Colors.white70,
                      width: 10.0,
                    ),

                    //CARD
                    const Positioned(
                      bottom: -10.0,
                      left: 8.0,
                      child: Card(
                        //color: Color(0xFFe4d5b3),
                        color: Color(color_card),
                        elevation: 10.0,
                        shadowColor: Color(color_shadow),
                        //shape: RoundedRectangleBorder(
                        //  borderRadius: BorderRadius.circular(50.0),
                        //),
                        child: Padding(
                          padding: EdgeInsets.all(10.0),
                          child: Text('Tortilla de patatas',
                              style: TextStyle(
                                color: Colors.black87,
                                letterSpacing: 1.0,
                              )),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                  ],
                ),
              ),

//LOWER PART
              //CONTAINER
              Container(
                //padding: EdgeInsets.fromLTRB(0.0, 100.0, 0.0, 0.0),

                //COLUMN
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    //CAMERA ICON
                    /* 
                    Container(
                      height: 50.0,
                      width: 50.0,
                      child: const Icon(
                        Icons.camera_alt,
                        size: 40.0,
                        color: Colors.black87,
                      ),
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
            

                    //MAIL BUTTON
                    Container(
                      padding: EdgeInsets.all(15.0),
                      height: 70.0,
                      child: ElevatedButton.icon(
                        icon: const Icon(Icons.mail),
                        onPressed: () {},
                        label: const Text(
                          'Mail',
                          style: TextStyle(
                            //fontSize: 35.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                            primary: Colors.deepPurpleAccent,
                            padding: const EdgeInsets.symmetric(
                                horizontal: 35, vertical: 1),
                            textStyle: const TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold)),
                      ),
                    ),

                    //FAVORITE BUTTON
                    Container(
                      height: 45.0,
                      child: FloatingActionButton.extended(
                        splashColor: Colors.deepPurpleAccent,
                        backgroundColor: Colors.redAccent,
                        foregroundColor: Colors.black,
                        onPressed: () {},
                        label: const Text(
                          'Favorite',
                          style: TextStyle(
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black87,
                          ),
                        ),
                        icon: const Icon(Icons.favorite),
                      ),
                    ),
                    /*
                    const SizedBox(
                      width: 10.0,
                    ),
            
                  ],
                ),
              ),
              */
            ],
          ),
        ),
      ),
    );
  }
}
*/
*/