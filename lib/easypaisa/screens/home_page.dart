import 'package:different_designs/easypaisa/screens/more_with_easypaisa_screens/scroll_page_one.dart';
import 'package:different_designs/easypaisa/screens/more_with_easypaisa_screens/scroll_page_two.dart';
import 'package:different_designs/easypaisa/screens/my_account.dart';
import 'package:different_designs/easypaisa/utils/debit_card_tile.dart';
import 'package:different_designs/easypaisa/utils/promotion_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import '../utils/bottom_navigation_bar.dart';
import '../utils/customer_support_card.dart';
import '../utils/square_tile.dart';
import 'add_cash.dart';
import 'discover_mini_apps_screens/mini_app_screen_one.dart';

class EasyPaisaHomePage extends StatefulWidget {
  const EasyPaisaHomePage({Key? key}) : super(key: key);

  @override
  State<EasyPaisaHomePage> createState() => _EasyPaisaHomePageState();
}

class _EasyPaisaHomePageState extends State<EasyPaisaHomePage> {
  final _controllerOne = PageController();
  final _controllerTwo = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      bottomNavigationBar: const MyBottomNavigationBar(),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                height: 75,
                decoration: BoxDecoration(color: Colors.greenAccent[700]),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const MyAccountPage()));
                        },
                        child: const CircleAvatar(
                          radius: 25,
                          backgroundImage:
                              AssetImage('lib/easypaisa/assets/Pic.jpg'),
                        ),
                      ),
                      Text(
                        'easypaisa',
                        style: GoogleFonts.kanit().copyWith(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                      const Row(
                        children: [
                          Icon(
                            Icons.search,
                            color: Colors.white,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Icon(
                            Icons.notifications_none_rounded,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 203,
                decoration: const BoxDecoration(
                  color: Colors.green,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(13),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'easypaisa',
                                style: GoogleFonts.kanit().copyWith(
                                    fontSize: 26,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                              Row(
                                children: [
                                  Icon(
                                    Icons.circle,
                                    color: Colors.yellow[600],
                                  ),
                                  const SizedBox(
                                    width: 3,
                                  ),
                                  const Text(
                                    'My Rewards',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          const Text('Available balance'),
                          const SizedBox(
                            height: 3,
                          ),
                          Row(
                            children: [
                              Text(
                                'Rs.2,229.13',
                                style: GoogleFonts.kanit().copyWith(
                                    fontSize: 26,
                                    color: Colors.black87,
                                    fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                width: 5,
                              ),
                              const Icon(Icons.arrow_circle_right),
                            ],
                          ),
                          const SizedBox(
                            height: 4,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              InkWell(
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              const AddCashPage()));
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 22, vertical: 5),
                                  decoration: BoxDecoration(
                                    color: Colors.green,
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  child: const Center(
                                    child: Text(
                                      'Add cash',
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const Row(
                            children: [
                              Icon(Icons.refresh_rounded),
                              SizedBox(
                                width: 6,
                              ),
                              Text('Updated just now'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                child: Container(
                  height: 90,
                  decoration: const BoxDecoration(),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SquareTile(
                        iconImagePath: 'lib/easypaisa/assets/send_money.png',
                        tileTitle: 'Send Money',
                      ),
                      SquareTile(
                        iconImagePath: 'lib/easypaisa/assets/bill_payment.png',
                        tileTitle: 'Bill Payment',
                      ),
                      SquareTile(
                        iconImagePath:
                            'lib/easypaisa/assets/mobile_packages.png',
                        tileTitle: 'Mobile Package',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'More with easypaisa',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                  height: 310,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        Container(
                          height: 260,
                          child: PageView(
                            controller: _controllerOne,
                            scrollDirection: Axis.horizontal,
                            children: const [
                              ScrollPageOne(),
                              ScrollPageTwo(),
                            ],
                          ),
                        ),
                        SmoothPageIndicator(
                          controller: _controllerOne,
                          count: 2,
                          effect:
                              const WormEffect(activeDotColor: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Get your easypaisa Debit Card',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                  height: 150,
                  decoration: const BoxDecoration(
                      // color: Colors.green,
                      ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      DebitCardTile(
                        buttonTitle: 'Coming Soon',
                        cardColor: Colors.green.shade900,
                        debitCardTitle: 'Online Card',
                        subtitleOne: 'Only for Online',
                        subtitleTwo: 'Payments in Pakistan',
                      ),
                      const DebitCardTile(
                        buttonTitle: 'Manage Card',
                        cardColor: Colors.black87,
                        debitCardTitle: 'Plastic Card',
                        subtitleOne: 'Use at any ATM or Shop',
                        subtitleTwo: 'in Pakistan',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Promotions',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 135,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 5),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: const [
                      PromotionCard(),
                      PromotionCard(),
                      PromotionCard(),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  children: [
                    Text(
                      'Discover MiniApps on easypaisa',
                      style: TextStyle(fontWeight: FontWeight.bold),
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
                  height: 220,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 160,
                          child: PageView(
                            controller: _controllerTwo,
                            scrollDirection: Axis.horizontal,
                            children: const [
                              MiniAppScreenOne(),
                              MiniAppScreenOne(),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        SmoothPageIndicator(
                          controller: _controllerTwo,
                          count: 2,
                          effect:
                              const SwapEffect(activeDotColor: Colors.green),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  padding: EdgeInsets.only(top: 5, left: 10, right: 10),
                  height: 150,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomerSupportCard(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
