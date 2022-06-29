import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tunesevenui/colors/all%20colors.dart';
import '../Route_Navigation/routes.dart';
import '../Storage/secured_storage.dart';
import 'drawer_items.dart';

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Material(
      color: Colors.black,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(24.0, 80, 24, 0),
        child: Column(
          children: [
            headerWidget(),
            const SizedBox(
              height: 9,
            ),

            const SizedBox(
              height: 30,
            ),
            DrawerItem(
                name: 'Store',
                icon: Icons.local_grocery_store_outlined,
                onPressed: () {
                  Get.toNamed(RoutesClass.library);
                }),
            const SizedBox(
              height: 5,
            ),
            DrawerItem(
                name: 'Your Library',
                icon: Icons.format_line_spacing,
                onPressed: () {
                  Get.toNamed(RoutesClass.library);
                }),
            const SizedBox(
              height: 5,
            ),
            DrawerItem(
                name: 'My Playlist',
                icon: Icons.playlist_add_check_outlined,
                onPressed: () => onItemPressed(context, index: 2)),
            const SizedBox(
              height: 5,
            ),
            DrawerItem(
                name: 'Settings',
                icon: Icons.settings,
                onPressed: () => onItemPressed(context, index: 3)),

            const SizedBox(
              height: 6,
            ),
            DrawerItem(
                name: 'About Us',
                icon: Icons.play_arrow,
                onPressed: () => onItemPressed(context, index: 4)),
            const SizedBox(
              height: 100,
            ),
            // DrawerItem(
            //     name: 'Log out',
            //     icon: Icons.logout,
            //
            //
            //     onPressed: () => onItemPressed(context, index: 5)),

            GestureDetector(
              onTap: () async {
                int? a = await Securestorage.removeToken();
              },
              child: Padding(
                padding: const EdgeInsets.only(right: 180),
                child: Text(
                  ' LogOut',
                  style: TextStyle(
                      fontSize: 15,
                      color: Colors.red,
                      fontFamily: 'Louis George Cafe',
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ],
        ),
      ),
    ));
  }

  void onItemPressed(BuildContext context, {required int index}) {
    // Navigator.pop(context);

    // switch (index) {
    //   case 0:
    //     Navigator.push(
    //         context, MaterialPageRoute(builder: (context) => const People()));
    //     break;
    // }
  }

  Widget headerWidget() {
    return Padding(
      padding: const EdgeInsets.only(right: 120),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CircleAvatar(
            radius: 30,
            backgroundImage: AssetImage("assets/images/artistalbum02.png"),
          ),
          const SizedBox(
            height: 3,
          ),
          Text('Kripas Khatiwada',
              style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.white)),
          SizedBox(
            height: 8,
          ),
          Text('+9779860486269',
              style: TextStyle(
                  fontSize: 15, fontWeight: FontWeight.w800, color: subtext))
        ],
      ),
    );
  }
}
