// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failure.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function() app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function()? app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function()? app,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res> implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  final Failure _value;
  // ignore: unused_field
  final $Res Function(Failure) _then;
}

/// @nodoc
abstract class _$$_$ServerFailureCopyWith<$Res> {
  factory _$$_$ServerFailureCopyWith(
          _$_$ServerFailure value, $Res Function(_$_$ServerFailure) then) =
      __$$_$ServerFailureCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_$ServerFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_$ServerFailureCopyWith<$Res> {
  __$$_$ServerFailureCopyWithImpl(
      _$_$ServerFailure _value, $Res Function(_$_$ServerFailure) _then)
      : super(_value, (v) => _then(v as _$_$ServerFailure));

  @override
  _$_$ServerFailure get _value => super._value as _$_$ServerFailure;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_$ServerFailure(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$ServerFailure implements _$ServerFailure {
  const _$_$ServerFailure(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'Failure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$ServerFailure &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_$ServerFailureCopyWith<_$_$ServerFailure> get copyWith =>
      __$$_$ServerFailureCopyWithImpl<_$_$ServerFailure>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function() app,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function()? app,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function()? app,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _$ServerFailure implements Failure {
  const factory _$ServerFailure(final String message) = _$_$ServerFailure;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$ServerFailureCopyWith<_$_$ServerFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$NoInternetFailureCopyWith<$Res> {
  factory _$$_$NoInternetFailureCopyWith(_$_$NoInternetFailure value,
          $Res Function(_$_$NoInternetFailure) then) =
      __$$_$NoInternetFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$NoInternetFailureCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res>
    implements _$$_$NoInternetFailureCopyWith<$Res> {
  __$$_$NoInternetFailureCopyWithImpl(
      _$_$NoInternetFailure _value, $Res Function(_$_$NoInternetFailure) _then)
      : super(_value, (v) => _then(v as _$_$NoInternetFailure));

  @override
  _$_$NoInternetFailure get _value => super._value as _$_$NoInternetFailure;
}

/// @nodoc

class _$_$NoInternetFailure implements _$NoInternetFailure {
  const _$_$NoInternetFailure();

  @override
  String toString() {
    return 'Failure.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$NoInternetFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function() app,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function()? app,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function()? app,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$NoInternetFailure implements Failure {
  const factory _$NoInternetFailure() = _$_$NoInternetFailure;
}

/// @nodoc
abstract class _$$_$UnknownFailureCopyWith<$Res> {
  factory _$$_$UnknownFailureCopyWith(
          _$_$UnknownFailure value, $Res Function(_$_$UnknownFailure) then) =
      __$$_$UnknownFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$UnknownFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_$UnknownFailureCopyWith<$Res> {
  __$$_$UnknownFailureCopyWithImpl(
      _$_$UnknownFailure _value, $Res Function(_$_$UnknownFailure) _then)
      : super(_value, (v) => _then(v as _$_$UnknownFailure));

  @override
  _$_$UnknownFailure get _value => super._value as _$_$UnknownFailure;
}

/// @nodoc

class _$_$UnknownFailure implements _$UnknownFailure {
  const _$_$UnknownFailure();

  @override
  String toString() {
    return 'Failure.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$UnknownFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function() app,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function()? app,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function()? app,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$UnknownFailure implements Failure {
  const factory _$UnknownFailure() = _$_$UnknownFailure;
}

/// @nodoc
abstract class _$$_$AppFailureCopyWith<$Res> {
  factory _$$_$AppFailureCopyWith(
          _$_$AppFailure value, $Res Function(_$_$AppFailure) then) =
      __$$_$AppFailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$AppFailureCopyWithImpl<$Res> extends _$FailureCopyWithImpl<$Res>
    implements _$$_$AppFailureCopyWith<$Res> {
  __$$_$AppFailureCopyWithImpl(
      _$_$AppFailure _value, $Res Function(_$_$AppFailure) _then)
      : super(_value, (v) => _then(v as _$_$AppFailure));

  @override
  _$_$AppFailure get _value => super._value as _$_$AppFailure;
}

/// @nodoc

class _$_$AppFailure implements _$AppFailure {
  const _$_$AppFailure();

  @override
  String toString() {
    return 'Failure.app()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$AppFailure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) serverError,
    required TResult Function() noInternet,
    required TResult Function() unknown,
    required TResult Function() app,
  }) {
    return app();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function()? app,
  }) {
    return app?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? serverError,
    TResult Function()? noInternet,
    TResult Function()? unknown,
    TResult Function()? app,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$ServerFailure value) serverError,
    required TResult Function(_$NoInternetFailure value) noInternet,
    required TResult Function(_$UnknownFailure value) unknown,
    required TResult Function(_$AppFailure value) app,
  }) {
    return app(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
  }) {
    return app?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$ServerFailure value)? serverError,
    TResult Function(_$NoInternetFailure value)? noInternet,
    TResult Function(_$UnknownFailure value)? unknown,
    TResult Function(_$AppFailure value)? app,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(this);
    }
    return orElse();
  }
}

abstract class _$AppFailure implements Failure {
  const factory _$AppFailure() = _$_$AppFailure;
}
