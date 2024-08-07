import 'package:mercy_touch/Core/app_export.dart'; 

class CustomSocialButton extends StatelessWidget {
  final String imagePath;
  const CustomSocialButton({super.key, required this.imagePath, required this.onTap});

  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: 50.0,
        height: 50.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
        ),
        child: Image.asset(imagePath),
      ),
    );
  }
}
