import 'package:flutter/material.dart';

class IconTitle extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  const IconTitle(
      {Key? key, required this.tileTitle, required this.iconImagePath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          iconImagePath,
          height: 35,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          tileTitle,
          style: const TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
