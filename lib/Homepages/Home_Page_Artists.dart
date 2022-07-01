import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunesevenui/Route_Navigation/routes.dart';

import '../colors/all colors.dart';
import '../images/all img.dart';

class artist extends StatelessWidget {
  artist({Key? key}) : super(key: key);
  final List<ListTile> items = [
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(artistalbum03),
      ),
      title: Text(
        "The Rain Dance",
        style: TextStyle(color: textcolor, fontWeight: FontWeight.bold),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(artistalbum03),
      ),
      title: Text(
        "The Pitchbenders",
        style: TextStyle(color: textcolor, fontWeight: FontWeight.bold),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(artist123),
      ),
      title: Text(
        "The Underside",
        style: TextStyle(color: textcolor, fontWeight: FontWeight.bold),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(artistalbum02),
      ),
      title: Text(
        "Baln Shah",
        style: TextStyle(color: textcolor, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SingleChildScrollView(
        physics: NeverScrollableScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Row(
              children: [
                SizedBox(
                  width: 20,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 1 / 3,
                  height: 50,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.arrow_back,
                      color: textcolor,
                    ),
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
                        color: textcolor,
                        Icons.search,
                      )),
                ),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 30,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 25.0,
                ),
                child: Text(
                  'Artists',
                  style: TextStyle(
                      color: textcolor,
                      fontSize: 26,
                      fontFamily: 'Louis George Cafe',
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 400,
              child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      onTap: () {
                        Get.toNamed(RoutesClass.artistsdetails);
                      },
                      trailing: items[index].trailing,
                      leading: CircleAvatar(
                        child: items[index].leading,
                      ),
                      title: items[index].title,
                      subtitle: items[index].subtitle,
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
