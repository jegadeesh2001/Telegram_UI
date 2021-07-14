import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:telegram_ui/constraints.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text('Telegram', style: heading),
      actions: [
        IconButton(
          onPressed: () {},
          icon: FaIcon(search),
        ),
        SizedBox(width: 10)
      ],
    );
  }
}
