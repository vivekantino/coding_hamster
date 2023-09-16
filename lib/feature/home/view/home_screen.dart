import 'package:coding_hamster/core/utils/utils.dart';
import 'package:coding_hamster/extension/size_extension.dart';
import 'package:coding_hamster/feature/home/controller/home_controller.dart';
import 'package:coding_hamster/feature/home/widget/blue_button.dart';
import 'package:coding_hamster/feature/home/widget/icon_with_title.dart';
import 'package:coding_hamster/feature/home/widget/job_card.dart';
import 'package:coding_hamster/route/app_routes.dart';
import 'package:coding_hamster/theme/app_colors.dart';
import 'package:coding_hamster/theme/app_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final HomeController homeController = Get.put(HomeController());
  @override
  void initState() {
    // TODO: implement initState
    homeController.getJobsList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutral.shade3,
      appBar: AppBar(
        shadowColor: AppColors.transparent,
        backgroundColor: AppColors.white,
        title: Row(
          children: [
            SizedBox(
              width: 16.widthMultiplier,
            ),
            Text(
              "Jobee",
              style: AppTextStyle.f18w600Primary,
            ),
          ],
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.appliedJobsScreen);
            },
            child: Container(
              color: AppColors.transparent,
              child: const Icon(
                Icons.approval_outlined,
                color: AppColors.primary,
              ),
            ),
          ),
          SizedBox(
            width: 16.widthMultiplier,
          ),
          const Icon(
            Icons.bookmark_outline,
            color: AppColors.primary,
          ),
          SizedBox(
            width: 16.widthMultiplier,
          ),
          GestureDetector(
            onTap: () {
              Get.toNamed(AppRoutes.profileScreen);
            },
            child: Container(
              color: AppColors.transparent,
              child: const Icon(
                Icons.person,
                color: AppColors.primary,
              ),
            ),
          ),
          SizedBox(
            width: 16.widthMultiplier,
          ),
        ],
      ),
      body: Obx(
        () => homeController.isJobLoaded.value
            ? Column(
                children: [
                  Expanded(
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
                ],
              )
            : const Center(child: CircularProgressIndicator()),
      ),
    );
  }
}
