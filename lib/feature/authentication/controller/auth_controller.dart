import 'package:coding_hamster/api_client/api_exception.dart';
import 'package:coding_hamster/core/utils/utils.dart';
import 'package:coding_hamster/feature/authentication/repository/auth_repository.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  Future<void> login() async {
    try {
      final response = await AuthRepository.login();
    } on ApiException catch (e) {
      Utils.handleException(e.errorMessage.toString());
    } catch (e) {
      Utils.handleCatchException();
    }
  }
}
