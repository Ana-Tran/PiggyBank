import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard(
      {required this.colors, required this.cardText, required this.iconData});
  final Color colors;
  final String cardText;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colors,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Icon(iconData),
          Text(cardText),
        ],
      ),
    );
  }
}
