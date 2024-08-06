import '../../domain/entities/order_entity.dart';

class OrderModel extends OrderEntity {
  const OrderModel(
      {required super.id,
      required super.address,
      required super.drinks,
      required super.totalAmount,
      required super.type,
      required super.meals});

  factory OrderModel.fromJson(Map<String, dynamic> json) {
    List<MealModel> meals = [];
    json["meals"].forEach((meal) => meals.add(MealModel.fromJson(meal)));
    List<DrinkModel> drinks = [];
    json["drinks"].forEach((drink) => drinks.add(DrinkModel.fromJson(drink)));
    return OrderModel(
      id: json['id'],
      address: json['address'],
      totalAmount: json['total_amount'],
      drinks: drinks,
      meals: meals,
      type: json['type'],
    );
  }
}

class DrinkModel extends DrinkEntity {
  const DrinkModel(
      {required super.id, required super.name, required super.detailsEntity});

  factory DrinkModel.fromJson(Map<String, dynamic> json) {
    DetailsModel details;
    details = DetailsModel.fromJson(json["details"]);
    return DrinkModel(
        id: json["id"], name: json["name"], detailsEntity: details);
  }
}

class MealModel extends MealEntity {
  const MealModel({
    required super.id,
    required super.name,
    required super.details,
  });
  factory MealModel.fromJson(Map<String, dynamic> json) {
    DetailsModel details;
    details = DetailsModel.fromJson(json["details"]);
    return MealModel(
      id: json["id"],
      name: json["name"],
      details: details,
    );
  }
}

class DetailsModel extends DetailsEntity {
  const DetailsModel({required super.quantity, required, super.customizeNote});
  factory DetailsModel.fromJson(Map<String, dynamic> json) {
    return DetailsModel(
      quantity: json["quantity"],
    );
  }
}
