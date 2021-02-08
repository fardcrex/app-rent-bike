// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

// ignore: unused_element
  CancelledByUser cancelledByUser() {
    return const CancelledByUser();
  }

// ignore: unused_element
  ServerError serverError() {
    return const ServerError();
  }

// ignore: unused_element
  EmailAlreadyInUse emailAlreadyInUse() {
    return const EmailAlreadyInUse();
  }

// ignore: unused_element
  EmailNotExist emailNotExist() {
    return const EmailNotExist();
  }

// ignore: unused_element
  InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const InvalidEmailAndPasswordCombination();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult emailNotExist(),
    @required TResult invalidEmailAndPasswordCombination(),
  });
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult emailNotExist(),
    TResult invalidEmailAndPasswordCombination(),
    @required TResult orElse(),
  });
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult emailNotExist(EmailNotExist value),
    @required
        TResult invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
  });
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult emailNotExist(EmailNotExist value),
    TResult invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    @required TResult orElse(),
  });
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class $CancelledByUserCopyWith<$Res> {
  factory $CancelledByUserCopyWith(
          CancelledByUser value, $Res Function(CancelledByUser) then) =
      _$CancelledByUserCopyWithImpl<$Res>;
}

/// @nodoc
class _$CancelledByUserCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $CancelledByUserCopyWith<$Res> {
  _$CancelledByUserCopyWithImpl(
      CancelledByUser _value, $Res Function(CancelledByUser) _then)
      : super(_value, (v) => _then(v as CancelledByUser));

  @override
  CancelledByUser get _value => super._value as CancelledByUser;
}

/// @nodoc
class _$CancelledByUser implements CancelledByUser {
  const _$CancelledByUser();

