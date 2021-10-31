import 'package:ecommerce_app2/screens/home/components/components.dart';
import 'package:ecommerce_app2/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenWidth(20)),
            const HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const DiscountBanner(),
            SizedBox(height: getProportionateScreenWidth(30)),
            Categories(),
            const SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            const PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
