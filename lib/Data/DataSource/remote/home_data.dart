import 'package:mercy_touch/Core/app_export.dart';

class HomeData {
  Crud crud;

  HomeData(this.crud);

  getData() async {
    var respons = await crud.postData(AppLink.homepage, {});
    return respons.fold((l) => l, (r) => r);
  }
}
