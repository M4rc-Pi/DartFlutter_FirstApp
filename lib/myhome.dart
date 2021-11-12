import 'package:flutter/material.dart';
import 'package:widgets_app/recipe_detail.dart';

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
                      MaterialPageRoute(builder: (context) => DetailRecipe()));
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
            ],
          ),
        ),
      ),
    );
  }
}
