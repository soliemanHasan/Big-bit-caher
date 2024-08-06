import 'dart:async';
import 'package:big_bite_casher/core/utils/base_state.dart';
import 'package:big_bite_casher/modules/auth/domain/entities/user_entity.dart';
import 'package:big_bite_casher/modules/auth/domain/parameters/register_parameters.dart';
import 'package:big_bite_casher/modules/auth/domain/repository/auth_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'register_event.dart';

class RegisterBloc extends Bloc<RegisterEvent, BaseState<String>> {
  final AuthRepository authRepository;
  RegisterBloc(this.authRepository) : super(const BaseState<String>()) {
    on<RegisterButtonTappedEvent>(_register);
  }

  FutureOr<void> _register(RegisterButtonTappedEvent event, emit) async {
    emit(state.loading());
    final result = await authRepository.register(
      RegisterParameters(
          name: event.name,
          lastName: event.lastName,
          confirmPassword: event.confirmPassword,
          address: event.address,
          otherAddress: event.otherAddress,
          password: event.password,
          phoneNumber: event.phoneNumber),
    );
    result.fold((l) => emit(state.error(l)), (r) => emit(state.success(r)));
  }
}
