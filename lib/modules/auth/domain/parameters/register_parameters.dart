import '../../../../core/utils/base_parameters.dart';

class RegisterParameters extends BaseParameters {
  final String name;
  final String lastName;
  final String address;
  final String otherAddress;
  final String password;
  final String confirmPassword;
  final String phoneNumber;

  const RegisterParameters({
    required this.name,
    required this.lastName,
    required this.confirmPassword,
    required this.address,
    required this.otherAddress,
    required this.password,
    required this.phoneNumber,
  });

  @override
  Map<String, dynamic> toJson() => {
        "f_name": name,
        "l_name": lastName,
        "main_address": address,
        "other_address": otherAddress,
        "confirm_password": confirmPassword,
        "password": password,
        "mobile": phoneNumber,
      };

  @override
  List<Object> get props => [name, password, phoneNumber];
}
