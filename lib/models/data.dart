import 'package:flutter/material.dart';

class Coffee {
  final String image, des;
  final double price;

  Coffee({required this.image, required this.des, required this.price});
}

List<Coffee> capuccino = [
  Coffee(image: "images/newcoffee.jpg", des: "With Oat Milk", price: 4.29),
  Coffee(image: "images/newcappuccino.jpg", des: "With Cinnamon Powder", price: 3.21),
  Coffee(image: "images/newcoffee.jpg", des: "With Chocolate Powder", price:  6.46),
  Coffee(image: "images/nicholas-grande-Hd36cpebWbQ-unsplash.jpg", des: "With Caramel Drizzle", price: 2.90),
];
List<Coffee> lattee = [
  Coffee(image: "images/newcoffee.jpg", des: "With Oat Milk", price: 4.29),
  Coffee(image: "images/newcappuccino.jpg", des: "With Cinnamon Powder", price: 3.21),
];
List<Coffee> espresso = [
  Coffee(image: "images/newcoffee.jpg", des: "With Oat Milk", price: 4.29),
  Coffee(image: "images/newcappuccino.jpg", des: "With Cinnamon Powder", price: 3.21),
  Coffee(image: "images/newcoffee.jpg", des: "With Chocolate Powder", price:  6.46),
];


