import 'package:mercy_touch/Core/app_export.dart';

class ListCategoriesMedicalguide extends GetView<MedicalGuideControllerImp> {
  const ListCategoriesMedicalguide({super.key});

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

class CategoriesMG extends GetView<MedicalGuideControllerImp> {
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
          controller.goToMGElements(controller.medicalguideCat,i!,medicalGuideCategoriesModel.mGuidCatId.toString());
        },
        child: Container(
            padding: EdgeInsets.all(16.0), // Padding داخل الإطار
            decoration: BoxDecoration(
              border: Border.all(
                color: Colors.blue,
              ), // حدود الإطار
              borderRadius: BorderRadius.circular(10), // انحناء زوايا الإطار
            ),
            child: Text(
              textAlign: TextAlign.center,
              "${medicalGuideCategoriesModel.mGuidCatName}",
            )));
  }
}
