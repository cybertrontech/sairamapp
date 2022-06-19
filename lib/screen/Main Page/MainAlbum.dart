import 'package:flutter/material.dart';

import '../../colors/all colors.dart';
import '../../images/all img.dart';

class Albums extends StatelessWidget {
  Albums({Key? key}) : super(key: key);
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
      trailing: Text("FREE",
          style: TextStyle(color: subtext,fontWeight: FontWeight.bold)),
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
      trailing: Text("STORE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold)),
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
          "FREE",
          style: TextStyle(color: subtext,fontWeight: FontWeight.bold),
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
        trailing: Text("FREE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum03),
        ),
        title: Text(
          "Pasang",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("STORE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum03),
        ),
        title: Text(
          "Basanta",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("FREE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum01),
        ),
        title: Text(
          "Pasang",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("STORE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
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
      trailing: Text("FREE",
          style: TextStyle(color: subtext,fontWeight: FontWeight.bold)),
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
      trailing: Text("STORE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold)),
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
          "FREE",
          style: TextStyle(color: subtext,fontWeight: FontWeight.bold),
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
        trailing: Text("FREE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum03),
        ),
        title: Text(
          "Pasang",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("STORE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum03),
        ),
        title: Text(
          "Basanta",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("FREE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum01),
        ),
        title: Text(
          "Pasang",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("STORE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
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
      trailing: Text("FREE",
          style: TextStyle(color: subtext,fontWeight: FontWeight.bold)),
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
      trailing: Text("STORE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold)),
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
          "FREE",
          style: TextStyle(color: subtext,fontWeight: FontWeight.bold),
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
        trailing: Text("FREE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum03),
        ),
        title: Text(
          "Pasang",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("STORE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum03),
        ),
        title: Text(
          "Basanta",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("FREE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
    ListTile(
        leading: CircleAvatar(
          child: Image.asset(artistalbum01),
        ),
        title: Text(
          "Pasang",
          style: TextStyle(color: textcolor),
        ),
        subtitle: Text("12345", style: TextStyle(color: subtext)),
        trailing: Text("STORE", style: TextStyle(color: subtext,fontWeight: FontWeight.bold))),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: SafeArea(
        child: Column(
          children: [
            Image.asset(tune7logoweb,width: 110,height: 140,),
            Padding(
              padding: const EdgeInsets.only(right: 300),
              child: Text(
                'Albums',
                style: TextStyle(
                    color: textcolor,
                    fontSize: 23,
                    fontFamily: 'Louis George Cafe',
                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            SizedBox(height: 13,),
            Container(
              width: MediaQuery.of(context).size.width,
              height: 440,
              child: ListView.builder(
                  // physics: NeverScrollableScrollPhysics(),
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
