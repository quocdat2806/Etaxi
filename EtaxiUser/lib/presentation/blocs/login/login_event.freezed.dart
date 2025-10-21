// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoginEvent {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoginEvent);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent()';
}


}

/// @nodoc
class $LoginEventCopyWith<$Res>  {
$LoginEventCopyWith(LoginEvent _, $Res Function(LoginEvent) __);
}


/// Adds pattern-matching-related methods to [LoginEvent].
extension LoginEventPatterns on LoginEvent {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( PhoneNumberChanged value)?  phoneNumberChanged,TResult Function( OtpMethodSelected value)?  otpMethodSelected,TResult Function( SendOtpRequested value)?  sendOtpRequested,TResult Function( ShowOtpMethodSelection value)?  showOtpMethodSelection,TResult Function( HideOtpMethodSelection value)?  hideOtpMethodSelection,required TResult orElse(),}){
final _that = this;
switch (_that) {
case PhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that);case OtpMethodSelected() when otpMethodSelected != null:
return otpMethodSelected(_that);case SendOtpRequested() when sendOtpRequested != null:
return sendOtpRequested(_that);case ShowOtpMethodSelection() when showOtpMethodSelection != null:
return showOtpMethodSelection(_that);case HideOtpMethodSelection() when hideOtpMethodSelection != null:
return hideOtpMethodSelection(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( PhoneNumberChanged value)  phoneNumberChanged,required TResult Function( OtpMethodSelected value)  otpMethodSelected,required TResult Function( SendOtpRequested value)  sendOtpRequested,required TResult Function( ShowOtpMethodSelection value)  showOtpMethodSelection,required TResult Function( HideOtpMethodSelection value)  hideOtpMethodSelection,}){
final _that = this;
switch (_that) {
case PhoneNumberChanged():
return phoneNumberChanged(_that);case OtpMethodSelected():
return otpMethodSelected(_that);case SendOtpRequested():
return sendOtpRequested(_that);case ShowOtpMethodSelection():
return showOtpMethodSelection(_that);case HideOtpMethodSelection():
return hideOtpMethodSelection(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( PhoneNumberChanged value)?  phoneNumberChanged,TResult? Function( OtpMethodSelected value)?  otpMethodSelected,TResult? Function( SendOtpRequested value)?  sendOtpRequested,TResult? Function( ShowOtpMethodSelection value)?  showOtpMethodSelection,TResult? Function( HideOtpMethodSelection value)?  hideOtpMethodSelection,}){
final _that = this;
switch (_that) {
case PhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that);case OtpMethodSelected() when otpMethodSelected != null:
return otpMethodSelected(_that);case SendOtpRequested() when sendOtpRequested != null:
return sendOtpRequested(_that);case ShowOtpMethodSelection() when showOtpMethodSelection != null:
return showOtpMethodSelection(_that);case HideOtpMethodSelection() when hideOtpMethodSelection != null:
return hideOtpMethodSelection(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function( String phoneNumber)?  phoneNumberChanged,TResult Function( OtpMethod method)?  otpMethodSelected,TResult Function()?  sendOtpRequested,TResult Function()?  showOtpMethodSelection,TResult Function()?  hideOtpMethodSelection,required TResult orElse(),}) {final _that = this;
switch (_that) {
case PhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that.phoneNumber);case OtpMethodSelected() when otpMethodSelected != null:
return otpMethodSelected(_that.method);case SendOtpRequested() when sendOtpRequested != null:
return sendOtpRequested();case ShowOtpMethodSelection() when showOtpMethodSelection != null:
return showOtpMethodSelection();case HideOtpMethodSelection() when hideOtpMethodSelection != null:
return hideOtpMethodSelection();case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function( String phoneNumber)  phoneNumberChanged,required TResult Function( OtpMethod method)  otpMethodSelected,required TResult Function()  sendOtpRequested,required TResult Function()  showOtpMethodSelection,required TResult Function()  hideOtpMethodSelection,}) {final _that = this;
switch (_that) {
case PhoneNumberChanged():
return phoneNumberChanged(_that.phoneNumber);case OtpMethodSelected():
return otpMethodSelected(_that.method);case SendOtpRequested():
return sendOtpRequested();case ShowOtpMethodSelection():
return showOtpMethodSelection();case HideOtpMethodSelection():
return hideOtpMethodSelection();case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function( String phoneNumber)?  phoneNumberChanged,TResult? Function( OtpMethod method)?  otpMethodSelected,TResult? Function()?  sendOtpRequested,TResult? Function()?  showOtpMethodSelection,TResult? Function()?  hideOtpMethodSelection,}) {final _that = this;
switch (_that) {
case PhoneNumberChanged() when phoneNumberChanged != null:
return phoneNumberChanged(_that.phoneNumber);case OtpMethodSelected() when otpMethodSelected != null:
return otpMethodSelected(_that.method);case SendOtpRequested() when sendOtpRequested != null:
return sendOtpRequested();case ShowOtpMethodSelection() when showOtpMethodSelection != null:
return showOtpMethodSelection();case HideOtpMethodSelection() when hideOtpMethodSelection != null:
return hideOtpMethodSelection();case _:
  return null;

}
}

}

