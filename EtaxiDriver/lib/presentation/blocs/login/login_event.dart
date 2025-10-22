import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_event.freezed.dart';

@freezed
abstract class LoginEvent with _$LoginEvent {
  const factory LoginEvent.phoneNumberChanged(String phoneNumber) = PhoneNumberChanged;
  const factory LoginEvent.sendOtpRequested() = SendOtpRequested;
  const factory LoginEvent.showOtpMethodSelection() = ShowOtpMethodSelection;
  const factory LoginEvent.hideOtpMethodSelection() = HideOtpMethodSelection;
}
