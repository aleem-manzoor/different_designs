import 'package:different_designs/easypaisa/utils/reuseable_list_tile.dart';
import 'package:flutter/material.dart';

class AddCashPage extends StatelessWidget {
  const AddCashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          'Add Cash',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        backgroundColor: Colors.white,
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
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 140,
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
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 15),
                    child: Row(
                      children: [
                        Container(
                          width: 250,
                          decoration: const BoxDecoration(color: Colors.white),
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Icon(
                                Icons.earbuds,
                                color: Colors.green,
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'easypaisa Mobile Account',
                                style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 6,
                              ),
                              Text(
                                'Rs. 12,064.13',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 25),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Row(
                                children: [
                                  Text(
                                    'View Transaction Limits',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  SizedBox(
                                    width: 4,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios_rounded,
                                    size: 12,
                                    color: Colors.green,
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Add Cash Options',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: 230,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyListTile(
                        title: 'Link Any Bank Account To Add Cash',
                        leadingIcon: 'lib/easypaisa/assets/bill_payment.png',
                        trailingIcon: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.green,
                        ),
                      ),
                      MyDivider(),
                      MyListTile(
                        title: 'Link Any Debit/Credit Card To Add Cash',
                        leadingIcon: 'lib/easypaisa/assets/bill_payment.png',
                        trailingIcon: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.green,
                        ),
                      ),
                      MyDivider(),
                      MyListTile(
                        title: 'Add Cash Via Bank Transfer',
                        leadingIcon: 'lib/easypaisa/assets/bill_payment.png',
                        trailingIcon: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Other Add Cash Options',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  height: 306,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade400,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyListTile(
                        title: 'Add Other Bank Cards',
                        leadingIcon: 'lib/easypaisa/assets/bill_payment.png',
                        trailingIcon: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.green,
                        ),
                      ),
                      MyDivider(),
                      MyListTile(
                        title: 'From Your Bank Account',
                        leadingIcon: 'lib/easypaisa/assets/bill_payment.png',
                        trailingIcon: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.green,
                        ),
                      ),
                      MyDivider(),
                      MyListTile(
                        title: 'From Easypaisa Shop',
                        leadingIcon: 'lib/easypaisa/assets/bill_payment.png',
                        trailingIcon: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.green,
                        ),
                      ),
                      MyDivider(),
                      MyListTile(
                        title: 'Get Easycash up to Rs. 10,000',
                        leadingIcon: 'lib/easypaisa/assets/bill_payment.png',
                        trailingIcon: Icon(
                          Icons.arrow_forward_ios,
                          size: 16,
                          color: Colors.green,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class MyListTile extends StatelessWidget {
  final String title;
  final String leadingIcon;
  final Icon trailingIcon;
  const MyListTile(
      {Key? key,
      required this.title,
      required this.leadingIcon,
      required this.trailingIcon})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        height: 25,
        width: 25,
        decoration: const BoxDecoration(color: Colors.white),
        child: Image.asset(leadingIcon),
      ),
      title: Text(
        title,
        style: const TextStyle(fontSize: 13),
      ),
      trailing: trailingIcon,
      horizontalTitleGap: -2.0,
    );
  }
}

class MyDivider extends StatelessWidget {
  const MyDivider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 35),
      child: Divider(
        color: Colors.grey.shade400,
        thickness: 1.0,
      ),
    );
  }
}
