import 'package:mercy_touch/Core/app_export.dart';

class CustomTitleHome extends StatelessWidget {
  final String title;
  const CustomTitleHome({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      child: Text(
        title,
        style: Theme.of(context).textTheme.displayLarge,
      ),
    );
  }
}
