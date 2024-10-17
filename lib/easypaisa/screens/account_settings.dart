import 'package:different_designs/easypaisa/utils/reuseable_list_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AccountSettingPage extends StatelessWidget {
  const AccountSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
          ),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Account Settings',
                      style: GoogleFonts.kanit().copyWith(
                          fontSize: 24,
                          color: Colors.black87,
                          fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    const Text(
                      'Account info, Settings & More',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'ACCOUNT',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const ReuseAbleListTile(
                title: 'Account Information',
                leadingIcon: Icon(
                  Icons.person_outline,
                  color: Colors.green,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Change Easypaisa Account Pin',
                leadingIcon: Icon(
                  Icons.pin_outlined,
                  color: Colors.green,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Link Telenor Microsoft Bank',
                leadingIcon: Icon(
                  Icons.sd_card_outlined,
                  color: Colors.green,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Link Debit Card',
                leadingIcon: Icon(
                  Icons.credit_card_outlined,
                  color: Colors.green,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Get Your Tax Certificate',
                leadingIcon: Icon(
                  Icons.assignment_outlined,
                  color: Colors.green,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Become An Easypaisa Merchant',
                leadingIcon: Icon(
                  Icons.qr_code_2,
                  color: Colors.green,
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'GENERAL',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              const ReuseAbleListTile(
                title: 'Notifications',
                leadingIcon: Icon(
                  Icons.notifications_outlined,
                  color: Colors.green,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Finger Print/Face Login',
                leadingIcon: Icon(
                  Icons.fingerprint_outlined,
                  color: Colors.green,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
