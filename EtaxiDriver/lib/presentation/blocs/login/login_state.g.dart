// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginState _$LoginStateFromJson(Map<String, dynamic> json) => _LoginState(
  phoneNumber: json['phoneNumber'] as String? ?? '',
  isLoading: json['isLoading'] as bool? ?? false,
  isValidPhoneNumber: json['isValidPhoneNumber'] as bool? ?? false,
);

Map<String, dynamic> _$LoginStateToJson(_LoginState instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'isLoading': instance.isLoading,
      'isValidPhoneNumber': instance.isValidPhoneNumber,
    };
