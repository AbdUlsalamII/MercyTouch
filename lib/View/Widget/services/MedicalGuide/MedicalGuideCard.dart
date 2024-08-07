import 'package:mercy_touch/Core/app_export.dart';

class MedicalGuideCard extends StatelessWidget {
  final String elementName;
  final String location;
  final int phone;
  // final String imagePath;
  // final OnTap onTap;
  const MedicalGuideCard({
    super.key,
    required this.elementName,
    required this.location,
    required this.phone,
    // required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 240,
        height: 260,
        child: InkWell(
          onTap: () {},
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
                          // ClipOval(
                          //   child: Image.asset(
                          //     AppImageAsset.logo,
                          //     width: 80,
                          //     height: 80,
                          //     fit: BoxFit.cover,
                          //   ),
                          // ),
                          SizedBox(height: 8),
                          Text(
                            elementName,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 8),
                          Text(
                            phone.toString(),
                            style: TextStyle(fontSize: 14),
                          ),
                          SizedBox(height: 8),
                          Text(
                            location,
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey[600],
                            ),
                          ),
                          
                        ],
                      )),
                    ],
                  ))),
        ));
  }
}
