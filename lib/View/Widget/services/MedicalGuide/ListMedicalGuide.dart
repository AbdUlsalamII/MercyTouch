import 'package:mercy_touch/Core/app_export.dart';

class ListMedicalGuide extends GetView<MedicalGuideControllerImp> {
  const ListMedicalGuide({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 250,
      child: ListView.builder(
          itemCount: controller.medicalguideElements.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return MGelements(medicalGuideModel: MedicalGuideModel.fromJson(controller.medicalguideElements[i]),);
          }),
    );
  }
}

class MGelements extends StatelessWidget {
  final MedicalGuideModel medicalGuideModel;
  const MGelements({super.key, required this.medicalGuideModel});

  @override
  Widget build(BuildContext context) {
    return MedicalGuideCard(
        elementName: "${medicalGuideModel.mGuidCatName}",
        phone: medicalGuideModel.mGuideElementsPhone ?? 0 ,
        location: "${medicalGuideModel.mGuideElementsLocation}",
        // imagePath:
        //     "${AppLink.imagepath}/${medicalGuideModel.doctorsImage}"
        );
  }
}
