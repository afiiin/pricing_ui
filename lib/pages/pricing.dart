import 'package:flutter/material.dart';
import '../theme.dart';
import '../widgets/option.dart';
import '../widgets/button.dart';

class Pricing extends StatefulWidget {
  @override
  _PricingState createState() => _PricingState();
}

class _PricingState extends State<Pricing> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 1.00,
                  height: MediaQuery.of(context).size.height * 0.40024630541,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/bg.png'),
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: MediaQuery.of(context).size.height * 0.225,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/gradient.png'),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    SizedBox(
                      height: 90,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 105,
                          height: 105,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/Icon.png'),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
            // End Of Top Banner
            Column(
              children: [
                Text(
                  'Flexible Plans',
                  style: headerTextStyle,
                ),
                SizedBox(
                  height: 16,
                ),
                Text(
                  'Choose a plan that works best\nfor you and your team',
                  style: subheaderTextStyle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Option(),
            Button(),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
