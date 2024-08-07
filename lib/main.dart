import 'package:mercy_touch/Core/app_export.dart'; 
void main() async {
  // special for services
  WidgetsFlutterBinding.ensureInitialized();
  await initialServices();
  //.....
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    LocalConroller controller = Get.put(LocalConroller());
    return GetMaterialApp(
      translations: MyTranslation(),
      debugShowCheckedModeBanner: false,
      locale: controller.language,
      theme: controller.appTheme,
      getPages: routes,
      initialBinding: InitialBindings(),
    );
  }
}