import 'package:mercy_touch/Controller/Services/Pharmacy/Drugs_controller.dart';
import 'package:mercy_touch/Core/app_export.dart';
import 'package:mercy_touch/View/Widget/services/Pharmacy/ListCategoriesDrugs.dart';
import 'package:mercy_touch/View/Widget/services/Pharmacy/ListDrugsView.dart';

class Drugs extends StatelessWidget {
  const Drugs({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(DrugsControllerImp());
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: ListView(children: [
          //!--- Search bar & Notification ---
          CustomAppBar(
            titleappbar: "find Drugs .....",
            onPressedicon: () {},
            onPressedsearch: () {},
          ),
          //!
          ListCategoriesDrugs(),
          //!
          GetBuilder<DrugsControllerImp>(
            builder: (controller) => HandlingDataView(
              statusRequest: controller.statusRequest,
              widget: ListView.builder(
                  shrinkWrap: true,
                  physics: NeverScrollableScrollPhysics(),
                  itemCount: 1,
                  itemBuilder: (BuildContext context, index) {
                    return ListDrugsView(
                      pharmacyModel:
                          PharmacyModel.fromJson(controller.Drugs[index]),
                    );
                  }),
            ),
          )
        ]),
      ),
    );
  }
}
