import 'package:flutter/material.dart';

class DebitCardTile extends StatelessWidget {
  final String debitCardTitle;
  final String subtitleOne;
  final String subtitleTwo;
  final String buttonTitle;
  final Color cardColor;

  const DebitCardTile({
    Key? key,
    required this.buttonTitle,
    required this.cardColor,
    required this.debitCardTitle,
    required this.subtitleOne,
    required this.subtitleTwo,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      decoration: BoxDecoration(
        color: cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding:
            const EdgeInsets.only(top: 20, left: 10, right: 10, bottom: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  debitCardTitle,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    // fontSize: 16,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  subtitleOne,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[600],
                    fontSize: 10,
                  ),
                ),
                const SizedBox(
                  height: 2,
                ),
                Text(
                  subtitleTwo,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.yellow[600],
                    fontSize: 10,
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Container(
                padding: const EdgeInsets.symmetric(vertical: 6),
                decoration: BoxDecoration(
                  // color: Colors.green,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(color: Colors.greenAccent, width: 1),
                ),
                child: Center(
                  child: Text(
                    buttonTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                    ),
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
