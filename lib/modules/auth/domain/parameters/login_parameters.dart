import '../../../../core/utils/base_parameters.dart';

class LoginParameters extends BaseParameters {
  final String phoneNumber;
  final String password;

  const LoginParameters({
    required this.phoneNumber,
    required this.password,
  });

  @override
  Map<String, dynamic> toJson() =>
      {"mobile": phoneNumber, "password": password};

  @override
  List<Object> get props => [phoneNumber, password];
}
