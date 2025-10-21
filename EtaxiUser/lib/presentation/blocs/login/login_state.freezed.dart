// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LoginState {

 String get phoneNumber; OtpMethod get selectedOtpMethod; bool get isLoading; bool get showOtpMethodSelection; bool get isValidPhoneNumber;
/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoginStateCopyWith<LoginState> get copyWith => _$LoginStateCopyWithImpl<LoginState>(this as LoginState, _$identity);

  /// Serializes this LoginState to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginState&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.selectedOtpMethod, selectedOtpMethod) || other.selectedOtpMethod == selectedOtpMethod)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showOtpMethodSelection, showOtpMethodSelection) || other.showOtpMethodSelection == showOtpMethodSelection)&&(identical(other.isValidPhoneNumber, isValidPhoneNumber) || other.isValidPhoneNumber == isValidPhoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,selectedOtpMethod,isLoading,showOtpMethodSelection,isValidPhoneNumber);

@override
String toString() {
  return 'LoginState(phoneNumber: $phoneNumber, selectedOtpMethod: $selectedOtpMethod, isLoading: $isLoading, showOtpMethodSelection: $showOtpMethodSelection, isValidPhoneNumber: $isValidPhoneNumber)';
}


}

/// @nodoc
abstract mixin class $LoginStateCopyWith<$Res>  {
  factory $LoginStateCopyWith(LoginState value, $Res Function(LoginState) _then) = _$LoginStateCopyWithImpl;
@useResult
$Res call({
 String phoneNumber, OtpMethod selectedOtpMethod, bool isLoading, bool showOtpMethodSelection, bool isValidPhoneNumber
});




}
/// @nodoc
class _$LoginStateCopyWithImpl<$Res>
    implements $LoginStateCopyWith<$Res> {
  _$LoginStateCopyWithImpl(this._self, this._then);

  final LoginState _self;
  final $Res Function(LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phoneNumber = null,Object? selectedOtpMethod = null,Object? isLoading = null,Object? showOtpMethodSelection = null,Object? isValidPhoneNumber = null,}) {
  return _then(_self.copyWith(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,selectedOtpMethod: null == selectedOtpMethod ? _self.selectedOtpMethod : selectedOtpMethod // ignore: cast_nullable_to_non_nullable
as OtpMethod,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showOtpMethodSelection: null == showOtpMethodSelection ? _self.showOtpMethodSelection : showOtpMethodSelection // ignore: cast_nullable_to_non_nullable
as bool,isValidPhoneNumber: null == isValidPhoneNumber ? _self.isValidPhoneNumber : isValidPhoneNumber // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LoginState].
extension LoginStatePatterns on LoginState {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoginState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoginState value)  $default,){
final _that = this;
switch (_that) {
case _LoginState():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoginState value)?  $default,){
final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phoneNumber,  OtpMethod selectedOtpMethod,  bool isLoading,  bool showOtpMethodSelection,  bool isValidPhoneNumber)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.phoneNumber,_that.selectedOtpMethod,_that.isLoading,_that.showOtpMethodSelection,_that.isValidPhoneNumber);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phoneNumber,  OtpMethod selectedOtpMethod,  bool isLoading,  bool showOtpMethodSelection,  bool isValidPhoneNumber)  $default,) {final _that = this;
switch (_that) {
case _LoginState():
return $default(_that.phoneNumber,_that.selectedOtpMethod,_that.isLoading,_that.showOtpMethodSelection,_that.isValidPhoneNumber);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phoneNumber,  OtpMethod selectedOtpMethod,  bool isLoading,  bool showOtpMethodSelection,  bool isValidPhoneNumber)?  $default,) {final _that = this;
switch (_that) {
case _LoginState() when $default != null:
return $default(_that.phoneNumber,_that.selectedOtpMethod,_that.isLoading,_that.showOtpMethodSelection,_that.isValidPhoneNumber);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LoginState implements LoginState {
  const _LoginState({this.phoneNumber = '', this.selectedOtpMethod = OtpMethod.zalo, this.isLoading = false, this.showOtpMethodSelection = false, this.isValidPhoneNumber = false});
  factory _LoginState.fromJson(Map<String, dynamic> json) => _$LoginStateFromJson(json);

@override@JsonKey() final  String phoneNumber;
@override@JsonKey() final  OtpMethod selectedOtpMethod;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool showOtpMethodSelection;
@override@JsonKey() final  bool isValidPhoneNumber;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoginStateCopyWith<_LoginState> get copyWith => __$LoginStateCopyWithImpl<_LoginState>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LoginStateToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoginState&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber)&&(identical(other.selectedOtpMethod, selectedOtpMethod) || other.selectedOtpMethod == selectedOtpMethod)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showOtpMethodSelection, showOtpMethodSelection) || other.showOtpMethodSelection == showOtpMethodSelection)&&(identical(other.isValidPhoneNumber, isValidPhoneNumber) || other.isValidPhoneNumber == isValidPhoneNumber));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,phoneNumber,selectedOtpMethod,isLoading,showOtpMethodSelection,isValidPhoneNumber);

@override
String toString() {
  return 'LoginState(phoneNumber: $phoneNumber, selectedOtpMethod: $selectedOtpMethod, isLoading: $isLoading, showOtpMethodSelection: $showOtpMethodSelection, isValidPhoneNumber: $isValidPhoneNumber)';
}


}

/// @nodoc
abstract mixin class _$LoginStateCopyWith<$Res> implements $LoginStateCopyWith<$Res> {
  factory _$LoginStateCopyWith(_LoginState value, $Res Function(_LoginState) _then) = __$LoginStateCopyWithImpl;
@override @useResult
$Res call({
 String phoneNumber, OtpMethod selectedOtpMethod, bool isLoading, bool showOtpMethodSelection, bool isValidPhoneNumber
});




}
/// @nodoc
class __$LoginStateCopyWithImpl<$Res>
    implements _$LoginStateCopyWith<$Res> {
  __$LoginStateCopyWithImpl(this._self, this._then);

  final _LoginState _self;
  final $Res Function(_LoginState) _then;

/// Create a copy of LoginState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,Object? selectedOtpMethod = null,Object? isLoading = null,Object? showOtpMethodSelection = null,Object? isValidPhoneNumber = null,}) {
  return _then(_LoginState(
phoneNumber: null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,selectedOtpMethod: null == selectedOtpMethod ? _self.selectedOtpMethod : selectedOtpMethod // ignore: cast_nullable_to_non_nullable
as OtpMethod,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showOtpMethodSelection: null == showOtpMethodSelection ? _self.showOtpMethodSelection : showOtpMethodSelection // ignore: cast_nullable_to_non_nullable
as bool,isValidPhoneNumber: null == isValidPhoneNumber ? _self.isValidPhoneNumber : isValidPhoneNumber // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
