import 'package:coding_hamster/local_storage/secure_storage_helper.dart';
import 'package:get/get.dart';

import '../feature/authentication/view/login_screen.dart';

class AuthUtil {
  AuthUtil._();

  /// Cached instance of [AuthUtil];
  static AuthUtil? _instance;

  static AuthUtil get instance {
    _instance ??= AuthUtil._();

    return _instance!;
  }

  final SecureStorageHelper _secureStorage = SecureStorageHelper.instance;

  Future<void> init() async {
    //Initialise tokens from secure storage
    refreshToken = await _refreshToken;
    accessToken = await _accessToken;
  }

  static String? refreshToken;
  static String? accessToken;
  static bool? isNewUser;
  static String? userTypeLocal;
  static String? userSubRoleTypeLocal;

  Future<String?> get _refreshToken async {
    return await _secureStorage.read('refreshToken');
  }

  Future<String?> get _userTypeLocal async {
    return await _secureStorage.read('userTypeLocal');
  }

  Future<String?> get _accessToken async {
    return await _secureStorage.read('accessToken');
  }

  Future<bool?> get _isNewUser async {
    return await _secureStorage.readBool('isNewUser');
  }

  static bool get isLoggedIn {
    return accessToken != null;
  }

  Future<void> setAccessToken(String token) async {
    accessToken = token;
    return await _secureStorage.write('accessToken', token);
  }

  Future<void> setisNewUserStatus(bool isNewUser) async {
    isNewUser = isNewUser;
    return await _secureStorage.saveBool('isNewUser', isNewUser);
  }

  Future<void> setUserTypeLocal(String userTypeLocal) async {
    userTypeLocal = userTypeLocal;
    return await _secureStorage.write('userTypeLocal', userTypeLocal);
  }

  Future<void> logout() async {
     Get.offAll(()=>LoginScreen());
    Get.deleteAll();
    return await _secureStorage.deleteAll();
  }

  Future<void> userBlocked() async {
    return await _secureStorage.deleteAll();
  }
}
