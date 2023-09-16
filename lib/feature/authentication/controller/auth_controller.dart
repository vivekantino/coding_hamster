import 'package:coding_hamster/api_client/api_exception.dart';
import 'package:coding_hamster/auth/auth_repository.dart';
import 'package:coding_hamster/core/utils/email_validation.dart';
import 'package:coding_hamster/core/utils/utils.dart';
import 'package:coding_hamster/feature/authentication/repository/auth_repository.dart';
import 'package:coding_hamster/feature/home/view/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final RxBool isSignUpFilled = false.obs;
  final RxBool isLoginFilled = false.obs;

  final TextEditingController firstName = TextEditingController();

  final TextEditingController lastName = TextEditingController();

  final TextEditingController email = TextEditingController();

  final TextEditingController phoneNo = TextEditingController();

  final TextEditingController password = TextEditingController();
  Future<void> login() async {
    try {
      final response = await AuthRepository.login(
          body: {"email": email.text, "password": password.text});
      if (response != null && response['status'] == 200) {
        AuthUtil.instance.setAccessToken(response["access"]);
        Get.to(() => HomeScreen());
      }
    } on ApiException catch (e) {
      Utils.handleException(e.errorMessage.toString());
    } catch (e) {
      Utils.handleCatchException();
    }
  }

  Future<void> signUp() async {
    try {
      print(
          '${firstName.text} , ${lastName.text} , ${email.text}, ${phoneNo.text} , ${password.text}');
      final response = await AuthRepository.signup(body: {
        "first_name": firstName.text,
        "last_name": lastName.text,
        "email": email.text,
        "password": password.text,
        "user_role": "seeker"
      });
      print('${response["access"]}');

      AuthUtil.instance.setAccessToken(response["access"]);
      print('${AuthUtil.accessToken}');
      Get.to(() => HomeScreen());
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

  void checkLoginFieldsFilled() {
    if (email.text.isNotEmpty && password.text.isNotEmpty) {
      isLoginFilled.value = true;
    } else {
      isLoginFilled.value = false;
    }
  }

  void checkLoginStatus() async {
    try {
      final result = await AuthRepository.login(body: {
        "email": email.text,
        "password": password.text,
      });
    } catch (error) {
      print('$error');
    }
  }
}
