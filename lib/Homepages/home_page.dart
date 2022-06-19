import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:tunesevenui/Homepages/store.dart';
import 'package:tunesevenui/screen/Main%20Page/MainAlbum.dart';
import '../colors/all colors.dart';
import '../images/all img.dart';
// import '../screen/Main Page/Album.dart';
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
    Albums(),
    Store(),
  ];
  final List<ListTile> items = [
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(artistalbum03),
      ),
      title: Text(
        "Kripas",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "2010",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
      trailing: Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(artistalbum01),
      ),
      title: Text(
        "Dipendra",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "2010",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
      trailing: Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(artistalbum02),
      ),
      title: Text(
        "Yugal",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "2010",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
      trailing: Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(artistalbum03),
      ),
      title: Text(
        "Basanta",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "2010",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
      trailing: Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(artist123),
      ),
      title: Text(
        "Pasang",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "2010",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
      trailing: Icon(
        Icons.add,
        color: Colors.white,
      ),
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const NavigationDrawer(),
      backgroundColor: background,
      body: SafeArea(
          child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Row(
            // mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                width: MediaQuery.of(context).size.width * 1 / 3,
                height: 50,
                child: GestureDetector(
                  onTap: () => _scaffoldKey.currentState?.openDrawer(),
                  child: Builder(builder: (context) {
                    return GestureDetector(
                      onTap: () {
                        Scaffold.of(context).openDrawer();
                      },
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Image(image: AssetImage(artist123)),
                      ),
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
          // CarouselSlider(
          //   items: imglist
          //       .map((item) => Container(
          //             child: Center(
          //               child: Image.asset(item, fit: BoxFit.cover),
          //             ),
          //           ))
          //       .toList(),
          //   options: CarouselOptions(
          //     height: MediaQuery.of(context).size.height * 0.3,
          //     aspectRatio: 16 / 9,
          //     viewportFraction: 0.6,
          //     initialPage: 0,
          //     enableInfiniteScroll:true,
          //     reverse:false,
          //     autoPlay:true,
          //     autoPlayInterval: Duration(seconds: 3),
          //     autoPlayAnimationDuration: Duration(milliseconds: 800),
          //     autoPlayCurve: Curves.fastOutSlowIn,
          //     enlargeCenterPage: true,
          //     //onPageChanged: callbackFunction,
          //     scrollDirection: Axis.horizontal,
          //   ),
          // ),
          // Row(
          //   children: [
          //     RotatedBox(
          //       quarterTurns: 1,
          //       child: ListView.builder(
          //           physics: NeverScrollableScrollPhysics(),
          //           itemCount: items.length,
          //           itemBuilder: (context, index) {
          //             return Card(
          //               color: Colors.pink,
          //               elevation: 6,
          //               child: ListTile(
          //                 title: vertical_menu_items[index].title,
          //               ),
          //             );
          //           }),
          //     )
          //   ],
          // ),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 20.0),
            height: 200.0,
            child: ListView(
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(23),
                      color: Colors.black),
                  width: 160.0,
                ),
                SizedBox(
                  height: 23,
                ),
                Container(
                  width: 160.0,
                  color: Colors.blue,
                ),
                Container(
                  width: 160.0,
                  color: Colors.green,
                ),
                Container(
                  width: 160.0,
                  color: Colors.yellow,
                ),
                Container(
                  width: 160.0,
                  color: Colors.orange,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.39,
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
                      color: Colors.white,
                    ),
                    selectedLabelTextStyle: TextStyle(
                      color: Colors.blue,
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
                  VerticalDivider(
                    color: Colors.grey,
                    thickness: 1,
                    width: 1,
                  ),
                  Expanded(
                    child: Center(child: _listPages.elementAt(_selectedIndex)),
                  )
                ],
              ),
            ),
          ),
        ]),
      )),
    );
  }
}
