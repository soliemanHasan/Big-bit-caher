import 'package:equatable/equatable.dart';

class TokenParameters extends Equatable {
  final String token;

  const TokenParameters({
    required this.token,
  });

  Map<String, dynamic> toJson() => {
        "refresh_token": token,
        "client_id": 'ParkEase_Mobile',
        "grant_type": 'refresh_token',
        "scope": 'offline_access',
      };

  @override
  List<Object> get props => [token];
}
