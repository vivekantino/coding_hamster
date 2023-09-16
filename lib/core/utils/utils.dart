import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static void showToast(
    String? message, {
    Toast? toastLength,
  }) {
    Fluttertoast.showToast(
        msg: message ?? 'Something went wrong!', toastLength: toastLength);
  }

  static void handleException(String? message) {
    showToast(message);
  }

  static void handleCatchException() {
    showToast('Something went wrong!');
  }
}
