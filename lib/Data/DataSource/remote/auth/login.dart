import 'package:mercy_touch/Core/app_export.dart';

class LoginData {
  Crud crud;

  LoginData(this.crud);

  postData(String email, String password) async {
    var respons = await crud.postData(AppLink.login, {
      "email": email,
      "password": password,
    });
    return respons.fold((l) => l, (r) => r);
  }
}
