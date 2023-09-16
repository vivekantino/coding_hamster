import 'package:coding_hamster/api_client/api_client.dart';
import 'package:coding_hamster/route/api_route.dart';

class AuthRepository {
  static Future<Map<String, dynamic>> login(
      {Map<String, dynamic>? body}) async {
    Map<String, dynamic> response = await ApiClient().post(ApiRoutes);
    return response;
  }
}
