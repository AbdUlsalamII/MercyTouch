import 'package:mercy_touch/Controller/Services/MedicalGuide/MedicalGuideElements_controller.dart';
import 'package:mercy_touch/Core/app_export.dart';

class ListCategoriesElements
    extends GetView<MedicalGuideElementsControllerImp> {
  const ListCategoriesElements({super.key});

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.center,
      spacing: 10,
      runSpacing: 10,
      children: List.generate(
        controller.medicalguideCat.length,
        (index) {
          return CategoriesMG(
            i: index,
            medicalGuideCategoriesModel: MedicalGuideCategoriesModel.fromJson(
              controller.medicalguideCat[index],
            ),
          );
        },
      ),
    );
  }
}

class CategoriesMG extends GetView<MedicalGuideElementsControllerImp> {
  final MedicalGuideCategoriesModel medicalGuideCategoriesModel;
  final int? i;
  const CategoriesMG({
    super.key,
    required this.medicalGuideCategoriesModel,
    required this.i,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // controller.goToMGElements(controller.medicalguideCat,i!);
          controller.changeCat(
              i!, medicalGuideCategoriesModel.mGuidCatId.toString());
        },
        child: Column(
          children: [
            GetBuilder<MedicalGuideElementsControllerImp>(
              builder: (controller) => Container(
                  decoration: controller.selectedCat == i
                      ? BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                                width: 2, color: AppColor.primary_color),
                          ),
                        )
                      : null,
                  child: Text(
                    textAlign: TextAlign.center,
                    "${medicalGuideCategoriesModel.mGuidCatName}",
                  )),
            )
          ],
        ));
  }
}
