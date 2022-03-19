abstract class Food {
  String brand = 'default brand';
  String animalType = 'default animal type';
  Food({
    required this.brand,
    required this.animalType,
  });

  @override
  String toString() => 'Food(brand: $brand, animalType: $animalType)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Food &&
        other.brand == brand &&
        other.animalType == animalType;
  }

  @override
  int get hashCode => brand.hashCode ^ animalType.hashCode;
}
