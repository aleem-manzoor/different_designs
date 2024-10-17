import 'package:flutter/material.dart';

class CustomerSupportCard extends StatelessWidget {
  const CustomerSupportCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          // crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Image.asset(
              width: 100,
              height: 100,
              'lib/easypaisa/assets/customer_service_one.png',
            ),
            // const SizedBox(
            //   width: 5,
            // ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Help & Customer Support',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 9,
                  ),
                  Text(
                    'Register a complaint or get quick help on queries related to easypaisa',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                      color: Colors.grey.shade600,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 95,
          ),
          child: Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(
              // horizontal: 30,
              vertical: 6,
            ),
            decoration: BoxDecoration(
// color: Colors.green,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.greenAccent, width: 1),
            ),
            child: const Center(
              child: Text(
                'Get Help',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
// Padding(
// padding: const EdgeInsets.symmetric(
// horizontal: 110,
// ),
// child: Row(
// // mainAxisAlignment: MainAxisAlignment.start,
// // crossAxisAlignment: CrossAxisAlignment.start,
// children: [
// Flexible(
// child: Container(
// // padding: EdgeInsets.symmetric(
// //   horizontal: 30,
// //   vertical: 6,
// // ),
// decoration: BoxDecoration(
// // color: Colors.green,
// borderRadius: BorderRadius.circular(12),
// border: Border.all(color: Colors.greenAccent, width: 1),
// ),
// child: const Center(
// child: Text(
// 'Get Help',
// style: TextStyle(
// color: Colors.black,
// fontSize: 10,
// ),
// ),
// ),
// ),
// ),
// ],
// ),
// ),
