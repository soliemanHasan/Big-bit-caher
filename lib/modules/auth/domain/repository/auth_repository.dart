import 'package:big_bite_casher/core/errors/failure.dart';
import 'package:big_bite_casher/modules/auth/domain/entities/user_entity.dart';
import 'package:big_bite_casher/modules/auth/domain/parameters/login_parameters.dart';
import 'package:big_bite_casher/modules/auth/domain/parameters/register_parameters.dart';
import 'package:big_bite_casher/modules/auth/domain/parameters/resend_code_parameters.dart';
import 'package:big_bite_casher/modules/auth/domain/parameters/verify_parameters.dart';
import 'package:dartz/dartz.dart';

abstract class AuthRepository {
  Future<Either<Failure, UserEntity>> login(LoginParameters parameters);
  Future<Either<Failure, String>> register(RegisterParameters parameters);
  Future<Either<Failure, UserEntity>> verifyCode(VerifyParameters parameters);
  Future<Either<Failure, String>> resendCode(ResendCodeParameters parameters);
}
