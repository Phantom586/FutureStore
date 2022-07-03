import 'package:flutter/material.dart';

const Color primaryColor = Color(0xFFF9F9F9);
const Color secondaryColor = Color(0xFFFC975F);
const Color matteBlue = Color(0xFF023047);

class AppTheme {
  static ThemeData light(BuildContext context) => ThemeData(
        textTheme: Theme.of(context).textTheme.copyWith(
              headline1: const TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
      );
}
