import 'package:mercy_touch/Core/app_export.dart'; 
class Laboratory extends StatelessWidget {
  const Laboratory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
                margin: EdgeInsets.only(top: 10),
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: ListView(
                  children: [
                    //!--- Search bar & Notification ---
                    CustomAppBar(
                      titleappbar: "find Laboratory .....",
                      onPressedicon: () {},
                      onPressedsearch: () {},
                    ),
                    

                  ],
                ),
              ),
    );
  }
}