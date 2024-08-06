import 'dart:async';

import 'package:big_bite_casher/modules/auth/domain/parameters/resend_code_parameters.dart';
import 'package:big_bite_casher/modules/auth/domain/parameters/verify_parameters.dart';
import 'package:big_bite_casher/modules/auth/domain/repository/auth_repository.dart';
import 'package:big_bite_casher/modules/auth/presentation/blocs/verify/verify_state.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'verify_event.dart';

class VerifyBloc extends Bloc<VerifyEvent, VerifyState> {
  final AuthRepository authRepository;
  VerifyBloc(this.authRepository) : super(VerifyState()) {
    on<VerifyButtonTapedEvent>(_verify);
    on<ResendCodeButtonTapedEvent>(_resendCode);
  }
  FutureOr<void> _verify(
      VerifyButtonTapedEvent event, Emitter<VerifyState> emit) async {
    emit(VerifyLoadingState());
    final result = await authRepository
        .verifyCode(VerifyParameters(otp: event.otp, mobile: event.number));
    result.fold(
      (l) => emit(VerifyErrorState(l.toString())),
      (r) => emit(VerifySuccessState(r)),
    );
  }

  FutureOr<void> _resendCode(
      ResendCodeButtonTapedEvent event, Emitter<VerifyState> emit) async {
    emit(ResendCodeLoadingState());
    final result = await authRepository
        .resendCode(ResendCodeParameters(mobile: event.number));
    result.fold(
      (l) => emit(ResendCodeErrorState(l.toString())),
      (r) => emit(
        ResendCodeSuccessState(r),
      ),
    );
  }
}
