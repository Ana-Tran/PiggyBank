import 'package:flutter/material.dart';
import 'package:piggybank/constants.dart';

class ReuseableCard extends StatelessWidget {
  const ReuseableCard(
      {super.key,
      required this.colors,
      required this.cardText,
      required this.iconData,
      required this.cardSubText,
      required this.cardCost});
  final Color colors;
  final String cardText;
  final String cardSubText;
  final String cardCost;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: kTransactionCardMargin,
      color: colors,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(kPaddingSize10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        textDirection: TextDirection.ltr,
        children: [
          Padding(
            padding: const EdgeInsets.all(kPaddingSize20),
            child: Icon(
              iconData,
              size: 30.0,
            ),
          ),
          const SizedBox(
            width: kPaddingSize10,
          ),
          Column(
            //textDirection: TextDirection.ltr,
            children: [
              Text(
                cardText,
                style: kTransactionMainTextStyle,
                textAlign: TextAlign.left,
                textDirection: TextDirection.ltr,
              ),
              const SizedBox(
                height: 2.0,
              ),
              Text(
                cardSubText,
                style: kTransactionSubTextStyle,
              ),
            ],
          ),
          Text(cardCost)
        ],
      ),
    );
  }
}
