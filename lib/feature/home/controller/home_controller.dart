import 'package:coding_hamster/api_client/api_exception.dart';
import 'package:coding_hamster/core/utils/utils.dart';
import 'package:coding_hamster/feature/home/models/jobs_model.dart';
import 'package:coding_hamster/feature/home/repository/home_reposiotry.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final TextEditingController firstName = TextEditingController();

  final TextEditingController lastName = TextEditingController();

  final TextEditingController phoneNo = TextEditingController();

  final RxString selectedString = ''.obs;
  final RxString filePath = ''.obs;
  final RxBool isJobLoaded = false.obs;
  List<JobsModelDatum> listofAllJobs = [];

  Future<void> getJobsList() async {
    isJobLoaded.value = false;
    try {
      final response = await HomeReposiotry.getJobsList();
      listofAllJobs = JobsModel.fromJson(response).data ?? [];
      isJobLoaded.value = true;
    } on ApiException catch (e) {
      Utils.handleException(e.errorMessage.toString());
    } catch (e) {
      Utils.handleCatchException();
    }
  }

  Future<void> getAppliedJobsList() async {
    isJobLoaded.value = false;
    try {
      final response = await HomeReposiotry.getJobsList();
      listofAllJobs = JobsModel.fromJson(response).data ?? [];
      isJobLoaded.value = true;
    } on ApiException catch (e) {
      Utils.handleException(e.errorMessage.toString());
    } catch (e) {
      Utils.handleCatchException();
    }
  }
}
