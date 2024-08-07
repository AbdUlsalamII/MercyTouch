import 'package:mercy_touch/Core/app_export.dart';

class TestData {
  Crud crud;

  TestData(this.crud);

  getData() async {
    var respons = await crud.postData(AppLink.test, {});
    return respons.fold((l) => l, (r) => r);
  }
}
