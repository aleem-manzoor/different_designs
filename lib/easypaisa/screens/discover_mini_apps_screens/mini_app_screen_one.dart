import 'package:flutter/material.dart';

import '../../utils/icon_title_column.dart';

class MiniAppScreenOne extends StatelessWidget {
  const MiniAppScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconTitle(
                tileTitle: 'Easyload',
                iconImagePath: 'lib/easypaisa/assets/bill_payment.png',
              ),
              IconTitle(
                tileTitle: 'Easyload',
                iconImagePath: 'lib/easypaisa/assets/mobile_packages.png',
              ),
              IconTitle(
                tileTitle: 'Easyload',
                iconImagePath: 'lib/easypaisa/assets/send_money.png',
              ),
              IconTitle(
                tileTitle: 'Easyload',
                iconImagePath: 'lib/easypaisa/assets/mobile_packages.png',
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          height: 70,
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconTitle(
                tileTitle: 'Easyload',
                iconImagePath: 'lib/easypaisa/assets/bill_payment.png',
              ),
              IconTitle(
                tileTitle: 'Easyload',
                iconImagePath: 'lib/easypaisa/assets/mobile_packages.png',
              ),
              IconTitle(
                tileTitle: 'Easyload',
                iconImagePath: 'lib/easypaisa/assets/send_money.png',
              ),
              IconTitle(
                tileTitle: 'Easyload',
                iconImagePath: 'lib/easypaisa/assets/mobile_packages.png',
              ),
            ],
          ),
        ),
        // SizedBox(
        //   height: 10,
        // ),
        // Container(
        //   height: 70,
        //   decoration: const BoxDecoration(
        //     color: Colors.white,
        //   ),
        //   child: const Row(
        //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
        //     children: [
        //       IconTitle(
        //         tileTitle: 'Easyload',
        //         iconImagePath: 'lib/easypaisa/assets/bill_payment.png',
        //       ),
        //       IconTitle(
        //         tileTitle: 'Easyload',
        //         iconImagePath: 'lib/easypaisa/assets/mobile_packages.png',
        //       ),
        //       IconTitle(
        //         tileTitle: 'Easyload',
        //         iconImagePath: 'lib/easypaisa/assets/send_money.png',
        //       ),
        //       IconTitle(
        //         tileTitle: 'Easyload',
        //         iconImagePath: 'lib/easypaisa/assets/send_money.png',
        //       ),
        //     ],
        //   ),
        // ),
      ],
    );
  }
}
