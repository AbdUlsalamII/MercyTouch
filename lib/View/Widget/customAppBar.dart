import 'package:mercy_touch/Core/app_export.dart';

class CustomAppBar extends StatelessWidget {
  final String titleappbar;
  final void Function()? onPressedicon;
  final void Function()? onPressedsearch;
  const CustomAppBar(
      {super.key,
      required this.titleappbar,
      this.onPressedicon,
      this.onPressedsearch});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: InputDecoration(
                  prefixIcon: IconButton(
                      onPressed: onPressedsearch, icon: Icon(Icons.search)),
                  hintText: titleappbar,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  filled: false,
                  fillColor: AppColor.grey_allow_color),
            ),
          ),
          Container(
            padding:
                EdgeInsetsDirectional.symmetric(vertical: 8, horizontal: 8),
            child: IconButton(
                onPressed: onPressedicon,
                icon: Icon(
                  Icons.notifications_active_outlined,
                  size: 35,
                  color: AppColor.primary_color,
                )),
          ),
        ],
      ),
    );
  }
}
