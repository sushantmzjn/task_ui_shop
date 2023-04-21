import 'package:flutter/material.dart';

class Bag {
  final int id;
  final String title;
  final String detail;
  final String rating;
  final String price;
  final String imageUrl;
  final Color color;

  Bag({
    required this.id,
    required this.title,
    required this.detail,
    required this.rating,
    required this.price,
    required this.imageUrl,
    required this.color,
  });

  factory Bag.fromJson(Map<String, dynamic> json) {
    return Bag(
      id: json['id'],
      title: json['title'],
      detail: json['detail'],
      rating: json['rating'],
      price: json['price'],
      imageUrl: json['imageUrl'],
      color: json['color'],
    );
  }
}

List<Bag> bags = [
  Bag(
      id: 1,
      title: 'Side Bag',
      detail:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      rating: '⭐⭐⭐⭐',
      price: 'Rs 2000',
      imageUrl: 'assets/images/bag_1.png',
      color: Color(0xFF3D82AE)),
  Bag(
      id: 2,
      title: 'Side Bag',
      detail:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      rating: '⭐⭐⭐⭐',
      price: 'Rs 4350',
      imageUrl: 'assets/images/bag_2.png',
      color: Color(0xFFD3A984)),
  Bag(
      id: 3,
      title: 'Side Bag',
      detail:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      rating: '⭐⭐⭐⭐',
      price: 'Rs 8000',
      imageUrl: 'assets/images/bag_3.png',
      color: Color(0xFF989493)),
  Bag(
      id: 4,
      title: 'Side Bag',
      detail:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      rating: '⭐⭐⭐⭐',
      price: 'Rs 2500',
      imageUrl: 'assets/images/bag_4.png',
      color: Color(0xFFE6B398)),
  Bag(
      id: 5,
      title: 'Side Bag',
      detail:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      rating: '⭐⭐⭐⭐',
      price: 'Rs 2500',
      imageUrl: 'assets/images/bag_5.png',
      color: Color(0xFFFB7883)),
  Bag(
      id: 6,
      title: 'Side Bag',
      detail:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      rating: '⭐⭐⭐⭐',
      price: 'Rs 2500',
      imageUrl: 'assets/images/bag_6.png',
      color: Color(0xFFAEAEAE)),
  Bag(
      id: 7,
      title: 'Side Bag',
      detail:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum is simply dummy text of the printing and typesetting industry.',
      rating: '⭐⭐⭐⭐',
      price: 'Rs 3085',
      imageUrl: 'assets/images/bag_1.png',
      color: Color(0xFF3D82AE)),
  Bag(
      id: 8,
      title: 'Side Bag',
      detail:
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry.Lorem Ipsum is simply dummy text of the printing and typesetting industry. ',
      rating: '⭐⭐⭐⭐',
      price: 'Rs 4000',
      imageUrl: 'assets/images/bag_2.png',
      color: Color(0xFFD3A984)),
];
