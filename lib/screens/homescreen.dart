import 'package:flutter/material.dart';
import 'package:piggybank/constants.dart';
import 'package:piggybank/screens/mainscreen.dart';

class HomeScreen extends StatelessWidget {
  static const String id = 'home_screen';
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: SafeArea(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text('PIGGY BANK', style: kHomeTextStyle),
                  const SizedBox(
                    height: kHomeSizedBoxHeight,
                  ),
                  //Illustration by "https://icons8.com/illustrations/author/zD2oqC8lLBBA" Icons 8 from "https://icons8.com/illustrations" Ouch!
                  const Image(
                    image: AssetImage('images/home_image.png'),
                  ),
                  const SizedBox(
                    height: kHomeSizedBoxHeight,
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        foregroundColor: kBeigeColor,
                        textStyle: kHomeTextButtonStyle),
                    child: const Text('START'),
                    onPressed: () {
                      Navigator.pushNamed(context, MainScreen.id);
                    },
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
