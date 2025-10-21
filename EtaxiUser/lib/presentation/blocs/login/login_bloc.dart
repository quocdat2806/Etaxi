import 'package:flutter_bloc/flutter_bloc.dart';
import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<PhoneNumberChanged>(_onPhoneNumberChanged);
    on<OtpMethodSelected>(_onOtpMethodSelected);
    on<SendOtpRequested>(_onSendOtpRequested);
    on<ShowOtpMethodSelection>(_onShowOtpMethodSelection);
    on<HideOtpMethodSelection>(_onHideOtpMethodSelection);
  }

  void _onPhoneNumberChanged(PhoneNumberChanged event, Emitter<LoginState> emit) {
    final isValid = _isValidPhoneNumber(event.phoneNumber);
    emit(state.copyWith(phoneNumber: event.phoneNumber, isValidPhoneNumber: isValid));
  }

  void _onOtpMethodSelected(OtpMethodSelected event, Emitter<LoginState> emit) {
    emit(state.copyWith(selectedOtpMethod: event.method));
  }

  void _onSendOtpRequested(SendOtpRequested event, Emitter<LoginState> emit) async {
    if (!state.isValidPhoneNumber) return;

    emit(state.copyWith(isLoading: true));

    // TODO: Implement actual OTP sending logic
    await Future.delayed(const Duration(seconds: 2));

    emit(state.copyWith(isLoading: false));
  }

  void _onShowOtpMethodSelection(ShowOtpMethodSelection event, Emitter<LoginState> emit) {
    emit(state.copyWith(showOtpMethodSelection: true));
  }

  void _onHideOtpMethodSelection(HideOtpMethodSelection event, Emitter<LoginState> emit) {
    emit(state.copyWith(showOtpMethodSelection: false));
  }

  bool _isValidPhoneNumber(String phoneNumber) {
    // Vietnamese phone number validation
    final cleaned = phoneNumber.replaceAll(RegExp(r'[^\d]'), '');
    return cleaned.length >= 9 && cleaned.length <= 11;
  }
}
