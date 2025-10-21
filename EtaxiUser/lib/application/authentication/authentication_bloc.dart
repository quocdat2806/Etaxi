import 'package:etaxi_user/core/config/app_config.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'authentication_event.dart';
import 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc() : super(const AuthenticationState()) {
    on<CheckAuthStatus>(_onCheckAuthStatus);
    on<SetAuthenticated>(_onSetAuthenticated);
    on<Logout>(_onLogout);
  }

  static const String tokenKey = AppConfigs.tokenKey;

  Future<void> _onCheckAuthStatus(CheckAuthStatus event, Emitter<AuthenticationState> emit) async {
    try {

    } catch (_) {
    }
  }

  Future<void> _onSetAuthenticated(SetAuthenticated event, Emitter<AuthenticationState> emit) async {
    emit(const AuthenticationState(isAuthenticated: true));
  }

  Future<void> _onLogout(Logout event, Emitter<AuthenticationState> emit) async {
    try {

    } catch (e) {
      emit(const AuthenticationState());
    }
  }
}
