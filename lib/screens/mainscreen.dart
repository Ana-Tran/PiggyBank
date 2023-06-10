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
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ReuseableCard(
                  cardText: 'Card Balance', colors: kMainCardColor),
            ),
            SizedBox(height: kHomeSizedBoxHeight),
            Expanded(
              child: Row(
                children: [...buildButtons()],
              ),
            ),
            Expanded(
              child: Column(
                children: [
                  Expanded(
                    child: ReuseableCard(
                      colors: kMainCardColor,
                      cardText: 'Expense 1',
                    ),
                  ),
                  Expanded(
                    child: ReuseableCard(
                      colors: kMainCardColor,
                      cardText: 'Expense 2',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
