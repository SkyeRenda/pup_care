import 'dart:convert';

import 'package:flutter/foundation.dart';

import 'package:pup_care/models/pet.dart';
import 'package:pup_care/models/product.dart';

class Owner {
  String name = 'defaultName';
  String emailAddress = 'default Adress';
  List<Pet> petList;
  List<Product> productList;
  Owner({
    required this.name,
    required this.emailAddress,
    required this.petList,
    required this.productList,
  });

  Owner copyWith({
    String? name,
    String? emailAddress,
    List<Pet>? petList,
    List<Product>? productList,
  }) {
    return Owner(
      name: name ?? this.name,
      emailAddress: emailAddress ?? this.emailAddress,
      petList: petList ?? this.petList,
      productList: productList ?? this.productList,
    );
  }

  Map<String, dynamic> toMap() {
    final result = <String, dynamic>{};

    result.addAll({'name': name});
    result.addAll({'emailAddress': emailAddress});
    result.addAll({'petList': petList.map((x) => x.toMap()).toList()});
    result.addAll({'productList': productList.map((x) => x.toMap()).toList()});

    return result;
  }

  factory Owner.fromMap(Map<String, dynamic> map) {
    return Owner(
      name: map['name'] ?? '',
      emailAddress: map['emailAddress'] ?? '',
      petList: List<Pet>.from(map['petList']?.map((x) => Pet.fromMap(x))),
      productList: List<Product>.from(
          map['productList']?.map((x) => Product.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Owner.fromJson(String source) => Owner.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Owner(name: $name, emailAddress: $emailAddress, petList: $petList, productList: $productList)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Owner &&
        other.name == name &&
        other.emailAddress == emailAddress &&
        listEquals(other.petList, petList) &&
        listEquals(other.productList, productList);
  }

  @override
  int get hashCode {
    return name.hashCode ^
        emailAddress.hashCode ^
        petList.hashCode ^
        productList.hashCode;
  }
}
