
import 'package:mercy_touch/Core/app_export.dart'; 

class VerifyCodeForgetPasswordData {
  Crud crud;

  VerifyCodeForgetPasswordData(this.crud);

  postData(String email,  String verfiycode) async {
    var respons = await crud.postData(AppLink.verifycodeforgetpassword, {
      "email": email,
      "verfiycode": verfiycode,
      
    });
    return respons.fold((l) => l, (r) => r);
  }
}
