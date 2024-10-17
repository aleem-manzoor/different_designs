import 'package:flutter/material.dart';

class PromotionCard extends StatelessWidget {
  const PromotionCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10),
      child: Image.asset(
        'lib/easypaisa/assets/promotion.jpg',
        width: 325,
        height: 170,
      ),
    );
  }
}
