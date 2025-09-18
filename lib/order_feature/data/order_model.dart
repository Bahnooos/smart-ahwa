class OrderModel {
  String? _name = '';
  String? _drinkType = '';
  String? _specialInstructions = '';
  int? _numberOfOrder = 0;
  String get getCustomerName => _name ?? '';
  String get getDrinkName => _drinkType ?? '';
  String get getSpecialInstructions => _specialInstructions ?? '';
  int get totalOrders => _numberOfOrder ?? 0;
  set setCustomerName(String name) => _name = name;
  set setDrinkType(String drink) => _drinkType = drink;
  set setSpecialInstructions(String instruction) =>
      _specialInstructions = instruction;

  OrderModel(this._name, this._drinkType, this._specialInstructions);
}
