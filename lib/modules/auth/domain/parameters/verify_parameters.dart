import '../../../../core/utils/base_parameters.dart';

class VerifyParameters extends BaseParameters {
  final String otp;
  final String mobile;

  const VerifyParameters({
    required this.otp,
    required this.mobile,
  });

  @override
  Map<String, dynamic> toJson() =>
      {"mobile": mobile, "otp": otp};

  @override
  List<Object> get props => [mobile, otp];
}
