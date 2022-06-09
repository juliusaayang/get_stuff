
import 'package:freezed_annotation/freezed_annotation.dart';
part 'error.freezed.dart';

@freezed
class GetStuffException with _$GetStuffException implements Exception {
  /// thrown when there is a problem with the server
  const factory GetStuffException.server(String message) =
      _$GetStuffExceptionServer;

  /// thrown when there is no internet
  const factory GetStuffException.noInternet() = _$GetStuffExceptionNoInternet;

  /// thrown when there is a problem with the app
  const factory GetStuffException.app() = _$GetStuffExceptionApp;

  /// thrown when the error is unknown
  const factory GetStuffException.unknown() = _$GetStuffExceptionUnknown;
}
