
import 'package:flutter/material.dart';

class Product{
  late Image image;
  late String title;
  late String price;

  late String size;
  late Color color;
  late bool isChecked;

  late String discount;
  late String brand;
  late bool isTrend;
  late bool isNew;
  late bool isSoon;
  late bool isDiscount;


  Product(this.image, this.title, this.size, this.price, this.color,
      this.isChecked);

  Product.offer(this.image, this.title, this.price, this.discount, this.brand,
      this.isTrend, this.isNew, this.isSoon, this.isDiscount);
}
