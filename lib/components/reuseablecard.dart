import 'package:flutter/material.dart';
import 'package:piggybank/constants.dart';

class ReuseableCard extends StatelessWidget {
  const ReuseableCard(
      {super.key,
      required this.colors,
      required this.cardText,
      required this.iconData,
      required this.cardSubText});
  final Color colors;
  final String cardText;
  final String cardSubText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        boxShadow: [
          BoxShadow(
            blurRadius: 2.0,
            color: Colors.white30,
          ),
        ],
      ),
      child: Card(
        color: colors,
        elevation: 2,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Row(
          textDirection: TextDirection.ltr,
          children: [
            Icon(
              iconData,
              size: 30.0,
            ),
            const SizedBox(
              width: kMainCardPadding,
            ),
            Column(
              children: [
                Text(
                  cardText,
                ),
                const SizedBox(
                  height: 2.0,
                ),
                Text(cardSubText),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
