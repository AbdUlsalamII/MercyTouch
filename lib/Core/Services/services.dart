 import 'package:mercy_touch/Core/app_export.dart'; 

class MyServices extends GetxService {
  late SharedPreferences sharedPreferences;
  // ignore: non_constant_identifier_names
  Future<MyServices> Init() async {
    // await Firebase.initializeApp();
    sharedPreferences = await SharedPreferences.getInstance();
    return this;
  }
}

initialServices() async {
  // ignore: await_only_futures
  await Get.putAsync(() => MyServices().Init());
}
