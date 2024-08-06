import 'package:big_bite_casher/modules/auth/domain/entities/user_entity.dart';
import 'package:equatable/equatable.dart';

class VerifyState extends Equatable {
  @override
  List<Object?> get props => [];
}

class VerifyInitState extends VerifyState {}

class VerifyLoadingState extends VerifyState {}

class VerifyErrorState extends VerifyState {
  final String message;
  VerifyErrorState(this.message);
  @override
  List<Object?> get props => [message];
}

class VerifySuccessState extends VerifyState {
  final UserEntity userEntity;
  VerifySuccessState(this.userEntity);
  @override
  List<Object?> get props => [userEntity];
}

class ResendCodeInitState extends VerifyState {}

class ResendCodeLoadingState extends VerifyState {}

class ResendCodeErrorState extends VerifyState {
  final String message;
  ResendCodeErrorState(this.message);
  @override
  List<Object?> get props => [message];
}

class ResendCodeSuccessState extends VerifyState {
  final String message;
  ResendCodeSuccessState(this.message);
    @override
  List<Object?> get props => [message];
}