/// @nodoc


class PhoneNumberChanged implements LoginEvent {
  const PhoneNumberChanged(this.phoneNumber);
  

 final  String phoneNumber;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PhoneNumberChangedCopyWith<PhoneNumberChanged> get copyWith => _$PhoneNumberChangedCopyWithImpl<PhoneNumberChanged>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PhoneNumberChanged&&(identical(other.phoneNumber, phoneNumber) || other.phoneNumber == phoneNumber));
}


@override
int get hashCode => Object.hash(runtimeType,phoneNumber);

@override
String toString() {
  return 'LoginEvent.phoneNumberChanged(phoneNumber: $phoneNumber)';
}


}

/// @nodoc
abstract mixin class $PhoneNumberChangedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $PhoneNumberChangedCopyWith(PhoneNumberChanged value, $Res Function(PhoneNumberChanged) _then) = _$PhoneNumberChangedCopyWithImpl;
@useResult
$Res call({
 String phoneNumber
});




}
/// @nodoc
class _$PhoneNumberChangedCopyWithImpl<$Res>
    implements $PhoneNumberChangedCopyWith<$Res> {
  _$PhoneNumberChangedCopyWithImpl(this._self, this._then);

  final PhoneNumberChanged _self;
  final $Res Function(PhoneNumberChanged) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? phoneNumber = null,}) {
  return _then(PhoneNumberChanged(
null == phoneNumber ? _self.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class OtpMethodSelected implements LoginEvent {
  const OtpMethodSelected(this.method);
  

 final  OtpMethod method;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OtpMethodSelectedCopyWith<OtpMethodSelected> get copyWith => _$OtpMethodSelectedCopyWithImpl<OtpMethodSelected>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OtpMethodSelected&&(identical(other.method, method) || other.method == method));
}


@override
int get hashCode => Object.hash(runtimeType,method);

@override
String toString() {
  return 'LoginEvent.otpMethodSelected(method: $method)';
}


}

/// @nodoc
abstract mixin class $OtpMethodSelectedCopyWith<$Res> implements $LoginEventCopyWith<$Res> {
  factory $OtpMethodSelectedCopyWith(OtpMethodSelected value, $Res Function(OtpMethodSelected) _then) = _$OtpMethodSelectedCopyWithImpl;
@useResult
$Res call({
 OtpMethod method
});




}
/// @nodoc
class _$OtpMethodSelectedCopyWithImpl<$Res>
    implements $OtpMethodSelectedCopyWith<$Res> {
  _$OtpMethodSelectedCopyWithImpl(this._self, this._then);

  final OtpMethodSelected _self;
  final $Res Function(OtpMethodSelected) _then;

/// Create a copy of LoginEvent
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? method = null,}) {
  return _then(OtpMethodSelected(
null == method ? _self.method : method // ignore: cast_nullable_to_non_nullable
as OtpMethod,
  ));
}


}

/// @nodoc


class SendOtpRequested implements LoginEvent {
  const SendOtpRequested();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SendOtpRequested);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.sendOtpRequested()';
}


}




/// @nodoc


class ShowOtpMethodSelection implements LoginEvent {
  const ShowOtpMethodSelection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ShowOtpMethodSelection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.showOtpMethodSelection()';
}


}




/// @nodoc


class HideOtpMethodSelection implements LoginEvent {
  const HideOtpMethodSelection();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HideOtpMethodSelection);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'LoginEvent.hideOtpMethodSelection()';
}


}




// dart format on
