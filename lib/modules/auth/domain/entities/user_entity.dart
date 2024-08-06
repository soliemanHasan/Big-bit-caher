import 'package:equatable/equatable.dart';

class UserEntity extends Equatable {
  final int id;
  final String firstName;
  final String lastName;
  final String mainAddress;
  final String phoneNumber;
  final String? otherAddress;

  const UserEntity(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.mainAddress,
      required this.phoneNumber,
      this.otherAddress});

  @override
  List<Object?> get props {
    return [id, firstName, lastName, mainAddress, otherAddress, phoneNumber];
  }
}
