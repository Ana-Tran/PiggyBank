import 'package:flutter/material.dart';

const kBeigeColor = Color.fromARGB(255, 234, 231, 177);
const kPrimaryColor = Color.fromARGB(255, 60, 98, 85);
const kMainIconColor = Color.fromARGB(255, 43, 98, 221);
const kMainBackColor = Color.fromARGB(250, 250, 250, 250);
const kMainIncomeTextColor = Color.fromARGB(255, 222, 242, 252);
const kLightGreyTextColor = Color.fromARGB(255, 160, 160, 160);

const kHomeTextStyle = TextStyle(
  color: kBeigeColor,
  fontSize: 40.0,
  fontFamily: 'AlfaSlabOne',
);
const kHomeTextButtonStyle =
    TextStyle(fontSize: 25.0, fontFamily: 'RobotoSlab');
const kMainBtnTextStyle = TextStyle(
    fontFamily: 'PublicSans', fontSize: 12.0, fontWeight: FontWeight.bold);
const kMainLblTextStyle = TextStyle(
  color: kLightGreyTextColor,
);
const kMainIncomeTitleTextStyle = TextStyle(
    color: kMainIncomeTextColor,
    fontFamily: 'PublicSans',
    fontSize: 12.0,
    fontWeight: FontWeight.bold,
    letterSpacing: 2.0);
const kMainIncomeSubTextStyle = TextStyle(
    color: kMainIncomeTextColor, fontFamily: 'PublicSans', fontSize: 20.0);
const kTransactionSubTextStyle = TextStyle(
  fontFamily: 'PublicSans',
  fontSize: 10,
  color: kLightGreyTextColor,
);
const kTransactionMainTextStyle = TextStyle(
    fontSize: 15.0, fontWeight: FontWeight.bold, fontFamily: 'PublicSans');
const kTransactionCostTextStyle = TextStyle(color: Colors.red);

const kPaddingSize10 = 10.0;
const kPaddingSize20 = 20.0;
const kPaddingSize30 = 30.0;
const kMainContainerHeight = 200.0;
const kMainIncomeTextPadding =
    EdgeInsets.only(left: 10.0, top: 20.0, bottom: 5.0);
const kTransactionCardMargin =
    EdgeInsets.symmetric(horizontal: 13.0, vertical: 5.0);
