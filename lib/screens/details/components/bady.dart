import 'package:flutter/material.dart';
import 'package:shop_app/constans.dart';
import 'package:shop_app/product.dart';

class Bady extends StatelessWidget {
  const Bady({Key? key, required this.product}) : super(key: key);
  final Product product;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height,
          child: Stack(children: [
            Container(
              margin: EdgeInsets.only(top: size.width * 0.6),
              padding: EdgeInsets.only(
                  top: size.width * 0.3,
                  left: kDefaultPadding,
                  right: kDefaultPadding),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24)),
                color: Colors.white,
              ),
              child: Column(children: [
                ColorAndSize(),
                SizedBox(
                  height: 30,
                ),
                Description(),
                SizedBox(
                  height: 30,
                ),
                AddRemoveHeart(),
                SizedBox(height: 30),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    children: [
                      Container(
                        height: 55,
                        width: 55,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border.all(color: product.color),
                            borderRadius: BorderRadius.circular(24)),
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: product.color,
                          size: 30,
                        ),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 55,
                        width: 225,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          color: product.color,
                        ),
                        child: Text(
                          "BUY NOW",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 20),
                        ),
                      )
                    ],
                  ),
                )
              ]),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Aristocratic Handbag",
                    style: TextStyle(color: Colors.white),
                  ),
                  Text(
                    product.title,
                    style: Theme.of(context).textTheme.headline4!.copyWith(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: kDefaultPadding / 10,
                  ),
                  Row(
                    children: [
                      RichText(
                          text: TextSpan(children: [
                        TextSpan(text: "Price\n"),
                        TextSpan(
                            text: "\$${product.price}",
                            style: Theme.of(context)
                                .textTheme
                                .headline4!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white))
                      ])),
                      SizedBox(
                        width: kDefaultPadding,
                      ),
                      Expanded(
                          child: Hero(
                              tag: "${product.id}",
                              child:
                                  Image.asset(product.image, fit: BoxFit.fill)))
                    ],
                  )
                ],
              ),
            )
          ]),
        )
      ]),
    );
  }

  Row AddRemoveHeart() {
    return Row(
      children: [
        Container(
          alignment: Alignment.center,
          height: 40,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
          child: Icon(Icons.remove),
        ),
        SizedBox(
          width: 10,
        ),
        Text(
          "01",
          style: TextStyle(
              fontSize: 20, fontWeight: FontWeight.bold, color: kTextColor),
        ),
        SizedBox(
          width: 10,
        ),
        Container(
          height: 40,
          width: 60,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
                bottomLeft: Radius.circular(12),
                bottomRight: Radius.circular(12)),
          ),
          child: Icon(Icons.add),
        ),
        Spacer(),
        Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(24),
                topRight: Radius.circular(24),
                bottomLeft: Radius.circular(24),
                bottomRight: Radius.circular(24)),
          ),
          child: Icon(
            Icons.favorite,
            color: Colors.white,
          ),
        ),
      ],
    );
  }

  Padding Description() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Text(
        product.description,
        style: TextStyle(height: 1.5),
      ),
    );
  }

  Row ColorAndSize() {
    return Row(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Color"),
            Row(
              children: [
                ColorDot(
                  color: Color(0xFF356C95),
                  isSelected: true,
                ),
                ColorDot(
                  color: Colors.orange,
                ),
                ColorDot(
                  color: Colors.grey,
                ),
              ],
            ),
          ],
        ),
        Spacer(),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Size"),
            Text(
              "${product.size} cm",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            )
          ],
        ),
        SizedBox(
          width: 100,
        )
      ],
    );
  }
}

class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelected;
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(2.5),
      height: 24,
      margin: EdgeInsets.only(
          top: kDefaultPadding / 4, right: kDefaultPadding / 10),
      width: 24,
      decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: isSelected ? color : Colors.transparent)),
      child: DecoratedBox(
          decoration: BoxDecoration(color: color, shape: BoxShape.circle)),
    );
  }
}
