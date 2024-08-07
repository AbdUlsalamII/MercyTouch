import 'package:mercy_touch/Core/app_export.dart'; 



class CustomTextTitleAuth extends StatelessWidget {
  final String title;
  const CustomTextTitleAuth({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.titleLarge,
    );
  }
}
