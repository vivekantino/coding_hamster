import 'package:coding_hamster/api_client/api_exception.dart';
import 'package:coding_hamster/core/utils/email_validation.dart';
import 'package:coding_hamster/core/utils/utils.dart';
import 'package:coding_hamster/feature/authentication/repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final RxBool isSignUpFilled = false.obs;

  final TextEditingController firstName = TextEditingController();

  final TextEditingController lastName = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController phoneNo = TextEditingController();
  Future<void> login() async {
    try {
      final response = await AuthRepository.login();
    } on ApiException catch (e) {
      Utils.handleException(e.errorMessage.toString());
    } catch (e) {
      Utils.handleCatchException();
    }
  }

  void checkSignUpStatus() {
    if (firstName.text.isNotEmpty &&
        lastName.text.isNotEmpty &&
        EmailValidation.validateEmail(email: email.text) &&
        phoneNo.text.length == 10) {
      isSignUpFilled.value = true;
    } else {
      isSignUpFilled.value = false;
    }
  }
}
