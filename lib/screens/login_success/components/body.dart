import 'package:ecommerce_app2/components/default_btn.dart';
import 'package:ecommerce_app2/screens/home/home_screen.dart';
import 'package:ecommerce_app2/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Image.asset(
          "assets/images/success.png",
          height: SizeConfig.screenHeight * 0.4,
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.04),
        Text(
          "Login Success",
          style: headingStyle,
        ),
        const Spacer(),
        SizedBox(
          width: SizeConfig.screenWidth * 0.6,
          child: DefaultButton(
            text: "Back to home",
            pressed: () => Navigator.pushNamed(context, HomeScreen.routeName),
          ),
        ),
        const Spacer(),
      ],
    );
  }
}
