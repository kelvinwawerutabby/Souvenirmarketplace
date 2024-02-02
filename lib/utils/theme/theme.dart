import 'package:flutter/material.dart';
import 'package:eccomerceapp/utils/theme/custom_themes/text_theme.dart';
import 'package:eccomerceapp/utils/theme/custom_themes/chip_theme.dart';
import 'package:eccomerceapp/utils/theme/custom_themes/appbar_theme.dart';
import 'package:eccomerceapp/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:eccomerceapp/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:eccomerceapp/utils/theme/custom_themes/elevated_button_theme.dart';
import 'package:eccomerceapp/utils/theme/custom_themes/outlined_button_theme.dart';
import 'package:eccomerceapp/utils/theme/custom_themes/text_field_theme.dart';

class SAppTheme{
  SAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme:STextTheme.lightTextTheme,
    chipTheme: SChipTheme.lightChipTheme,
    scaffoldBackgroundColor: Colors.white,
    appBarTheme: SAppBarTheme.lightAppBarTheme,
    checkboxTheme: SCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme:SBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.lightInputDecoration,
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme:STextTheme.darkTextTheme,
    chipTheme: SChipTheme.darkChipTheme,
    scaffoldBackgroundColor: Colors.black,
    appBarTheme: SAppBarTheme.darkAppBarTheme,
    checkboxTheme: SCheckboxTheme.darkCheckboxTheme,
    bottomSheetTheme:SBottomSheetTheme.darkBottomSheetTheme,
    elevatedButtonTheme: SElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: SOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: STextFormFieldTheme.darkInputDecoration,
  );

}