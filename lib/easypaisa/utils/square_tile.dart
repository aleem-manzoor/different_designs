import 'package:flutter/material.dart';

class SquareTile extends StatelessWidget {
  final String iconImagePath;
  final String tileTitle;
  const SquareTile(
      {Key? key, required this.iconImagePath, required this.tileTitle})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 95,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            blurRadius: 5,
            spreadRadius: 2,
            offset: Offset(1.0, 1.0),
          ),
        ],
      ),
      child: Column(
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
      ),
    );
  }
}
