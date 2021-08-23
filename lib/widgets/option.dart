import 'package:flutter/material.dart';
import '../theme.dart';

class Option extends StatefulWidget {
  @override
  _OptionState createState() => _OptionState();
}

class _OptionState extends State<Option> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    Widget option(int index, String title, String subtitle, String price) {
      return GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = index;
          });
        },
        child: Container(
          width: MediaQuery.of(context).size.width - (2 * 30),
          padding: EdgeInsets.all(14),
          decoration: BoxDecoration(
            color: selectedIndex == index ? lightorangeColor : whiteColor,
            borderRadius: BorderRadius.circular(14),
            border: Border.all(
              color: selectedIndex == index ? orangeColor : lightgreyColor,
            ),
          ),
          child: Row(
            children: [
              Container(
                width: 16,
                height: 16,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(selectedIndex == index ? 'assets/Checked.png' : 'assets/unchecked.png'),
                  ),
                ),
              ),
              SizedBox(
                width: 14,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: titleTextStyle,
                  ),
                  Text(
                    subtitle,
                    style: subtitleTextStyle,
                  ),
                ],
              ),
              Spacer(),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    price,
                    style: selectedIndex == index ? priceTextStyle.copyWith(color: orangeColor) : priceTextStyle,
                  ),
                ],
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        SizedBox(
          height: 44,
        ),
        option(0, 'Monthly', 'Pay monthly, cancel anytime', '\$20'),
        SizedBox(
          height: 16,
        ),
        option(1, 'Quarterly', 'Pay for 3 months', '\$55'),
        SizedBox(
          height: 16,
        ),
        option(2, 'Yearly', 'Pay for a full year', '\$200'),
        SizedBox(
          height: 30,
        ),
      ],
    );
  }
}
