import 'package:api_advanced/shared/components/components/generate_color.dart';
import 'package:flutter/material.dart';

const Color defcolor = Color.fromARGB(255, 138, 27, 64);

TextTheme getDefTextTheme(context) {
  return Theme.of(context).textTheme.apply(
        bodyColor: defcolor,
        fontFamily: 'MyCoffeeBreak',
      );
}

TextStyle defTextStyle() {
  return const TextStyle(
      color: defcolor,
      fontFamily: 'MyCoffeeBreak',
      fontWeight: FontWeight.w500);
}

AppBarTheme getDefAppbarTheme(context) {
  return const AppBarTheme(
      color: defcolor,
      centerTitle: true,
      titleTextStyle: TextStyle(
          fontFamily: 'MyCoffeeBreak',
          fontSize: 30,
          fontWeight: FontWeight.bold));
}

ThemeData getDefaultTheme(context) {
  return ThemeData(
    primarySwatch: generateMaterialColor(defcolor),
    primaryIconTheme: const IconThemeData(
      color: Color.fromARGB(255, 138, 27, 64),
    ),
    brightness: Brightness.light,
    appBarTheme: getDefAppbarTheme(context),
    textTheme: getDefTextTheme(context),
  );
}
