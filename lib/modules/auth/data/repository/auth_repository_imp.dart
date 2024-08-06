import 'package:big_bite_casher/modules/auth/domain/parameters/resend_code_parameters.dart';
import 'package:big_bite_casher/modules/auth/domain/parameters/verify_parameters.dart';
import 'package:big_bite_casher/modules/auth/domain/repository/auth_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/errors/errors_handler.dart';
import '../../../../core/errors/failure.dart';
import '../../domain/entities/user_entity.dart';
import '../../domain/parameters/login_parameters.dart';
import '../../domain/parameters/register_parameters.dart';
import '../data_source/auth_data_source.dart';

class AuthRepositoryImp extends AuthRepository {
  final AuthDataSource authDataSource;
  AuthRepositoryImp(this.authDataSource);

  @override
  Future<Either<Failure, UserEntity>> login(LoginParameters parameters) {
    return ErrorsHandler.handleEither(() => authDataSource.login(parameters));
  }

  @override
  Future<Either<Failure, String>> register(RegisterParameters parameters) {
    return ErrorsHandler.handleEither(
        () => authDataSource.register(parameters));
  }

  @override
  Future<Either<Failure, UserEntity>> verifyCode(VerifyParameters parameters) {
    return ErrorsHandler.handleEither(
      () => authDataSource.verifyCode(parameters),
    );
  }

  @override
  Future<Either<Failure, String>> resendCode(ResendCodeParameters parameters) {
    return ErrorsHandler.handleEither(
      () => authDataSource.resendCode(parameters),
    );
  }
}
