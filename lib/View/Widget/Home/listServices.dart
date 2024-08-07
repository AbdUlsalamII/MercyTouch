import 'package:mercy_touch/Core/app_export.dart';

class Listservices extends GetView<HomeControllerImp> {
  const Listservices({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: services.length,
        itemBuilder: (context, index) {
          final service = services[index];
          return ServiceWidget(service: service);
        },
      ),
    );
  }
}

class ServiceWidget extends StatelessWidget {
  final Service service;
  const ServiceWidget({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    HomeControllerImp Controller = Get.put(HomeControllerImp());
    return Container(
      child: InkWell(
        onTap: () {
          Controller.goToService(service);
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.symmetric(horizontal: 10),
              height: 100,
              width: 125,
              child: Image.asset(
                service.imagePath,
              ),
            ),
            SizedBox(
              height: 3,
            ),
            Text(
              service.name,
              // style: Theme.of(context).textTheme.headlineSmall,
            ),
          ],
        ),
      ),
    );
  }
}
