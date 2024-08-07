import 'package:mercy_touch/Core/app_export.dart';

class PharmacyData {
  Crud crud;

  PharmacyData(this.crud);

  getData() async {
    var respons = await crud.postData(AppLink.pharmacypage, {});
    return respons.fold((l) => l, (r) => r);
  }
}
