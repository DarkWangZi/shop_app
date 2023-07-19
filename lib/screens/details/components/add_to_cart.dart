import 'package:flutter/material.dart';
import 'package:shop_app/models/Product.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: Row(
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(right: kDefaultPaddin),
            height: 50,
            width: 58,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(18),
              border: Border.all(
                color: product.color,
              ),
            ),
            child: IconButton(
              icon: const Icon(Icons.shopping_cart_checkout),
              color: product.color,
              onPressed: () {},
            ),
          ),
          Expanded(
            child: SizedBox(
                height: 50,
                child: IconButton(
                  tooltip: 'Buy Now'.toUpperCase(),
                  onPressed: () {},
                  icon: const Icon(Icons.add_shopping_cart),
                  color: product.color,
                )),
          ),
        ],
      ),
    );
  }
}
