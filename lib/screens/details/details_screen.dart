import 'package:flutter/material.dart';
import 'package:shop_app/constans.dart';
import 'package:shop_app/product.dart';
import 'package:shop_app/screens/details/components/bady.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({Key? key, required this.product}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: Bady(product: product),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: Icon(Icons.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),
        IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
        SizedBox(
          width: kDefaultPadding / 2,
        )
      ],
      backgroundColor: product.color,
      elevation: 0,
    );
  }
}
