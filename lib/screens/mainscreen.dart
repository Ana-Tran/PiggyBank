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

  List<Expanded> buildExpense() {
    List<Expanded> expenseList = [];
    for (int i = 0; i < DataList.expenseList.length; i++) {
      expenseList.add(
        Expanded(
          child: ReuseableCard(
            colors: Colors.white,
            cardText: DataList.expenseList[i],
            iconData: DataList.expenseIcon[i],
            cardSubText: DataList.expenseSubText[i],
            cardCost: DataList.expenseCost[i],
          ),
        ),
      );
    }
    return expenseList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kMainBackColor,
      body: SafeArea(
        child: Column(
          children: [
            Card(
              margin: const EdgeInsets.all(kPaddingSize10),
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(kPaddingSize20),
                ),
              ),
              child: Container(
                height: kMainContainerHeight,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: kMainIconColor,
                  borderRadius: BorderRadius.all(
                    Radius.circular(kPaddingSize20),
                  ),
                  image: DecorationImage(
                    fit: BoxFit.fitWidth,
                    image: AssetImage('images/cityscraper.png'),
                    alignment: Alignment(0.0, 1.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  textDirection: TextDirection.rtl,
                  children: const [
                    Padding(
                      padding: kMainIncomeTextPadding,
                      child: Text(
                        'ACCOUNT BALANCE',
                        style: kMainIncomeTitleTextStyle,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: kPaddingSize10),
                      child: Text(
                        '\$9,000.00',
                        style: kMainIncomeSubTextStyle,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              child: Row(
                children: [...buildButtons()],
              ),
            ),
            const SizedBox(height: kPaddingSize30),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: kPaddingSize10),
                    child: Text(
                      'Transactions',
                      textAlign: TextAlign.left,
                      style: kMainLblTextStyle,
                    ),
                  ),
                  Expanded(
                    child: ListView(
                      children: [...buildExpense()],
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
            ),
          ],
        ),
      ),
    );
  }
}
