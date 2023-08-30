import 'package:prognosticare/src/models/user_model.dart';

import '../../../constants/endpoints.dart';
import '../../../services/http_manager.dart';

class AuthRepository {
  final HttpManager httpManager = HttpManager();
  Future signIn({required String email, required String password}) async {
    final result = await httpManager.restRequest(
      url: Endpoints.signin,
      method: HttpMethods.post,
      body: {
        'username': email,
        'password': password,
      },
    );

    if (result['result'] != null) {
      print("Sign in success");

      final user = UserModel.fromJson(result['result']);

      print(user);
    } else {
      print("Sign in failed");
    }
  }
}
