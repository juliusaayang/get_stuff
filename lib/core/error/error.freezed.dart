// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'error.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GetStuffException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() app,
    required TResult Function() unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? app,
    TResult Function()? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetStuffExceptionServer value) server,
    required TResult Function(_$GetStuffExceptionNoInternet value) noInternet,
    required TResult Function(_$GetStuffExceptionApp value) app,
    required TResult Function(_$GetStuffExceptionUnknown value) unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$GetStuffExceptionServer value)? server,
    TResult Function(_$GetStuffExceptionNoInternet value)? noInternet,
    TResult Function(_$GetStuffExceptionApp value)? app,
    TResult Function(_$GetStuffExceptionUnknown value)? unknown,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetStuffExceptionServer value)? server,
    TResult Function(_$GetStuffExceptionNoInternet value)? noInternet,
    TResult Function(_$GetStuffExceptionApp value)? app,
    TResult Function(_$GetStuffExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GetStuffExceptionCopyWith<$Res> {
  factory $GetStuffExceptionCopyWith(
          GetStuffException value, $Res Function(GetStuffException) then) =
      _$GetStuffExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$GetStuffExceptionCopyWithImpl<$Res>
    implements $GetStuffExceptionCopyWith<$Res> {
  _$GetStuffExceptionCopyWithImpl(this._value, this._then);

  final GetStuffException _value;
  // ignore: unused_field
  final $Res Function(GetStuffException) _then;
}

/// @nodoc
abstract class _$$_$GetStuffExceptionServerCopyWith<$Res> {
  factory _$$_$GetStuffExceptionServerCopyWith(
          _$_$GetStuffExceptionServer value,
          $Res Function(_$_$GetStuffExceptionServer) then) =
      __$$_$GetStuffExceptionServerCopyWithImpl<$Res>;
  $Res call({String message});
}

/// @nodoc
class __$$_$GetStuffExceptionServerCopyWithImpl<$Res>
    extends _$GetStuffExceptionCopyWithImpl<$Res>
    implements _$$_$GetStuffExceptionServerCopyWith<$Res> {
  __$$_$GetStuffExceptionServerCopyWithImpl(_$_$GetStuffExceptionServer _value,
      $Res Function(_$_$GetStuffExceptionServer) _then)
      : super(_value, (v) => _then(v as _$_$GetStuffExceptionServer));

  @override
  _$_$GetStuffExceptionServer get _value =>
      super._value as _$_$GetStuffExceptionServer;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_$GetStuffExceptionServer(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_$GetStuffExceptionServer implements _$GetStuffExceptionServer {
  const _$_$GetStuffExceptionServer(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'GetStuffException.server(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$GetStuffExceptionServer &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_$GetStuffExceptionServerCopyWith<_$_$GetStuffExceptionServer>
      get copyWith => __$$_$GetStuffExceptionServerCopyWithImpl<
          _$_$GetStuffExceptionServer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() app,
    required TResult Function() unknown,
  }) {
    return server(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? app,
    TResult Function()? unknown,
  }) {
    return server?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? app,
    TResult Function()? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_$GetStuffExceptionServer value) server,
    required TResult Function(_$GetStuffExceptionNoInternet value) noInternet,
    required TResult Function(_$GetStuffExceptionApp value) app,
    required TResult Function(_$GetStuffExceptionUnknown value) unknown,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$GetStuffExceptionServer value)? server,
    TResult Function(_$GetStuffExceptionNoInternet value)? noInternet,
    TResult Function(_$GetStuffExceptionApp value)? app,
    TResult Function(_$GetStuffExceptionUnknown value)? unknown,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetStuffExceptionServer value)? server,
    TResult Function(_$GetStuffExceptionNoInternet value)? noInternet,
    TResult Function(_$GetStuffExceptionApp value)? app,
    TResult Function(_$GetStuffExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _$GetStuffExceptionServer implements GetStuffException {
  const factory _$GetStuffExceptionServer(final String message) =
      _$_$GetStuffExceptionServer;

  String get message => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_$GetStuffExceptionServerCopyWith<_$_$GetStuffExceptionServer>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_$GetStuffExceptionNoInternetCopyWith<$Res> {
  factory _$$_$GetStuffExceptionNoInternetCopyWith(
          _$_$GetStuffExceptionNoInternet value,
          $Res Function(_$_$GetStuffExceptionNoInternet) then) =
      __$$_$GetStuffExceptionNoInternetCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$GetStuffExceptionNoInternetCopyWithImpl<$Res>
    extends _$GetStuffExceptionCopyWithImpl<$Res>
    implements _$$_$GetStuffExceptionNoInternetCopyWith<$Res> {
  __$$_$GetStuffExceptionNoInternetCopyWithImpl(
      _$_$GetStuffExceptionNoInternet _value,
      $Res Function(_$_$GetStuffExceptionNoInternet) _then)
      : super(_value, (v) => _then(v as _$_$GetStuffExceptionNoInternet));

  @override
  _$_$GetStuffExceptionNoInternet get _value =>
      super._value as _$_$GetStuffExceptionNoInternet;
}

/// @nodoc

class _$_$GetStuffExceptionNoInternet implements _$GetStuffExceptionNoInternet {
  const _$_$GetStuffExceptionNoInternet();

  @override
  String toString() {
    return 'GetStuffException.noInternet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$GetStuffExceptionNoInternet);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() app,
    required TResult Function() unknown,
  }) {
    return noInternet();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? app,
    TResult Function()? unknown,
  }) {
    return noInternet?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? app,
    TResult Function()? unknown,
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
    required TResult Function(_$GetStuffExceptionServer value) server,
    required TResult Function(_$GetStuffExceptionNoInternet value) noInternet,
    required TResult Function(_$GetStuffExceptionApp value) app,
    required TResult Function(_$GetStuffExceptionUnknown value) unknown,
  }) {
    return noInternet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$GetStuffExceptionServer value)? server,
    TResult Function(_$GetStuffExceptionNoInternet value)? noInternet,
    TResult Function(_$GetStuffExceptionApp value)? app,
    TResult Function(_$GetStuffExceptionUnknown value)? unknown,
  }) {
    return noInternet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetStuffExceptionServer value)? server,
    TResult Function(_$GetStuffExceptionNoInternet value)? noInternet,
    TResult Function(_$GetStuffExceptionApp value)? app,
    TResult Function(_$GetStuffExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (noInternet != null) {
      return noInternet(this);
    }
    return orElse();
  }
}

