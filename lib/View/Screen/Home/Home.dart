import 'package:mercy_touch/Core/app_export.dart';


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    Get.put(HomeControllerImp());
    return GetBuilder<HomeControllerImp>(
        builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: Container(
                color: AppColor.bg,
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    //!--- Search bar & Notification ---
                    CustomAppBar(
                      titleappbar: "find doctor",
                      onPressedicon: () {},
                      onPressedsearch: () {},
                    ),
                    //!--- Services ---
                    CustomTitleHome(title: "Our Services"),
                    Listservices(),
                    //!--- Top Doctor ---
                    CustomTitleHome(title: "Top Doctor"),
                    ListTopDoctors(),
                    //!--- Top Lap Doctor ---
                    CustomTitleHome(title: "Top laboratory"),
                    ListTopLabs(),

                    
                  ],
                ),
              ),
            ));
  }
}
