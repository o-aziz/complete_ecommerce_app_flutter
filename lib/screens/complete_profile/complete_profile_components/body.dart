import 'package:ecommerce_app2/constants.dart';
import 'package:ecommerce_app2/screens/complete_profile/complete_profile_components/complete_profile_components.dart';
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
              SizedBox(height: SizeConfig.screenHeight * 0.02),
              Text(
                "Complete Profile",
                style: headingStyle,
              ),
              const Text(
                "Complete your details or continue \nwith social media",
                textAlign: TextAlign.center,
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              const CompleteProfileForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              const Text(
                "By continuing you confirm that you agree \nwith our term and condition",
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
