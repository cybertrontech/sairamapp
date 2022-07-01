import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunesevenui/Route_Navigation/routes.dart';

import '../colors/all colors.dart';
import '../images/all img.dart';

class LatestList extends StatelessWidget {
  LatestList({Key? key}) : super(key: key);
  final List<ListTile> items = [
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum02),
        ),
        title: Text(
          "Pasang",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("Free", style: TextStyle(color: textcolor))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum02),
        ),
        title: Text(
          "Pasang",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("Paid", style: TextStyle(color: textcolor))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum02),
        ),
        title: Text(
          "Basanta",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("2:22", style: TextStyle(color: textcolor))),
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
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: ListView.builder(
                    // physics: NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      return ListTile(
                        onTap: () {
                          Get.toNamed(RoutesClass.musicplayers);
                          return print("press");
                        },
                        trailing: items[index].trailing,
                        leading: items[index].leading,
                        title: items[index].title,
                        subtitle: items[index].subtitle,
                      );
                    }),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
