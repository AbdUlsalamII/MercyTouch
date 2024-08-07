import 'package:mercy_touch/Core/app_export.dart';
import 'package:mercy_touch/Data/Model/services/Laboratory/LaboratoryModel.dart';

class ListTopLabs extends GetView<HomeControllerImp> {
  const ListTopLabs({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 250,
      child: ListView.builder(
          itemCount: controller.Laboratory.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return TopLapsHome(
              laboratoryModel:
                  LaboratoryModel.fromJson(controller.Laboratory[i]),
            );
          }),
    );
  }
}

class TopLapsHome extends StatelessWidget {
  final LaboratoryModel laboratoryModel;
  const TopLapsHome({super.key, required this.laboratoryModel});

  @override
  Widget build(BuildContext context) {
    return TopCard(
        doctorName: "${laboratoryModel.labsName}",
        specialty: "${laboratoryModel.labsYearOfWork}",
        rating: laboratoryModel.labsRating ?? 0.0,
        imagePath: "${AppLink.imagepath}/${laboratoryModel.labsImage}");
  }
}
