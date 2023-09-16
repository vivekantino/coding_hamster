import 'package:file_picker/file_picker.dart';
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
}
