import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:telegram_ui/constraints.dart';
import 'package:telegram_ui/objects/customAppBar.dart';
import 'package:telegram_ui/objects/profilepic.dart';

import 'objects/body.dart';
import 'objects/customDrawer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Telegram',
      theme: themeLight,
      darkTheme: themeDark,
      themeMode: ThemeMode.system,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(kToolbarHeight),
        child: CustomAppBar(),
      ),
      drawer: CustomDrawer(),
      body: Body(),
      floatingActionButton: FloatingActionButton(
        child: FaIcon(pencil),
        onPressed: () {},
      ),
    );
  }
}
