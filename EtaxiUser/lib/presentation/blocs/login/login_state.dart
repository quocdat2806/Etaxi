import 'package:freezed_annotation/freezed_annotation.dart';
import 'login_event.dart';

part 'login_state.freezed.dart';
part 'login_state.g.dart';

@freezed
abstract class LoginState with _$LoginState {
  const factory LoginState({@Default('') String phoneNumber, @Default(OtpMethod.zalo) OtpMethod selectedOtpMethod, @Default(false) bool isLoading, @Default(false) bool showOtpMethodSelection, @Default(false) bool isValidPhoneNumber}) = _LoginState;

  factory LoginState.fromJson(Map<String, dynamic> json) => _$LoginStateFromJson(json);
}
