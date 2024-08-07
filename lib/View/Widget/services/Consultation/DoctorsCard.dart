import 'package:mercy_touch/Core/app_export.dart';

class DoctorsCard extends StatelessWidget {
  final String doctorName;
  final String specialty;
  final double rating;
  final String imagePath;
  // final OnTap onTap;
  const DoctorsCard(
      {super.key,
      required this.doctorName,
      required this.specialty,
      required this.rating,
      required this.imagePath,
      // required this.onTap
      });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 240,
        height: 260,
        child: InkWell(
          onTap: (){},
          child: Card(
            color: AppColor.bg,
              elevation: 7,
              shadowColor: AppColor.primary_color,
              margin: EdgeInsets.all(16.0),
              child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipOval(
                            child: Image.network(
                              imagePath,
                              width: 80,
                              height: 80,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            doctorName,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            specialty,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          SizedBox(height: 8),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Icon(Icons.star, color: Colors.amber),
                                  SizedBox(
                                    width: 1,
                                  ),
                                  Text(
                                    rating.toString(),
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ],
                      )),
                    ],
                  ))),
        ));
  }
}
