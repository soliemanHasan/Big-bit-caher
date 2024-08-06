part of 'register_bloc.dart';

sealed class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterButtonTappedEvent extends RegisterEvent {
  final String name;
  final String lastName;
  final String address;
  final String otherAddress;
  final String password;
  final String confirmPassword;
  final String phoneNumber;

  const RegisterButtonTappedEvent({
    required this.name,
    required this.lastName,
    required this.confirmPassword,
    required this.address,
    required this.otherAddress,
    required this.password,
    required this.phoneNumber,
  });

   Map<String, dynamic> toJson() => {
        "f_name": name,
        "l_name": lastName,
        "main_address": address,
        "other_address": otherAddress,
        "confirm_password": confirmPassword,
        "password": password,
        "phoneNumber": phoneNumber,
      };
}
