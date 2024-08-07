import 'package:flutter/material.dart';

class BackgroundImageContainer extends StatelessWidget {
    final String imagePath;

  const BackgroundImageContainer({
    Key? key,
    required this.child, required this.imagePath,
  }) : super(key: key);

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imagePath),
          fit: BoxFit.fill,
        ),
      ),
      child: child,
    );
  }
}
