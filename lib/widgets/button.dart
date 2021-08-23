import 'package:flutter/material.dart';
import '../theme.dart';

class Button extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width - (2 * 30),
      height: 59,
      child: FlatButton(
        onPressed: () {},
        color: orangeColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14),
        ),
        child: Text(
          'Checkout Now',
          style: priceTextStyle.copyWith(
            color: whiteColor,
          ),
        ),
      ),
    );
  }
}
