import 'package:flutter/material.dart';

class ReuseableButton extends StatelessWidget {
  ReuseableButton({required this.icons, required this.onClick});
  final IconData icons;
  final VoidCallback onClick;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onClick,
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        padding: const EdgeInsets.all(10.0),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      child: Icon(icons),
    );
  }
}