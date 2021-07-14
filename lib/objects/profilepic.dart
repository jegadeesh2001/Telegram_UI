import 'package:flutter/material.dart';

class FriendsDp extends StatelessWidget {
  final String url;
  const FriendsDp({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: 60,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(url), fit: BoxFit.fill),
          shape: BoxShape.circle),
    );
  }
}

class UserDp extends StatelessWidget {
  final String url;
  const UserDp({Key? key, required this.url}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 80,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(url), fit: BoxFit.fill),
          shape: BoxShape.circle),
    );
  }
}
