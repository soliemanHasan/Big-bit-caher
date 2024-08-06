import 'package:equatable/equatable.dart';

class OrderEntity extends Equatable {
  final int id;
  final String? address;
  final String type;
  final List<MealEntity> meals;
  final String totalAmount;
  final List<DrinkEntity> drinks;

  const OrderEntity(
      {required this.id,
      this.address,
   required   this.drinks,
   required    this.meals,
      required this.totalAmount,
      required this.type,
      required});

  @override
  List<Object?> get props => [id, address, type, meals, totalAmount, drinks];
}

class MealEntity extends Equatable {
  final int id;
  final String name;
  final DetailsEntity details;
  const MealEntity(
      {required this.details, required this.id, required this.name});

  @override
  List<Object?> get props => [id, name, details];
}

class DrinkEntity extends Equatable {
  final int id;
  final String name;
  final DetailsEntity detailsEntity;
  const DrinkEntity(
      {required this.detailsEntity, required this.id, required this.name});

  @override
  List<Object?> get props => [id, name, detailsEntity];
}

class DetailsEntity extends Equatable {
  final int quantity;
  final String? customizeNote;
  const DetailsEntity({this.customizeNote, required this.quantity});

  @override
  List<Object?> get props => [quantity, customizeNote];
}
