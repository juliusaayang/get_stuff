import 'package:another_flushbar/flushbar.dart';
import 'package:another_flushbar/flushbar_helper.dart';
import 'package:flutter/material.dart';

/// [FlushBarNotification] is the class that represents
/// the flushbar notification
class FlushBarNotification {
  ///[showError] is the method that shows the error
  /// [message] is the message of the error
  /// [context] is the context of the error
  static Future<void> showError({
    required BuildContext context,
    required String message,
  }) {
    return Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      padding: const EdgeInsets.fromLTRB(20, 10, 5, 10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      message: message,
      duration: const Duration(seconds: 3),
      backgroundColor: Colors.red,
      borderRadius: BorderRadius.circular(7),
    ).show(context);
  }

  ///[showSuccess] is the method that shows the success
  /// [message] is the message of the success
  /// [context] is the context of the success
  static Future<void> showSuccess({
    required BuildContext context,
    required String message,
  }) {
    return Flushbar(
      flushbarPosition: FlushbarPosition.TOP,
      padding: const EdgeInsets.fromLTRB(20, 10, 5, 10),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      message: message,
      duration: const Duration(seconds: 2),
      backgroundColor: Colors.green,
      borderRadius: BorderRadius.circular(7),
    ).show(context);
  }

  ///[showInfoMessage] is the method that shows the info
  /// [message] is the message of the info
  /// [context] is the context of the info
  /// [title] is the title of the info
  static dynamic showInfoMessage({
    required BuildContext context,
    String title = '',
    required String message,
  }) {
    FlushbarHelper.createInformation(
      message: message,
      title: title,
    ).show(context);
  }
}