  @override
  String toString() {
    return 'AuthFailure.cancelledByUser()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is CancelledByUser);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult emailNotExist(),
    @required TResult invalidEmailAndPasswordCombination(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(emailNotExist != null);
    assert(invalidEmailAndPasswordCombination != null);
    return cancelledByUser();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult emailNotExist(),
    TResult invalidEmailAndPasswordCombination(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult emailNotExist(EmailNotExist value),
    @required
        TResult invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(emailNotExist != null);
    assert(invalidEmailAndPasswordCombination != null);
    return cancelledByUser(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult emailNotExist(EmailNotExist value),
    TResult invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (cancelledByUser != null) {
      return cancelledByUser(this);
    }
    return orElse();
  }
}

abstract class CancelledByUser implements AuthFailure {
  const factory CancelledByUser() = _$CancelledByUser;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;
}

/// @nodoc
class _$ServerError implements ServerError {
  const _$ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult emailNotExist(),
    @required TResult invalidEmailAndPasswordCombination(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(emailNotExist != null);
    assert(invalidEmailAndPasswordCombination != null);
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult emailNotExist(),
    TResult invalidEmailAndPasswordCombination(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult emailNotExist(EmailNotExist value),
    @required
        TResult invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(emailNotExist != null);
    assert(invalidEmailAndPasswordCombination != null);
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult emailNotExist(EmailNotExist value),
    TResult invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements AuthFailure {
  const factory ServerError() = _$ServerError;
}

/// @nodoc
abstract class $EmailAlreadyInUseCopyWith<$Res> {
  factory $EmailAlreadyInUseCopyWith(
          EmailAlreadyInUse value, $Res Function(EmailAlreadyInUse) then) =
      _$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailAlreadyInUseCopyWith<$Res> {
  _$EmailAlreadyInUseCopyWithImpl(
      EmailAlreadyInUse _value, $Res Function(EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as EmailAlreadyInUse));

  @override
  EmailAlreadyInUse get _value => super._value as EmailAlreadyInUse;
}

/// @nodoc
class _$EmailAlreadyInUse implements EmailAlreadyInUse {
  const _$EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult emailNotExist(),
    @required TResult invalidEmailAndPasswordCombination(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(emailNotExist != null);
    assert(invalidEmailAndPasswordCombination != null);
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult emailNotExist(),
    TResult invalidEmailAndPasswordCombination(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult emailNotExist(EmailNotExist value),
    @required
        TResult invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(emailNotExist != null);
    assert(invalidEmailAndPasswordCombination != null);
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult emailNotExist(EmailNotExist value),
    TResult invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class EmailAlreadyInUse implements AuthFailure {
  const factory EmailAlreadyInUse() = _$EmailAlreadyInUse;
}

/// @nodoc
abstract class $EmailNotExistCopyWith<$Res> {
  factory $EmailNotExistCopyWith(
          EmailNotExist value, $Res Function(EmailNotExist) then) =
      _$EmailNotExistCopyWithImpl<$Res>;
}

/// @nodoc
class _$EmailNotExistCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements $EmailNotExistCopyWith<$Res> {
  _$EmailNotExistCopyWithImpl(
      EmailNotExist _value, $Res Function(EmailNotExist) _then)
      : super(_value, (v) => _then(v as EmailNotExist));

  @override
  EmailNotExist get _value => super._value as EmailNotExist;
}

/// @nodoc
class _$EmailNotExist implements EmailNotExist {
  const _$EmailNotExist();

  @override
  String toString() {
    return 'AuthFailure.emailNotExist()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is EmailNotExist);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult emailNotExist(),
    @required TResult invalidEmailAndPasswordCombination(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(emailNotExist != null);
    assert(invalidEmailAndPasswordCombination != null);
    return emailNotExist();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult emailNotExist(),
    TResult invalidEmailAndPasswordCombination(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailNotExist != null) {
      return emailNotExist();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult emailNotExist(EmailNotExist value),
    @required
        TResult invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(emailNotExist != null);
    assert(invalidEmailAndPasswordCombination != null);
    return emailNotExist(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult emailNotExist(EmailNotExist value),
    TResult invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (emailNotExist != null) {
      return emailNotExist(this);
    }
    return orElse();
  }
}

abstract class EmailNotExist implements AuthFailure {
  const factory EmailNotExist() = _$EmailNotExist;
}

/// @nodoc
abstract class $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory $InvalidEmailAndPasswordCombinationCopyWith(
          InvalidEmailAndPasswordCombination value,
          $Res Function(InvalidEmailAndPasswordCombination) then) =
      _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements $InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  _$InvalidEmailAndPasswordCombinationCopyWithImpl(
      InvalidEmailAndPasswordCombination _value,
      $Res Function(InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as InvalidEmailAndPasswordCombination));

  @override
  InvalidEmailAndPasswordCombination get _value =>
      super._value as InvalidEmailAndPasswordCombination;
}

/// @nodoc
class _$InvalidEmailAndPasswordCombination
    implements InvalidEmailAndPasswordCombination {
  const _$InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object>({
    @required TResult cancelledByUser(),
    @required TResult serverError(),
    @required TResult emailAlreadyInUse(),
    @required TResult emailNotExist(),
    @required TResult invalidEmailAndPasswordCombination(),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(emailNotExist != null);
    assert(invalidEmailAndPasswordCombination != null);
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object>({
    TResult cancelledByUser(),
    TResult serverError(),
    TResult emailAlreadyInUse(),
    TResult emailNotExist(),
    TResult invalidEmailAndPasswordCombination(),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object>({
    @required TResult cancelledByUser(CancelledByUser value),
    @required TResult serverError(ServerError value),
    @required TResult emailAlreadyInUse(EmailAlreadyInUse value),
    @required TResult emailNotExist(EmailNotExist value),
    @required
        TResult invalidEmailAndPasswordCombination(
            InvalidEmailAndPasswordCombination value),
  }) {
    assert(cancelledByUser != null);
    assert(serverError != null);
    assert(emailAlreadyInUse != null);
    assert(emailNotExist != null);
    assert(invalidEmailAndPasswordCombination != null);
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object>({
    TResult cancelledByUser(CancelledByUser value),
    TResult serverError(ServerError value),
    TResult emailAlreadyInUse(EmailAlreadyInUse value),
    TResult emailNotExist(EmailNotExist value),
    TResult invalidEmailAndPasswordCombination(
        InvalidEmailAndPasswordCombination value),
    @required TResult orElse(),
  }) {
    assert(orElse != null);
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory InvalidEmailAndPasswordCombination() =
      _$InvalidEmailAndPasswordCombination;
}
