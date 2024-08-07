import 'package:mercy_touch/Core/app_export.dart';

class ResetPasswordData {
  Crud crud;

  ResetPasswordData(this.crud);

  postData(String email, String password) async {
    var respons = await crud.postData(AppLink.resetpassword, {
      "email": email,
      "password": password,
    });
    return respons.fold((l) => l, (r) => r);
  }
}
