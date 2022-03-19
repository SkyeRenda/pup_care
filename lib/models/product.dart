import 'dart:convert';

import 'package:pup_care/models/food.dart';

class Product extends Food {
  String productName = 'default product name';
  double portionSize = 0;
  double foodAmount = 0;
  int daysRemaining = 0;
  Product({
    required this.productName,
    required this.portionSize,
    required this.foodAmount,
    required this.daysRemaining,
  }) : super(brand: "", animalType: "");

  Product copyWith({
    String? productName,
    double? portionSize,
    double? foodAmount,
    int? daysRemaining,
  }) {
    return Product(
      productName: productName ?? this.productName,
      portionSize: portionSize ?? this.portionSize,
      foodAmount: foodAmount ?? this.foodAmount,
      daysRemaining: daysRemaining ?? this.daysRemaining,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'productName': productName});
    result.addAll({'portionSize': portionSize});
    result.addAll({'foodAmount': foodAmount});
    result.addAll({'daysRemaining': daysRemaining});

    return result;
  }

  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      productName: map['productName'] ?? '',
      portionSize: map['portionSize']?.toDouble() ?? 0.0,
      foodAmount: map['foodAmount']?.toDouble() ?? 0.0,
      daysRemaining: map['daysRemaining']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Product.fromJson(String source) =>
      Product.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Product(productName: $productName, portionSize: $portionSize, foodAmount: $foodAmount, daysRemaining: $daysRemaining)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Product &&
        other.productName == productName &&
        other.portionSize == portionSize &&
        other.foodAmount == foodAmount &&
        other.daysRemaining == daysRemaining;
  }

  @override
  int get hashCode {
    return productName.hashCode ^
        portionSize.hashCode ^
        foodAmount.hashCode ^
        daysRemaining.hashCode;
  }
}
