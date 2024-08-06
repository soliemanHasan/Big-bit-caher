import 'package:big_bite_casher/core/token/models/entities/token_entity.dart';
import 'package:big_bite_casher/core/token/models/models/token_model.dart';
import 'package:dio/dio.dart';

import '../../constants/apis_urls.dart';
import '../../services/api_services.dart';
import '../../services/cache_storage_services.dart';
import '../../utils/app_response.dart';
import '../parameters/token_parameters.dart';

class TokenDataSource {
  Future<TokenEntity> refreshToken(TokenParameters parameters) async {
    AppResponse response = await ApiServices().post(
      ApisUrls().refreshToken,
      data: parameters.toJson(),
      headers: {
        'Content-Type': 'application/x-www-form-urlencoded',
        "Accept-Language": CacheStorageServices().language,
      },
      contentType: Headers.formUrlEncodedContentType,
    );
    await CacheStorageServices().setToken(response.data['access_token']);
    await CacheStorageServices()
        .setRefreshToken(response.data['refresh_token']);

    return TokenModel.fromJson(response.data);
  }
}
