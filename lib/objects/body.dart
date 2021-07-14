import 'package:flutter/material.dart';
import 'package:telegram_ui/constraints.dart';
import 'package:telegram_ui/objects/profilepic.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        buildListTile(context, 'images/vm.jpg', 'Vera Level Memes', "08:59",
            "Wanted(2008) HD"),
        Divider(
          thickness: 0.3,
          indent: 93,
          color: grey,
        ),
        buildListTile(context, "images/jv.jpg", 'Jeeva Airtel', "10:08",
            "Nomadland.2020.720p"),
        Divider(
          thickness: 0.3,
          indent: 93,
          color: grey,
        ),
        buildListTile(
            context, "images/sr.jpg", 'Suriyakanth', "May 01", "Karnan"),
        Divider(
          thickness: 0.3,
          color: grey,
          indent: 93,
        ),
        buildListTile(
            context, "images/sm.jpg", "Single Machi", "June 02", "Movies")
      ],
    );
  }
}

ListTile buildListTile(
    BuildContext context, String url, String title, String time, String sub) {
  return ListTile(
    leading: FriendsDp(url: url),
    title: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(
          time,
          style: Theme.of(context).textTheme.headline4,
        ),
      ],
    ),
    subtitle: Text(
      sub,
      style: Theme.of(context).textTheme.headline3,
    ),
  );
}
