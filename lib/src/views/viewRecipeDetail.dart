// ignore_for_file: constant_identifier_names, file_names

import 'package:flutter/material.dart';


class DetailRecipe extends StatefulWidget {
  const DetailRecipe({Key? key}) : super(key: key);

  @override
  _DetailRecipeState createState() => _DetailRecipeState();
}

class _DetailRecipeState extends State<DetailRecipe> {
  //final color_background = 0xFFccb378;
  static const color_background = 0xFFabb983;
  //final color_card = 0xFFdcca9d;
  static const color_card = 0xFFe5ddc4;
  static const color_shadow = 0xFF786d50;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //body: Image.network('https://res.cloudinary.com/tienda-com/image/upload/ar_16:9,c_fill/c_scale,w_auto,dpr_auto/recipes/tortilla-espanola.jpg'),
        backgroundColor: const Color(color_background),
        body: SingleChildScrollView(
          //MAIN COLUMN
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //MAIN ARRAY
            children: <Widget>[
              //TORTILLA
              //CONTAINER
              Stack(
                clipBehavior: Clip.none,
                //alignment: Alignment.topRight,
                children: <Widget>[
                  //TORTILLA IMAGE
                  Container(
                    padding: const EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 50.0),
                    child: Image.network(
                        'https://res.cloudinary.com/tienda-com/image/upload/ar_16:9,c_fill/c_scale,w_auto,dpr_auto/recipes/tortilla-espanola.jpg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 1.0, vertical: 30.0),
                    child: IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      }, 
                      icon: const Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                        size: 30.0,
                        ),
                    ),
                  ),

                  /*
                  Padding(
                    padding: const EdgeInsets.all(17.0),
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
*/
                  //CARD
                  const Positioned(
                    bottom: 20.0,
                    left: 6.0,
                    child: Card(
                      //color: Color(0xFFe4d5b3),
                      color: Color(color_card),
                      elevation: 7.0,
                      shadowColor: Color(color_shadow),
                      //shape: RoundedRectangleBorder(
                      //  borderRadius: BorderRadius.circular(50.0),
                      //),
                      child: Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('Tortilla de patatas',
                            style: TextStyle(
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                              color: Colors.black87,
                              letterSpacing: 1.0,
                            )),
                      ),
                    ),
                  ),
                ],
              ),

              Container(
                margin: const EdgeInsets.fromLTRB(15.0, 3.0, 15.0, 25.0),
                padding: const EdgeInsets.all(10.0),
                decoration: BoxDecoration(
                  color: const Color(color_card),
                  borderRadius: BorderRadius.circular(6.0),
                  boxShadow: const [
                    BoxShadow(
                      color: Color(color_shadow),
                      blurRadius: 10.0,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Padding(
                      //padding: EdgeInsets.all(10.0),
                      padding: EdgeInsets.fromLTRB(12.0, 10.0, 0.0, 10.0),
                      child: Text(
                        '★★★★',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.w600,
                          color: Colors.orangeAccent,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.fromLTRB(8.0, 0.0, 8.0, 10.0),
                      child: Text(
                        '''  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec non tortor ut turpis sollicitudin consequat. Aliquam eu iaculis elit. Duis pulvinar viverra magna, molestie efficitur erat suscipit eu. Aliquam consectetur sem augue, nec elementum elit commodo nec. Duis aliquet libero nulla, sed tempus nibh pretium ut. Duis mauris diam, scelerisque eu consectetur et, elementum viverra ipsum. Phasellus in viverra sem, maximus faucibus leo. Ut fermentum dolor sit amet est euismod, tincidunt venenatis ante accumsan. Proin purus nisi, pharetra eget posuere quis, ultricies vitae erat.

  Nam sit amet rutrum lectus, fermentum malesuada massa. Integer congue tempor cursus. Mauris consequat, ipsum a tristique dictum, neque urna auctor dolor, sit amet posuere magna neque eu dolor. Ut mattis dolor eu rhoncus pulvinar. Nullam elementum metus ut metus consequat semper. Ut molestie urna nec aliquet congue. In quis aliquam justo. Duis eget quam nec neque aliquet vestibulum id quis ante. Duis quis mauris vestibulum, sollicitudin sapien pulvinar, efficitur ipsum. 
                        ''',
                        style: TextStyle(
                          fontSize: 15.0,
                          wordSpacing: 2.0,
                        ),
                      ),
                    )
                  ],
                ),
              ),

/*
              Container(
                  child: Column(
                children: [
                  Text(
                    '★★★★',
                    style:
                        TextStyle(
                          fontSize: 25.0, 
                          fontWeight: FontWeight.w600,
                          color: Colors.orangeAccent
                          ,
                          ),
                  ),
                ],
              )),
              */

//LOWER PART
              //CONTAINER
              Row(
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
            */

                  //MAIL BUTTON
                  Container(
                    padding: const EdgeInsets.all(15.0),
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
                  SizedBox(
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
                          color: Colors.white,
                        ),
                      ),
                      icon: const Icon(
                        Icons.favorite,
                        color: Colors.white,
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
