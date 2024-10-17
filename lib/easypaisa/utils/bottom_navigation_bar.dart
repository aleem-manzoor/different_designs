import 'package:flutter/material.dart';

class MyBottomNavigationBar extends StatelessWidget {
  const MyBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      height: 60,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            children: [
              Icon(
                Icons.home_outlined,
                size: 22,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Home',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          SizedBox(),
          const Column(
            children: [
              Icon(
                Icons.location_on_outlined,
                size: 22,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Cash Points',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          Container(
            // padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
            height: 40,
            width: 40,
            decoration: BoxDecoration(
              color: Colors.green,
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Icon(
              Icons.qr_code,
              color: Colors.white,
              size: 22,
            ),
          ),
          const Column(
            children: [
              Icon(
                Icons.announcement_outlined,
                size: 22,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'Promotions',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
          const Column(
            children: [
              Icon(
                Icons.person_outline,
                size: 22,
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                'My Account',
                style: TextStyle(fontSize: 10),
              )
            ],
          ),
        ],
      ),
    );
  }
}
