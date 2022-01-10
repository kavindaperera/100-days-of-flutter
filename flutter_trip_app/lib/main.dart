// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_trip_app/FadeAnimation.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Nunito'),
      home: HomePage(),
    ));

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late PageController _pageController;

  void _onScroll() {}

  @override
  void initState() {
    _pageController = PageController(
      initialPage: 0,
    )..addListener(_onScroll);

    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          makePage(
            page: 1,
            totalPages: 5,
            image: 'assets/images/one.jpg',
            title: 'SIGIRIYA',
            description:
                'Sri Lanka’s most identifiable landmark, Sigiriya Rock, looms above the surrounding plains: an ideal place for a fortress. However, when the usurper King Kasyapa built his base here in the 5th century, he didn’t merely build a fortress. Instead, he built a grand palace complete with pleasure grounds below. Today only ruins of the palace remain, but features such as a pair of ginormous stone lion’s paws give you a glimpse of its former splendour.',
          ),
          makePage(
            page: 2,
            totalPages: 5,
            image: 'assets/images/two.jpg',
            title: 'HAPUTHALE',
            description:
                'Haputale is a small town on the southern edge of the Sri Lankan hill country. On a clear day you can see the coastline from the mountain ridge, but on other days thick mist clings on to the deep green mountains, giving you a surreal experience of being surrounded by clouds. Explore the stunning surroundings of Haputale during your travels and discover its myriad of attractions!',
          ),
          makePage(
            page: 3,
            totalPages: 5,
            image: 'assets/images/three.jpg',
            title: 'KNUCKLES',
            description:
                'Knuckles range also called Dumbara mountain range is located off Kandy, in the northern end of Central Highlands of Sri Lanka. To the south and east of the mountain range is Mahaweli river basin while to the west are Matale plains.',
          ),
          makePage(
            page: 4,
            totalPages: 5,
            image: 'assets/images/four.jpg',
            title: 'TANGALLE',
            description:
                'Tangalle is a town located in Hambantota district in Southern Province, Sri Lanka. The city is known for its vast stretches of beaches and has a typical tropical setting. Tangalla Beach, located in this town, has often been voted as the best beach by the locals, the travellers and the tourists.',
          ),
          makePage(
            page: 5,
            totalPages: 5,
            image: 'assets/images/five.jpg',
            title: 'MIRISSA',
            description:
                'Mirissa is one of the most popular beach destinations in southern Sri Lanka, and for a good reason! The area has it all, beautiful Sri Lankan beaches, great waves for surfing, and waters teeming with marine life, from turtles to big blue whales. Spend your days enjoying fresh coconuts in your hammock, eating delicious food from beachside restaurants, and zooming around by motorbike.',
          ),
        ],
      ),
    );
  }

  Widget makePage({image, title, description, page, totalPages}) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(image),
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(0.9),
              Colors.black.withOpacity(0.2)
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  FadeAnimation(
                    0.5,
                    Text(
                      page.toString(),
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Text(
                    '/' + totalPages.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  )
                ],
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    FadeAnimation(
                      1,
                      Text(
                        title,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 50,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      1.5,
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.only(right: 3.0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3.0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3.0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3.0),
                            child: Icon(
                              Icons.star,
                              color: Colors.yellow,
                              size: 15,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(right: 3.0),
                            child: Icon(
                              Icons.star,
                              color: Colors.grey,
                              size: 15,
                            ),
                          ),
                          Text(
                            '4.0',
                            style: TextStyle(color: Colors.white70),
                          ),
                          Text(
                            '(2870)',
                            style:
                                TextStyle(color: Colors.white38, fontSize: 12),
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      2,
                      Padding(
                        padding: const EdgeInsets.only(right: 50),
                        child: Text(
                          description,
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.7),
                            height: 1.9,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    FadeAnimation(
                      2.5,
                      Text(
                        'READ MORE',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
