import 'package:mercy_touch/Core/app_export.dart';

class CustomTextSubTitleAuth extends StatelessWidget {
  final String subtitle;
  const CustomTextSubTitleAuth({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        textAlign: TextAlign.center,
        subtitle,
        style: Theme.of(context).textTheme.labelMedium,
      ),
    );
  }
}
