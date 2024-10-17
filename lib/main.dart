import 'package:flutter/material.dart';
import 'easypaisa/screens/account_level.dart';
import 'easypaisa/screens/add_cash.dart';
import 'easypaisa/screens/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: EasyPaisaHomePage(),
    );
  }
}
