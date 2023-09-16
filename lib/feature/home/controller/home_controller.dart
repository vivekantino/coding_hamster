import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final TextEditingController firstName = TextEditingController();

  final TextEditingController lastName = TextEditingController();

  final TextEditingController phoneNo = TextEditingController();

  final RxString selectedString = ''.obs;
  final RxString filePath = ''.obs;
}
