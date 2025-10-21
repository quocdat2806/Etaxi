// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LoginState _$LoginStateFromJson(Map<String, dynamic> json) => _LoginState(
  phoneNumber: json['phoneNumber'] as String? ?? '',
  selectedOtpMethod:
      $enumDecodeNullable(_$OtpMethodEnumMap, json['selectedOtpMethod']) ??
      OtpMethod.zalo,
  isLoading: json['isLoading'] as bool? ?? false,
  showOtpMethodSelection: json['showOtpMethodSelection'] as bool? ?? false,
  isValidPhoneNumber: json['isValidPhoneNumber'] as bool? ?? false,
);

Map<String, dynamic> _$LoginStateToJson(_LoginState instance) =>
    <String, dynamic>{
      'phoneNumber': instance.phoneNumber,
      'selectedOtpMethod': _$OtpMethodEnumMap[instance.selectedOtpMethod]!,
      'isLoading': instance.isLoading,
      'showOtpMethodSelection': instance.showOtpMethodSelection,
      'isValidPhoneNumber': instance.isValidPhoneNumber,
    };

const _$OtpMethodEnumMap = {OtpMethod.zalo: 'zalo', OtpMethod.sms: 'sms'};
