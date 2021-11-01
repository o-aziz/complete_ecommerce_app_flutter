import 'package:ecommerce_app2/components/components.dart';
import 'package:ecommerce_app2/models/product_model.dart';
import 'package:ecommerce_app2/screens/details/details_screen.dart';
import 'package:ecommerce_app2/screens/home/components/components.dart';
import 'package:flutter/material.dart';

import '../../../size_config.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(
          text: "Popular Product",
          pressed: () {},
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(children: [
            ...List.generate(
              demoProducts.length,
              (index) => ProductCard(
                product: demoProducts[index],
                pressed: () => Navigator.pushNamed(
                  context,
                  DetailsScreen.routeName,
                  arguments:
                      ProductDetailsArguments(product: demoProducts[index]),
                ),
              ),
            ),
            SizedBox(width: getProportionateScreenWidth(20))
          ]),
        ),
      ],
    );
  }
}
