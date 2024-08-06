
import 'package:big_bite_casher/core/token/models/entities/token_entity.dart';

class TokenModel extends TokenEntity {
  const TokenModel(
      {required super.accessToken,
      required super.tokenType,
      required super.expiresIn});

  factory TokenModel.fromJson(Map<String, dynamic> json) {
    return TokenModel(
      accessToken: json['access_token'],
      tokenType: json['token_type'],
      expiresIn: json['expires_in'],
    );
  }
}
