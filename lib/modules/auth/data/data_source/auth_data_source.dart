
import 'package:big_bite_casher/modules/auth/domain/parameters/resend_code_parameters.dart';
import 'package:big_bite_casher/modules/auth/domain/parameters/verify_parameters.dart';

import '../../domain/parameters/login_parameters.dart';
import '../../domain/parameters/register_parameters.dart';
import '../models/user_model.dart';

abstract class AuthDataSource {
  Future<UserModel> login(LoginParameters parameters);
  Future<String> register(RegisterParameters parameters);
  Future<UserModel> verifyCode(VerifyParameters parameters);
  Future<String> resendCode(ResendCodeParameters parameters);
}
