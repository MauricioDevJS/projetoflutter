import 'package:get/get.dart';

import '../../../services/utils_services.dart';
import '../repository/auth_repository.dart';

class AuthController extends GetxController {
  RxBool isLoading = false.obs;

  final authRepository = AuthRepository();
  Future<void> signIn({
    required String email,
    required String password,
  }) async {
    isLoading.value = true;

    try {
      await AuthRepository().signIn(
        email: email,
        password: password,
      );
    } catch (e) {
      UtilsServices().showToast(
        message: e.toString(),
        isError: true,
      );
    } finally {
      isLoading.value = false;
    }
  }
}
