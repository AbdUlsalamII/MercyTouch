
import 'package:mercy_touch/Core/app_export.dart'; 

class CheckEmailData {
  Crud crud;

  CheckEmailData(this.crud);

  postData(String email) async {
    var respons = await crud.postData(AppLink.checkemail, {
      "email": email,   
    });
    return respons.fold((l) => l, (r) => r);
  }
}
