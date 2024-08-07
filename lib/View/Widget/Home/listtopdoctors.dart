import 'package:mercy_touch/Core/app_export.dart';

class ListTopDoctors extends GetView<HomeControllerImp> {
  const ListTopDoctors({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 190,
      height: 250,
      child: ListView.builder(
          itemCount: controller.doctors.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, i) {
            return TopDoctorsHome(doctorsModel: DoctorsModel.fromJson(controller.doctors[i]),);
          }),
    );
  }
}

class TopDoctorsHome extends StatelessWidget {
  final DoctorsModel doctorsModel;
  const TopDoctorsHome({super.key, required this.doctorsModel});

  @override
  Widget build(BuildContext context) {
    return TopCard(
        doctorName: "${doctorsModel.doctorsName}",
        specialty: "${doctorsModel.doctorsSpecialization}",
        rating: doctorsModel.doctorsRating ?? 0.0,
        imagePath:
            "${AppLink.imagepath}/${doctorsModel.doctorsImage}");
  }
}
