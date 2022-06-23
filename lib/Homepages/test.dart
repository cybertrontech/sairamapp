import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:tunesevenui/Homepages/store.dart';
import 'package:tunesevenui/images/all%20img.dart';
import '../colors/all colors.dart';
import '../screen/Main Page/MainAlbum.dart';
import 'homepagealbum.dart';
import 'latest.dart';
import 'navigation_drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  int _selectedIndex = 1;
  List<Widget> _listPages = [
    LatestList(),
    albums(),
    Store(),

  ];
  // final List<String> imglist = [
  //   artist1,
  //   artist2,
  //   artist3,
  //   artist4,
  //   artist5,
  //   artist6
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      backgroundColor: background,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SafeArea(
          child: Column(
              children: [
                Row(
                  // mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 1 / 3,
                      height: 40,
                      child: GestureDetector(
                        onTap: () => _scaffoldKey.currentState?.openDrawer(),
                        child: Builder(builder: (context) {
                          return GestureDetector(
                              onTap: () {
                                Scaffold.of(context).openDrawer();
                              },
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Icon(
                                    color: Colors.grey,
                                    Icons.arrow_back,
                                  ),
                                ),
                              )
                            // child: Align(
                            //   alignment: Alignment.centerLeft,
                            //   child: Image(image: AssetImage("assets/images/arrow.png")),
                            // ),
                          );
                        }),
                      ),
                    ),
                    Image.asset(
                      tune7logoweb,
                      height: 100,
                      width: 100,
                      alignment: Alignment.center,
                    ),
                    Container(
                      width: MediaQuery.of(context).size.width * 1 / 3,
                      height: 50,
                      child: Align(
                          alignment: Alignment.centerRight,
                          child: Icon(
                            color: Colors.grey,
                            Icons.search,
                          )),
                    ),
                  ],
                ),
                CarouselSlider(
                  items: [
                    Container(
                      child: Image.asset(fakeimage),
                    ),
                    Container(
                      child: Image.asset(fakeimage),
                    ),
                    Container(
                      child: Image.asset(fakeimage),
                    ),
                    Container(
                      child: Image.asset(fakeimage),
                    ),
                    Container(
                      child: Image.asset(fakeimage),
                    ),
                  ],
                  // items: imglist
                  //     .map((item) => Center(
                  //           child: Image.asset(
                  //             item,
                  //             fit: BoxFit.cover,
                  //           ),
                  //         ))
                  //     .toList(),
                  options: CarouselOptions(
                    height: MediaQuery.of(context).size.height * 0.5,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.6,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    autoPlay: true,
                    autoPlayInterval: Duration(seconds: 7),
                    autoPlayAnimationDuration: Duration(milliseconds: 3000),
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enlargeCenterPage: true,
                    //onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ),
                ),

                SizedBox(
                  height: 20,
                ),
                Container(
                  color: Colors.black,
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height * 1,
                  child: Row(

                    children: [
                      NavigationRail(
                        selectedIndex: _selectedIndex,
                        onDestinationSelected: (int index) {
                          setState(() {
                            _selectedIndex = index;
                          });
                        },
                        groupAlignment: 0,
                        backgroundColor: background,
                        unselectedLabelTextStyle: TextStyle(
                          color: subtext,
                        ),
                        selectedLabelTextStyle: TextStyle(
                          color: textcolor,
                        ),
                        labelType: NavigationRailLabelType.all,
                        destinations: const <NavigationRailDestination>[
                          NavigationRailDestination(
                            icon: Icon(null),
                            label: RotatedBox(
                                quarterTurns: -1,
                                child: Text(
                                  'Latest',
                                )),
                          ),
                          NavigationRailDestination(
                            icon: Icon(null),
                            label: RotatedBox(
                                quarterTurns: -1,
                                child: Text(
                                  'Albums',
                                )),
                          ),
                          NavigationRailDestination(
                            icon: Icon(null),
                            label: RotatedBox(
                                quarterTurns: -1,
                                child: Text(
                                  'Store',
                                )),
                          ),
                        ],
                      ),
                      // VerticalDivider(
                      //   color: Colors.grey,
                      //   thickness: 1,
                      //   width: 1,
                      // ),
                      Expanded(
                        child: Center(child: _listPages.elementAt(_selectedIndex)),
                      )
                    ],
                  ),
                ),
              ]),
        ),
      ),
    );
  }
}
