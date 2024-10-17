import 'package:different_designs/easypaisa/screens/home_page.dart';
import 'package:different_designs/easypaisa/utils/my_account_tile.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/account_level_tile.dart';
import '../utils/reuseable_list_tile.dart';
import 'account_level.dart';
import 'account_settings.dart';

class MyAccountPage extends StatelessWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        // iconTheme: const IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        elevation: 0,
        toolbarHeight: 50.0,

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
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'My Account',
                          style: GoogleFonts.kanit().copyWith(
                              fontSize: 24,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 3,
                        ),
                        const Text(
                          'Profile, Settings & More',
                          style: TextStyle(fontSize: 12),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Container(
                          height: 23,
                          width: 100,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade300,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Row(
                            children: [
                              Container(
                                width: 55,
                                decoration: BoxDecoration(
                                  color: Colors.green,
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                child: const Center(
                                  child: Text(
                                    'Eng',
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 6,
                              ),
                              const Text('Urdu'),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        const Text(
                          'Version V.2.9.29',
                          style: TextStyle(fontSize: 15, color: Colors.grey),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  height: 140,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: const MyAccountTile(),
                ),
              ),
              const SizedBox(height: 20),
              const ReuseAbleListTile(
                title: 'Upgrade Account',
                leadingIcon: Icon(
                  Icons.upgrade,
                  color: Colors.green,
                  size: 27,
                ),
              ),
              ReuseAbleListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountLevelScreen()));
                },
                title: 'Account Level',
                leadingIcon: const Icon(
                  Icons.manage_accounts_outlined,
                  color: Colors.green,
                  size: 25,
                ),
              ),
              ReuseAbleListTile(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AccountSettingPage()));
                },
                title: 'Account Settings',
                leadingIcon: const Icon(
                  Icons.settings,
                  color: Colors.green,
                  size: 25,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Transaction History',
                leadingIcon: Icon(
                  Icons.location_history_outlined,
                  color: Colors.green,
                  size: 24,
                ),
              ),
              const ReuseAbleListTile(
                title: 'My Wallet',
                leadingIcon: Icon(
                  Icons.wallet,
                  color: Colors.green,
                  size: 24,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Goals & Rewards',
                leadingIcon: Icon(
                  Icons.perm_media_outlined,
                  color: Colors.green,
                  size: 23,
                ),
              ),
              const ReuseAbleListTile(
                title: 'My Approvals',
                leadingIcon: Icon(
                  Icons.approval,
                  color: Colors.green,
                  size: 25,
                ),
              ),
              const ReuseAbleListTile(
                title: 'My Favorites',
                leadingIcon: Icon(
                  Icons.favorite_outline_sharp,
                  color: Colors.green,
                  size: 25,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Become An Easypaisa Merchant',
                leadingIcon: Icon(
                  Icons.qr_code,
                  color: Colors.green,
                  size: 25,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Tax Certificate',
                leadingIcon: Icon(
                  Icons.checklist_rtl_outlined,
                  color: Colors.green,
                  size: 25,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 30),
                child: Row(
                  children: [
                    Text(
                      'HELP',
                      style: TextStyle(fontSize: 19),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const ReuseAbleListTile(
                title: 'Customer Support',
                leadingIcon: Icon(
                  Icons.support_agent_outlined,
                  color: Colors.green,
                  size: 25,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Fee Details',
                leadingIcon: Icon(
                  Icons.feedback_outlined,
                  color: Colors.green,
                  size: 25,
                ),
              ),
              const ReuseAbleListTile(
                title: 'Helps & FAQs',
                leadingIcon: Icon(
                  Icons.help_outline,
                  color: Colors.green,
                  size: 25,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
