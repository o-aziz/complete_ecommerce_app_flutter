import 'package:ecommerce_app2/components/components.dart';
import 'package:ecommerce_app2/models/product_model.dart';
import 'package:ecommerce_app2/screens/details/components/components.dart';
import 'package:ecommerce_app2/size_config.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key, required this.product}) : super(key: key);
  final Product product;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ProductImages(product: product),
          TopRoundedContainer(
            color: Colors.white,
            child: Column(
              children: [
                ProductDescription(
                  product: product,
                  pressed: () {},
                ),
                TopRoundedContainer(
                  color: const Color(0xfff6f7f9),
                  child: Column(
                    children: [
                      ColorDots(product: product),
                      TopRoundedContainer(
                          color: Colors.white,
                          child: Padding(
                            padding: EdgeInsets.only(
                              left: SizeConfig.screenWidth * 0.15,
                              right: SizeConfig.screenWidth * 0.15,
                              top: getProportionateScreenWidth(15),
                              bottom: getProportionateScreenWidth(40),
                            ),
                            child: DefaultButton(
                              text: "Add to Cart",
                              pressed: () {},
                            ),
                          ))
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
