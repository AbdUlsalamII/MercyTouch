import 'package:mercy_touch/Core/app_export.dart';

class MedicalGuideData {
  Crud crud;

  MedicalGuideData(this.crud);

  getData() async {
    var respons = await crud.postData(AppLink.medicalguidepage, {});
    return respons.fold((l) => l, (r) => r);
  }
}
