import 'package:etaxi_user/core/utils/debouncer.dart';
import 'package:etaxi_user/core/utils/validate.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'login_event.dart';
import 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc() : super(const LoginState()) {
    on<PhoneNumberChanged>(_onPhoneNumberChanged, transformer: restartableDebounce<PhoneNumberChanged>(const Duration(milliseconds: 500)));
    on<SendOtpRequested>(_onSendOtpRequested);
  }

  void _onPhoneNumberChanged(PhoneNumberChanged event, Emitter<LoginState> emit) {
    final isValid = ValidateUtils.isValidVietnamesePhoneNumber(event.phoneNumber);
    emit(state.copyWith(phoneNumber: event.phoneNumber, isValidPhoneNumber: isValid));
  }

  void _onSendOtpRequested(SendOtpRequested event, Emitter<LoginState> emit) async {
    if (state.isLoading) return;
    emit(state.copyWith(isLoading: true));
    await Future.delayed(const Duration(seconds: 2));

    emit(state.copyWith(isLoading: false));
  }
}
