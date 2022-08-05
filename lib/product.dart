import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, id, size;
  final Color color;
  Product(
      {required this.id,
      required this.image,
      required this.description,
      required this.price,
      required this.title,
      required this.size,
      required this.color});
}

List<Product> products = [
  Product(
      id: 1,
      image: "assets/images/bag_1.png",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare.",
      price: 56,
      title: "Blue Bag",
      size: 12,
      color: Color(0xFF3D82AE)),
  Product(
      id: 2,
      image: "assets/images/bag_2.png",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare.",
      price: 400,
      title: "Brown Bag",
      size: 12,
      color: Colors.brown.shade500),
  Product(
      id: 3,
      image: "assets/images/bag_3.png",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare.",
      price: 200,
      title: "Blacky Bag",
      size: 12,
      color: Colors.grey.shade800),
  Product(
      id: 4,
      image: "assets/images/bag_4.png",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare.",
      price: 119,
      title: "Cowboy Bag",
      size: 12,
      color: Colors.orange.shade800),
  Product(
      id: 5,
      image: "assets/images/bag_5.png",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare.",
      price: 234,
      title: "Default Bag",
      size: 12,
      color: Colors.pinkAccent),
  Product(
      id: 6,
      image: "assets/images/bag_6.png",
      description:
          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi dictum vel lacus nec ornare.",
      price: 99,
      title: "Strange Bag",
      size: 12,
      color: Colors.black87),
];
