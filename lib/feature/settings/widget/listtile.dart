import 'package:community_app/data/colors/colors.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget(
      {super.key,
      required this.icons,
      required this.title,
      required this.subTitle});

  final IconData icons;
  final String title;
  final String subTitle;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: const Color.fromARGB(255, 213, 213, 213),
        child: Icon(
          icons,
          color: const Color.fromARGB(255, 113, 112, 112),
        ),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
      ),
      subtitle: Text(
        subTitle,
        style: const TextStyle(
            fontSize: 15, fontWeight: FontWeight.w500, color: kGrey),
      ),
    );
  }
}
