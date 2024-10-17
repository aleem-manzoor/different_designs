import 'package:flutter/material.dart';

class RemainingLimitsColumn extends StatelessWidget {
  final String limitName;
  final String remainingLimit;
  final String totalLimit;
  const RemainingLimitsColumn(
      {Key? key,
      required this.limitName,
      required this.remainingLimit,
      required this.totalLimit})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                limitName,
                style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
              ),
              Row(
                children: [
                  Text(
                    'Rs. $remainingLimit.00 / ',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade800),
                  ),
                  Text(
                    '$totalLimit.00',
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade500),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 4,
            decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.circular(12)),
            child: Row(
              children: [
                Container(
                  width: 138,
                  decoration: BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.circular(12)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
