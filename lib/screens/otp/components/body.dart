import 'package:ecommerce_app2/constants.dart';
import 'package:ecommerce_app2/screens/otp/components/components.dart';
import 'package:ecommerce_app2/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
            EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Text(
                "OTP Verification",
                style: headingStyle,
              ),
              const Text("We sent your code to +1 898 860 ***"),
              buildTimer(),
              SizedBox(height: SizeConfig.screenHeight * 0.15),
              const OtpForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  // resend otp code:
                },
                child: const Text(
                  "Resend OTP code",
                  style: TextStyle(decoration: TextDecoration.underline),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text("This code will expire in "),
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0),
          duration: const Duration(seconds: 30),
          builder: (context, value, child) {
            // ignore: prefer_typing_uninitialized_variables
            var kValue;

            if (value.runtimeType == double) {
              kValue = value as double;
            }
            if (value.runtimeType == int) {
              kValue = value as int;
            }
            return Text(
              '00:${kValue.toInt()}',
              style: const TextStyle(
                color: kPrimaryColor,
              ),
            );
          },
          onEnd: () {},
        ),
      ],
    );
  }
}
