import 'package:mercy_touch/Core/app_export.dart';

class MedicalGuideElementsData {
  Crud crud;

  MedicalGuideElementsData(this.crud);

  getData(String id) async {
    var respons = await crud.postData(AppLink.medicalguideelementspage, {"id": id.toString()});
    return respons.fold((l) => l, (r) => r);
  }
}
