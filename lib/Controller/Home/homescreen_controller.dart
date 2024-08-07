import 'package:mercy_touch/Core/app_export.dart';

abstract class HomeScreenController extends GetxController {
  changePage(int currentpage);
}

class HomeScreenControllerImp extends HomeScreenController {
  int currentpage = 0;
  List<Widget> listPage = [
    const Home(),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("favorite"),
        )
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("Setting"),
        )
      ],
    ),
    Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text("profile"),
        )
      ],
    ),
  ];
  List titlebottomappbar = [
    "Home",
    "Favorite",
    "Setting",
    "Profile",
  ];
  List<IconData> iconbottomappbar = [
    Icons.home,
    Icons.favorite,
    Icons.settings,
    Icons.person,
  ];

  @override
  changePage(int i) {
    currentpage = i;
    update();
  }
}
