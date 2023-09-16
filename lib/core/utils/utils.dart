import 'package:file_picker/file_picker.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:intl/intl.dart';

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

  static Future<FilePickerResult?> pickFileFromLocal(
      {bool? isQuotation}) async {
    final FilePickerResult? result = await FilePicker.platform.pickFiles(
        type: (isQuotation == true) ? FileType.custom : FileType.any,
        allowMultiple: false,
        allowedExtensions:
            (isQuotation == true) ? ['jpg', 'jpeg', 'png', 'pdf'] : null);
    if (result != null) {
      return result;
    } else {
      return null;
    }
  }

   static String calculateAgo({required DateTime time, DateTime? fromDate}) {
    final int totalhours = fromDate != null
        ? time.difference(fromDate).inHours
        : DateTime.now().difference(time).inHours;
    if (totalhours == 24) {
      return "${((totalhours / 24)).round()} day";
    } else if (totalhours > 24 && totalhours < 168) {
      return "${((totalhours / 24)).round()} days";
    } else if ((totalhours < 24)) {
      return '$totalhours hour';
    } else {
      if (fromDate != null) {
        int difference =
            calculateMonthSize(time) - calculateMonthSize(fromDate) + 1;
        return '$difference months';
      }
      return DateFormat("dd/MMM/yyyy").format(time);
    }
  }

   static int calculateMonthSize(DateTime dateTime) {
    return dateTime.year * 12 + dateTime.month;
  }
}
