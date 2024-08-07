import 'package:mercy_touch/Core/app_export.dart';

class SignupData {
  Crud crud;

  SignupData(this.crud);

  postData(String username, String email, String password, String phone) async {
    var respons = await crud.postData(AppLink.signup, {
      "username": username,
      "email": email,
      "password": password,
      "phone": phone,
    });
    return respons.fold((l) => l, (r) => r);
  }
}
