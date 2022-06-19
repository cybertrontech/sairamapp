import 'package:flutter/material.dart';

import '../colors/all colors.dart';
import '../images/all img.dart';



class albums extends StatelessWidget {
  albums({Key? key}) : super(key: key);
  final List<ListTile> items = [
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(artistalbum01),
      ),
      title: Text(
        "Kripas",
        style: TextStyle(
          color: textcolor,
          fontFamily: 'Louis George Cafe',
        ),
      ),
      subtitle: Text(
        "12345",
        style: TextStyle(fontFamily: 'Louis George Cafe', color: subtext),
      ),
      trailing: Text("2:22", style: TextStyle(color: textcolor)),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(artistalbum03),
      ),
      title: Text(
        "Dipendra",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text("12345", style: TextStyle(color: subtext)),
      trailing: Text("2:22", style: TextStyle(color: textcolor)),
    ),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum02),
        ),
        title: Text(
          "Yugal",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text(
          "2:22",
          style: TextStyle(color: textcolor),
        )),
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
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum03),
        ),
        title: Text(
          "Pasang",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("2:22", style: TextStyle(color: textcolor))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum03),
        ),
        title: Text(
          "Basanta",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("2:22", style: TextStyle(color: textcolor))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum01),
        ),
        title: Text(
          "Pasang",
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
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            // Image.asset(tune7logoweb,width: 150,height: 190,),

            Row(
              children: [
                // Container(
                //   height: 50,
                //   width: MediaQuery.of(context).size.width * 0.4,
                //   child: Padding(
                //     padding: const EdgeInsets.only(left: 20.0, top: 10),
                //     child: Text(
                //       'Album',
                //       style: TextStyle(
                //           color: textcolor,
                //           fontSize: 20,
                //           fontFamily: 'Louis George Cafe',
                //           fontWeight: FontWeight.bold
                //       ),
                //     ),
                //   ),
                // ),
              ],
            ),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: items.length,
                  itemBuilder: (context, index) {
                    return ListTile(
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

