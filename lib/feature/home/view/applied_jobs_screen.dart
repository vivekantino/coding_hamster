import 'package:coding_hamster/core/utils/utils.dart';
import 'package:coding_hamster/feature/home/controller/home_controller.dart';
import 'package:coding_hamster/feature/home/widget/job_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppliedJobsScreen extends StatefulWidget {
  const AppliedJobsScreen({super.key});

  @override
  State<AppliedJobsScreen> createState() => _AppliedJobsScreenState();
}

class _AppliedJobsScreenState extends State<AppliedJobsScreen> {
  final HomeController homeController = Get.find();

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      homeController.getAppliedJobsList();
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Obx(
            () => (homeController.isJobLoaded.value)
                ? Expanded(
                    child: ListView.builder(
                      itemCount: homeController.listofAllJobs.length,
                      itemBuilder: (context, index) {
                        return JobCard(
                          title: homeController.listofAllJobs[index].jobTitle ??
                              "",
                          location:
                              homeController.listofAllJobs[index].location ??
                                  "",
                          companyName:
                              homeController.listofAllJobs[index].company ?? "",
                          price:
                              homeController.listofAllJobs[index].salaryRange ??
                                  "",
                          time: Utils.calculateAgo(
                              time: DateTime.now(),
                              fromDate: (homeController
                                      .listofAllJobs[index].createdOn ??
                                  DateTime.now())),
                        );
                      },
                    ),
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  ),
          ),
        ],
      ),
    );
  }
}