abstract class _$GetStuffExceptionNoInternet implements GetStuffException {
  const factory _$GetStuffExceptionNoInternet() =
      _$_$GetStuffExceptionNoInternet;
}

/// @nodoc
abstract class _$$_$GetStuffExceptionAppCopyWith<$Res> {
  factory _$$_$GetStuffExceptionAppCopyWith(_$_$GetStuffExceptionApp value,
          $Res Function(_$_$GetStuffExceptionApp) then) =
      __$$_$GetStuffExceptionAppCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$GetStuffExceptionAppCopyWithImpl<$Res>
    extends _$GetStuffExceptionCopyWithImpl<$Res>
    implements _$$_$GetStuffExceptionAppCopyWith<$Res> {
  __$$_$GetStuffExceptionAppCopyWithImpl(_$_$GetStuffExceptionApp _value,
      $Res Function(_$_$GetStuffExceptionApp) _then)
      : super(_value, (v) => _then(v as _$_$GetStuffExceptionApp));

  @override
  _$_$GetStuffExceptionApp get _value =>
      super._value as _$_$GetStuffExceptionApp;
}

/// @nodoc

class _$_$GetStuffExceptionApp implements _$GetStuffExceptionApp {
  const _$_$GetStuffExceptionApp();

  @override
  String toString() {
    return 'GetStuffException.app()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_$GetStuffExceptionApp);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() app,
    required TResult Function() unknown,
  }) {
    return app();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? app,
    TResult Function()? unknown,
  }) {
    return app?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? app,
    TResult Function()? unknown,
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
    required TResult Function(_$GetStuffExceptionServer value) server,
    required TResult Function(_$GetStuffExceptionNoInternet value) noInternet,
    required TResult Function(_$GetStuffExceptionApp value) app,
    required TResult Function(_$GetStuffExceptionUnknown value) unknown,
  }) {
    return app(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$GetStuffExceptionServer value)? server,
    TResult Function(_$GetStuffExceptionNoInternet value)? noInternet,
    TResult Function(_$GetStuffExceptionApp value)? app,
    TResult Function(_$GetStuffExceptionUnknown value)? unknown,
  }) {
    return app?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetStuffExceptionServer value)? server,
    TResult Function(_$GetStuffExceptionNoInternet value)? noInternet,
    TResult Function(_$GetStuffExceptionApp value)? app,
    TResult Function(_$GetStuffExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (app != null) {
      return app(this);
    }
    return orElse();
  }
}

