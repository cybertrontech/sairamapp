import 'package:flutter/material.dart';
import 'package:rounded_linear_progress/rounded_linear_progress.dart';
import 'package:tunesevenui/colors/all%20colors.dart';

import '../images/all img.dart';

class yourlibrary extends StatelessWidget {
  final List<ListTile> items = [
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "Rampage (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
    ListTile(
      leading: CircleAvatar(
        child: Image.asset(MaskGrou),
      ),
      title: Text(
        "ampae (Title Track)",
        style: TextStyle(color: textcolor),
      ),
      subtitle: Text(
        "Rampage 2016",
        style: TextStyle(color: subtext, fontSize: 12),
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background,
      body: Column(
        children: [
          Image.asset(
            tune7logoweb,
            width: 110,
            height: 140,
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Your Library",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 110,
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20.0))),
                  elevation: 5.0,
                  minWidth: 20,
                  height: 40,
                  splashColor: Colors.white,
                  textColor: Colors.white,
                  color: Colors.blue,
                  onPressed: () {},
                  child: Row(
                    children: [
                      Icon(
                        Icons.shop_outlined,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text("Go To Store")
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 3,
          ),
          Padding(
            padding: const EdgeInsets.only(right: 305),
            child: RoundedLinearProgress(
              width: 33,
              strokeWidth: 2.0,
              // bgColor: background,
              fgColor: Colors.blue,
              duration: Duration(seconds: 3),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30, right: 26),
            child: Text(
              "Here you will find music and album you have brought from our store.",
              style: TextStyle(color: subtext, fontWeight: FontWeight.bold),
            ),
          ),
          // SizedBox(height: 0,),
          Expanded(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 350,
              child: ListView.separated(
                // physics: NeverScrollableScrollPhysics(),
                itemCount: items.length,
                separatorBuilder: (context, index) {
                  final currentitems = items[index + 1];
                  return ListTile(
                    onTap: () {},
                    leading: currentitems.leading,
                    title: currentitems.title,
                    subtitle: currentitems.subtitle,
                    trailing: currentitems.trailing,
                  );
                },
                itemBuilder: (BuildContext context, int index) => Padding(
                  padding: const EdgeInsets.only(right: 15, left: 16),
                  child: Divider(
                    color: Colors.white38,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
