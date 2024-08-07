import 'package:mercy_touch/Core/app_export.dart';

class ListDoctors extends GetView<ConsultationControllerImp> {
  const ListDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 250,
      child: ListView.builder(
          itemCount: controller.doctors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return DoctorsConsultation(
              doctorsModel: DoctorsModel.fromJson(controller.doctors[i]),
            );
          }),
    );
  }
}

class DoctorsConsultation extends StatelessWidget {
  final DoctorsModel doctorsModel;
  const DoctorsConsultation({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return DoctorsCard(
        doctorName: "${doctorsModel.doctorsName}",
        specialty: "${doctorsModel.doctorsSpecialization}",
        rating: doctorsModel.doctorsRating ?? 0.0,
        imagePath: "${AppLink.imagepath}/${doctorsModel.doctorsImage}");
  }
}
