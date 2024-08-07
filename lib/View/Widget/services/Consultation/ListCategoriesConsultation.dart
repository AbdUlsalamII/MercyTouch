import 'package:mercy_touch/Core/Functions/translateDB.dart';
import 'package:mercy_touch/Core/app_export.dart';

class ListCategoriesConsultation extends GetView<ConsultationControllerImp> {
  const ListCategoriesConsultation({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        itemCount: controller.doctorsCat.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Categories(
            i: index,
            consultationCategoriesModel: ConsultationCategoriesModel.fromJson(
                controller.doctorsCat[index]),
          );
        },
        separatorBuilder: (context, index) => SizedBox(
          width: 10,
        ),
      ),
    );
  }
}

class Categories extends GetView<ConsultationControllerImp> {
  final ConsultationCategoriesModel consultationCategoriesModel;
  final int? i;
  const Categories({
    super.key,
    required this.consultationCategoriesModel,
    required this.i,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        controller.goToDoctors(controller.doctorsCat, i! ,consultationCategoriesModel.doctorsCatId.toString());
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
          "${translateDatabase(consultationCategoriesModel.doctorsCatNameAr, consultationCategoriesModel.doctorsCatName)}",
        ),
      ),
    );
  }
}