abstract class _$GetStuffExceptionApp implements GetStuffException {
  const factory _$GetStuffExceptionApp() = _$_$GetStuffExceptionApp;
}

/// @nodoc
abstract class _$$_$GetStuffExceptionUnknownCopyWith<$Res> {
  factory _$$_$GetStuffExceptionUnknownCopyWith(
          _$_$GetStuffExceptionUnknown value,
          $Res Function(_$_$GetStuffExceptionUnknown) then) =
      __$$_$GetStuffExceptionUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_$GetStuffExceptionUnknownCopyWithImpl<$Res>
    extends _$GetStuffExceptionCopyWithImpl<$Res>
    implements _$$_$GetStuffExceptionUnknownCopyWith<$Res> {
  __$$_$GetStuffExceptionUnknownCopyWithImpl(
      _$_$GetStuffExceptionUnknown _value,
      $Res Function(_$_$GetStuffExceptionUnknown) _then)
      : super(_value, (v) => _then(v as _$_$GetStuffExceptionUnknown));

  @override
  _$_$GetStuffExceptionUnknown get _value =>
      super._value as _$_$GetStuffExceptionUnknown;
}

/// @nodoc

class _$_$GetStuffExceptionUnknown implements _$GetStuffExceptionUnknown {
  const _$_$GetStuffExceptionUnknown();

  @override
  String toString() {
    return 'GetStuffException.unknown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_$GetStuffExceptionUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String message) server,
    required TResult Function() noInternet,
    required TResult Function() app,
    required TResult Function() unknown,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? app,
    TResult Function()? unknown,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String message)? server,
    TResult Function()? noInternet,
    TResult Function()? app,
    TResult Function()? unknown,
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
    required TResult Function(_$GetStuffExceptionServer value) server,
    required TResult Function(_$GetStuffExceptionNoInternet value) noInternet,
    required TResult Function(_$GetStuffExceptionApp value) app,
    required TResult Function(_$GetStuffExceptionUnknown value) unknown,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_$GetStuffExceptionServer value)? server,
    TResult Function(_$GetStuffExceptionNoInternet value)? noInternet,
    TResult Function(_$GetStuffExceptionApp value)? app,
    TResult Function(_$GetStuffExceptionUnknown value)? unknown,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_$GetStuffExceptionServer value)? server,
    TResult Function(_$GetStuffExceptionNoInternet value)? noInternet,
    TResult Function(_$GetStuffExceptionApp value)? app,
    TResult Function(_$GetStuffExceptionUnknown value)? unknown,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _$GetStuffExceptionUnknown implements GetStuffException {
  const factory _$GetStuffExceptionUnknown() = _$_$GetStuffExceptionUnknown;
}
