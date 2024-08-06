part of 'verify_bloc.dart';

class VerifyEvent extends Equatable {
  const VerifyEvent();

  @override
  List<Object?> get props => [];
}

class VerifyButtonTapedEvent extends VerifyEvent {
  final String number;
  final String otp;
  const VerifyButtonTapedEvent({required this.number, required this.otp});
  @override
  List<Object?> get props => [number, otp];
}

class ResendCodeButtonTapedEvent extends VerifyEvent {
  final String number;
  const ResendCodeButtonTapedEvent(this.number);
  @override
  List<Object?> get props => [number];
}
