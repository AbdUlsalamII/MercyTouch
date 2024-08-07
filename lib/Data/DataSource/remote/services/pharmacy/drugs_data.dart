import 'package:mercy_touch/Core/app_export.dart';

class DrugsData {
  Crud crud;

  DrugsData(this.crud);

  getData(String id) async {
    var respons = await crud.postData(AppLink.drugspage, {"id": id.toString()});
    return respons.fold((l) => l, (r) => r);
  }
}
