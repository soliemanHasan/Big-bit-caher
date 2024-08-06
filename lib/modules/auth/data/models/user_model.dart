import 'package:big_bite_casher/modules/auth/domain/entities/user_entity.dart';

class UserModel extends UserEntity {
  const UserModel({
    required super.id,
    required super.firstName,
    required super.lastName,
    required super.mainAddress,
    required super.phoneNumber,
    required super.otherAddress,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      id: json['id'],
      firstName: json['f_name'],
      lastName: json['l_name'],
      mainAddress: json['main_address'],
      otherAddress: json['other_address']?? '',
      phoneNumber: json['mobile'],
    );
  }
}
