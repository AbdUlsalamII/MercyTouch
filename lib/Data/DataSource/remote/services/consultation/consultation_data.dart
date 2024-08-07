import 'package:mercy_touch/Core/app_export.dart';

class ConsultationData {
  Crud crud;

  ConsultationData(this.crud);

  getData() async {
    var respons = await crud.postData(AppLink.consultationpage, {});
    return respons.fold((l) => l, (r) => r);
  }
}
