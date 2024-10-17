import 'package:different_designs/easypaisa/screens/my_account.dart';
import 'package:flutter/material.dart';
import '../utils/account_level_tile.dart';
import '../utils/remaining_limits_column.dart';

class AccountLevelScreen extends StatelessWidget {
  const AccountLevelScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Account Level'),
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Account Level Tile
            Padding(
              padding: const EdgeInsets.only(top: 15, right: 20, left: 20),
              child: Container(
                height: 115,
                decoration: BoxDecoration(
                  color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: const AccountLevelTile(),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            // IBAN Container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 45,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'IBAN',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            'PK79TMFB0000000036262114',
                            style: TextStyle(
                                fontSize: 13, color: Colors.grey.shade700),
                          ),
                          const SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 18,
                            width: 55,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              border: Border.all(
                                  color: Colors.greenAccent, width: 1),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Copy',
                                  style: TextStyle(
                                      fontSize: 10, color: Colors.green),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            //  IBAN Description Line
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Text(
                    'Use it to receive funds from across the globe',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade700),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Easypaisa Account Level Container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Easypaisa Acount Level',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          const Icon(
                            Icons.shield,
                            color: Colors.yellow,
                            size: 30,
                          ),
                          const SizedBox(
                            width: 2,
                          ),
                          Text(
                            'Level 1',
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Icon(Icons.arrow_forward_ios_rounded,
                              size: 17, color: Colors.grey.shade700)
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            // Easypaisa Account Level Container Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'Upgrade your account level to unlock enhanced transaction limits',
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade700),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Current Balance Container
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 55,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade400,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Current Balance',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                      Row(
                        children: [
                          Text(
                            'Rs. 229.13',
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey.shade700),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            // Current Balance Container Description
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                children: [
                  Expanded(
                    child: Text(
                      'This is your current available balance',
                      style:
                          TextStyle(fontSize: 12, color: Colors.grey.shade700),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            //  Remaining Limits COntainer
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                height: 480,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        blurRadius: 3,
                        color: Colors.grey,
                      ),
                    ],
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(12),
                        topLeft: Radius.circular(12))),
                child: Padding(
                  padding: const EdgeInsets.all(15),
                  child: Column(
                    children: [
                      const Row(
                        children: [
                          Text(
                            'Remaining Limits for Easypaisa Wallet',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 14),
                          ),
                        ],
                      ),
                      const RemainingLimitsColumn(
                        limitName: 'Daily Sending Limit',
                        remainingLimit: '50,000',
                        totalLimit: '50,000',
                      ),
                      const RemainingLimitsColumn(
                        limitName: 'Monthly Sending Limit',
                        remainingLimit: '197,999',
                        totalLimit: '200,000',
                      ),
                      const RemainingLimitsColumn(
                        limitName: 'Yearly Sending Limit',
                        remainingLimit: '2,055,186',
                        totalLimit: '2,400,000',
                      ),
                      const RemainingLimitsColumn(
                        limitName: 'Daily Receiving Limit',
                        remainingLimit: '50,000',
                        totalLimit: '50,000',
                      ),
                      const RemainingLimitsColumn(
                        limitName: 'Monthly Receiving Limit',
                        remainingLimit: '197,999',
                        totalLimit: '200,000',
                      ),
                      const RemainingLimitsColumn(
                        limitName: 'Yearly Receiving Limit',
                        remainingLimit: '2,055,186',
                        totalLimit: '2,400,000',
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 50),
                        child: Container(
                          height: 46,
                          decoration: BoxDecoration(
                            color: Colors.green,
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: const Center(
                              child: Text(
                            'Upgrade Your Account',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold),
                          )),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
