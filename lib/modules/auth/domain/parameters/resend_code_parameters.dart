import '../../../../core/utils/base_parameters.dart';

class ResendCodeParameters extends BaseParameters {
 
  final String mobile;

  const ResendCodeParameters({
  
    required this.mobile,
  });

  @override
  Map<String, dynamic> toJson() =>
      {"mobile": mobile, };

  @override
  List<Object> get props => [mobile];
}
