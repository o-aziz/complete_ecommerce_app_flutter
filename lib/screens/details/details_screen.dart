import 'package:ecommerce_app2/models/product_model.dart';
import 'package:ecommerce_app2/screens/details/components/components.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({Key? key}) : super(key: key);
  static String routeName = "/details";

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;

    return Scaffold(
      backgroundColor: const Color(0xfff5f6f9),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(80),
        child: CustomAppBar(
          rating: arguments.product.rating,
        ),
      ),
      body: Body(
        product: arguments.product,
      ),
    );
  }
}

class ProductDetailsArguments {
  final Product product;
  ProductDetailsArguments({required this.product});
}
