import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tuluos_welcome/ui/screens/tabs.dart';

void main() {
  runApp(const MyApp());
}

final theme = ThemeData.light().copyWith(
  textTheme: GoogleFonts.latoTextTheme(),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
    ),
  ),
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(theme: theme, home: const TabScreen());
  }
}
