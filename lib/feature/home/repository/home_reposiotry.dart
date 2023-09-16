import 'package:coding_hamster/api_client/api_client.dart';

import '../../../route/api_route.dart';

class HomeReposiotry {
  static Future<Map<String, dynamic>> getJobsList(
      {Map<String, dynamic>? body}) async {
    Map<String, dynamic> response = await ApiClient().get(
      ApiRoutes.getJobs,
    );

    return response;
  }

  static Future<Map<String, dynamic>> getAppliedJobs(
      {Map<String, dynamic>? body}) async {
    Map<String, dynamic> response = await ApiClient().get(
      ApiRoutes.getAppliedJobs,
    );

    return response;
  }
}
