import 'package:flutter/material.dart';

class DataList {
  static const List<String> iconNames = [
    'Income',
    'Expense',
    'Budget',
    'Spending'
  ];
  static const List<IconData> iconData = [
    Icons.account_balance,
    Icons.add_chart_outlined,
    Icons.calculate_outlined,
    Icons.data_thresholding_outlined
  ];
  static const List<String> expenseList = [
    'Netflix',
    'Spotify',
    'Amazon',
    'Apple',
    'Rogers'
  ];
  static const List<IconData> expenseIcon = [
    Icons.tv,
    Icons.music_note_sharp,
    Icons.shop,
    Icons.apple,
    Icons.phone_android
  ];
  static const List<String> expenseSubText = [
    'September 31, 2023',
    'September 1, 2023',
    'August 6, 2023',
    'July 15, 2023',
    'July 1, 2023',
  ];
  static const List<String> expenseCost = [
    '-\$21.99',
    '-\$5.99',
    '-\$9.99',
    '-\$130.99',
    '-\$61.75'
  ];
}
