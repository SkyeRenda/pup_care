abstract class Food {
  String brand = 'default brand';
  String product = 'default product';
  String animalType = 'default animal type';
}

class Product extends Food {
  String productName = 'default product name';
  double portionSize = 0;
  double foodAmount = 0;
  int daysRemaining = 0;
}
