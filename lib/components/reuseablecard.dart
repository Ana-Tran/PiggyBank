import 'package:flutter/material.dart';

class ReuseableCard extends StatelessWidget {
  ReuseableCard({required this.colors, required this.cardText});
  final Color colors;
  final String cardText;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: colors,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Center(child: Text(cardText)),
    );
  }
}
