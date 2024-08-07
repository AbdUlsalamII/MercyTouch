import 'package:flutter/material.dart';
import 'package:mercy_touch/Core/Constant/imageasset.dart';

class LogoAuth extends StatelessWidget {
  const LogoAuth({super.key}); 

  @override
  Widget build(BuildContext context) {
    return Image.asset(AppImageAsset.logo,height: 170.0,);
  }
}
