import 'package:flutter/material.dart';

class ReuseAbleListTile extends StatelessWidget {
  final String title;
  final Icon leadingIcon;
  final void Function()? onTap;
  const ReuseAbleListTile(
      {Key? key, required this.title, required this.leadingIcon, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          horizontalTitleGap: 0.0,
          onTap: onTap,
          leading: leadingIcon,
          contentPadding: const EdgeInsets.symmetric(horizontal: 23),
          title: Text(
            title,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            size: 21,
          ),
        ),
      ],
    );
  }
}
