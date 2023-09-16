abstract class ApiRoutes {
  ApiRoutes._();

  static String baseUrl = 'https://be87-49-249-44-114.ngrok.io';

  static String loginUrl = '$baseUrl/login/';
  static String signupUrl = '$baseUrl/signup/';
  static String getJobs = '$baseUrl/jobs/listcreate/';
  static String getAppliedJobs = '$baseUrl/applied/filter/is_applied';
}
