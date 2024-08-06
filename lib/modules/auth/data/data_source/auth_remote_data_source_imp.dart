import 'package:big_bite_casher/core/services/cache_storage_services.dart';
import 'package:big_bite_casher/modules/auth/domain/parameters/resend_code_parameters.dart';
import 'package:big_bite_casher/modules/auth/domain/parameters/verify_parameters.dart';

import '../../../../core/constants/apis_urls.dart';
import '../../../../core/services/api_services.dart';
// import '../../../../core/services/cache_storage_services.dart';
import '../../../../core/utils/app_response.dart';
import '../../domain/parameters/login_parameters.dart';
import '../../domain/parameters/register_parameters.dart';
import '../models/user_model.dart';
import 'auth_data_source.dart';

class AuthRemoteDataSourceImp extends AuthDataSource {
  @override
  Future<UserModel> login(LoginParameters parameters) async {
    AppResponse response = await ApiServices().post(
      ApisUrls().login,
      data: parameters.toJson(),
    );
    await CacheStorageServices().setToken(response.data['data']['token']);
    return UserModel.fromJson(response.data['data']['user']);
  }

  @override
  Future<String> register(RegisterParameters parameters) async {
    AppResponse response = await ApiServices().post(
      ApisUrls().register,
      data: parameters.toJson(),
    );
    return response.data["message"];
  }

  @override
  Future<UserModel> verifyCode(VerifyParameters parameters) async {
    AppResponse response = await ApiServices()
        .post(ApisUrls().verifyCode, data: parameters.toJson());
    return UserModel.fromJson(response.data["data"]);
  }

  @override
  Future<String> resendCode(ResendCodeParameters parameters) async {
    AppResponse response = await ApiServices()
        .post(ApisUrls().resendCode, data: parameters.toJson());
    return response.data["message"];
  }
}
