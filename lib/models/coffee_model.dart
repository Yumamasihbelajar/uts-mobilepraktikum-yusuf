import 'dart:convert';
import 'package:flutter/services.dart';

class Coffee {
  final int id;
  final String name;
  final String category;
  final String origin;
  final String description;
  final int price;
  final double rating;
  final String imageUrl;

  Coffee({
    required this.id,
    required this.name,
    required this.category,
    required this.origin,
    required this.description,
    required this.price,
    required this.rating,
    required this.imageUrl,
  });

  factory Coffee.fromJson(Map<String, dynamic> json) {
    return Coffee(
      id: json['id'],
      name: json['name'],
      category: json['category'],
      origin: json['origin'],
      description: json['description'],
      price: json['price'],
      rating: json['rating'],
      imageUrl: json['imageUrl'],
    );
  }

  // Fungsi untuk membaca data dari file JSON lokal
  static Future<List<Coffee>> fetchCoffees() async {
    final String jsonString = await rootBundle.loadString('assets/data.json');
    final List<dynamic> jsonData = json.decode(jsonString);
    return jsonData.map((data) => Coffee.fromJson(data)).toList();
  }
}