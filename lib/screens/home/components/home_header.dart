import 'package:ecommerce_app2/screens/home/components/components.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const SearchField(),
          IconBtnWithCounter(
            icon: "assets/icons/Cart Icon.svg",
            pressed: () {},
          ),
          IconBtnWithCounter(
            icon: "assets/icons/Bell.svg",
            numOfItems: 3,
            pressed: () {},
          ),
        ],
      ),
    );
  }
}
