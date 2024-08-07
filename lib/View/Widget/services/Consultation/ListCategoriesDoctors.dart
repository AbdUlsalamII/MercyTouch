import 'package:mercy_touch/Core/Functions/translateDB.dart';
import 'package:mercy_touch/Core/app_export.dart';

class ListCategoriesDoctors extends GetView<DoctorsControllerImp> {
  const ListCategoriesDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 25,
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

class Categories extends GetView<DoctorsControllerImp> {
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
          // controller.goToDoctors(controller.doctorsCat, i!);
          controller.changeCat(
              i!, consultationCategoriesModel.doctorsCatId.toString());
        },
        child: Column(
          children: [
            GetBuilder<DoctorsControllerImp>(
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
                  "${translateDatabase(consultationCategoriesModel.doctorsCatNameAr, consultationCategoriesModel.doctorsCatName)}",
                ),
              ),
            )
          ],
        ));
  }
}
