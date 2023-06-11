import 'package:flutter/material.dart';
import 'package:piggybank/components/reuseablecard.dart';
import 'package:piggybank/constants.dart';
import 'package:piggybank/components/reusedablebutton.dart';
import 'package:piggybank/data/datalist.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const String id = 'main_screen';

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Expanded> buildButtons() {
    List<Expanded> iconOptions = [];
    for (int i = 0; i < DataList.iconNames.length; i++) {
      iconOptions.add(
        Expanded(
          child: Column(
            children: [
              ReuseableButton(
                icons: DataList.iconData[i],
                onClick: () {},
              ),
              Text(
                DataList.iconNames[i],
                style: kMainBtnTextStyle,
              )
            ],
          ),
        ),
      );
    }
    return iconOptions;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBackColor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ReuseableCard(
                  cardText: 'Card Balance', colors: kMainScreenColor),
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              child: Row(
                children: [...buildButtons()],
              ),
            ),
            SizedBox(height: kMainSizedBoxHeight),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      'Transactions',
                      textAlign: TextAlign.left,
                      style: kMainLblTextStyle,
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colors: Colors.white,
                      cardText: 'Expense 1',
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colors: Colors.white,
                      cardText: 'Expense 2',
                    ),
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: EdgeInsets.only(top: 10.0),
              padding: EdgeInsets.all(20.0),
              width: double.infinity,
              child: Text('Footer'),
            )
          ],
        ),
      ),
    );
  }
}
