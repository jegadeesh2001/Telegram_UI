import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:telegram_ui/constraints.dart';
import 'package:telegram_ui/objects/body.dart';

import 'package:telegram_ui/objects/profilepic.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: ListView(
        children: [
          Header(),
          buildListTile(context, group, "New Group"),
          buildListTile(context, person, "Contacts"),
          buildListTile(context, call, "Calls"),
          buildListTile(context, nearby, "People Nearby"),
          buildListTile(context, saved, "Saved Messages"),
          buildListTile(context, settings, "Settings"),
          Divider(
            thickness: 1,
            color: black,
          ),
          buildListTile(context, addPeople, "Invite Friends"),
          buildListTile(context, question, "Telegram Features")
        ],
      ),
    ));
  }
}

ListTile buildListTile(BuildContext context, IconData icon, String title) {
  return ListTile(
    contentPadding: EdgeInsets.only(left: 10),
    leading: FaIcon(icon),
    title: Text(
      title,
      style: Theme.of(context).textTheme.headline1,
    ),
  );
}

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  _HeaderState createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  bool counter = false;
  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      padding: EdgeInsets.all(0),
      child: Container(
        padding: EdgeInsets.all(10),
        color: Theme.of(context).appBarTheme.backgroundColor,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                UserDp(url: "images/dp.jpg"),
                IconButton(
                  onPressed: () {
                    counter ? counter = false : counter = true;

                    Get.changeThemeMode(
                        counter ? ThemeMode.dark : ThemeMode.light);
                  },
                  icon: FaIcon(
                    counter ? sun : moon,
                    color: white,
                    size: 25,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text("Jegadeesh", style: heading),
            Text(
              '+91 6374927353',
              style: subheading,
            ),
          ],
        ),
      ),
    );
  }
}
