import 'package:mercy_touch/Core/app_export.dart';

ThemeData themeEnglish = ThemeData(
  fontFamily: "Raleway",
  // fontFamily: "Lumanosimo",
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: AppColor.bg,
    elevation: 0.0,
    titleTextStyle: TextStyle(
        color: AppColor.blue_one, fontWeight: FontWeight.bold, fontSize: 22),
  ),

  //* For Text form field
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(fontSize: 18, color: AppColor.grey_color),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
    suffixIconColor: AppColor.grey_color,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.grey_color),
      borderRadius: BorderRadius.circular(5.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.grey_color),
      borderRadius: BorderRadius.circular(5.0),
    ),
  ),
  //************************************ 
  //* For Text
// Theme.of(context).textTheme.headlineSmall,
  textTheme: const TextTheme(
    titleLarge: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
        color: AppColor.primary_color),
    titleMedium: TextStyle(
        fontSize: 25,
        fontWeight: FontWeight.bold,
        color: AppColor.primary_color),
    bodyMedium:
        TextStyle(color: AppColor.primary_color, fontWeight: FontWeight.w900),
    bodySmall:
        TextStyle(color: AppColor.primary_color, fontWeight: FontWeight.bold),
    bodyLarge: TextStyle(
        color: AppColor.white_color, fontWeight: FontWeight.bold, fontSize: 20),
    labelLarge: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w900,
      color: AppColor.grey_color,
    ),
    labelMedium: TextStyle(color: AppColor.black_color, fontSize: 18),
    labelSmall: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w900,
      color: AppColor.grey_color,
    ),
    headlineLarge: TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
        color: AppColor.primary_color),
        headlineMedium: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
        color: AppColor.primary_color),
        headlineSmall: TextStyle(
      fontSize: 13,
      color: AppColor.grey_text_color,
    ),
    displayLarge: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: AppColor.primary_color),
  ),
);
//!--------------------------------------------------------------------------------------------------
ThemeData themeArabic = ThemeData(
  fontFamily: "PlayfairDisplay",
  //fontFamily: "",
  appBarTheme: AppBarTheme(
    centerTitle: true,
    backgroundColor: AppColor.bg,
    elevation: 0.0,
    titleTextStyle: TextStyle(
        color: AppColor.blue_one, fontWeight: FontWeight.bold, fontSize: 22),
  ),

  //* For Text form field
  inputDecorationTheme: InputDecorationTheme(
    hintStyle: TextStyle(fontSize: 14, color: AppColor.blue_three),
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: EdgeInsets.symmetric(vertical: 5, horizontal: 35),
    labelStyle: TextStyle(
        fontWeight: FontWeight.bold, fontSize: 18, color: AppColor.blue_two),
    suffixIconColor: AppColor.blue_two,
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.blue_two),
      borderRadius: BorderRadius.circular(25.0),
    ),
    focusedBorder: OutlineInputBorder(
      borderSide: BorderSide(color: AppColor.blue_two),
      borderRadius: BorderRadius.circular(25.0),
    ),
  ),
  //* For Text
  textTheme: const TextTheme(
    titleMedium: TextStyle(
        fontSize: 25, fontWeight: FontWeight.bold, color: AppColor.blue_two),
    bodyMedium: TextStyle(color: AppColor.blue_two),
    bodySmall: TextStyle(color: AppColor.blue_two, fontWeight: FontWeight.bold),
  ),
);
