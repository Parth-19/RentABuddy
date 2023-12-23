// ignore_for_file: must_be_immutable

part of 'otp_bloc.dart';

/// Represents the state of Otp in the application.
class OtpState extends Equatable {
  OtpState({
    this.enterotpController,
    this.otpModelObj,
  });

  TextEditingController? enterotpController;

  OtpModel? otpModelObj;

  @override
  List<Object?> get props => [
        enterotpController,
        otpModelObj,
      ];
  OtpState copyWith({
    TextEditingController? enterotpController,
    OtpModel? otpModelObj,
  }) {
    return OtpState(
      enterotpController: enterotpController ?? this.enterotpController,
      otpModelObj: otpModelObj ?? this.otpModelObj,
    );
  }
}
