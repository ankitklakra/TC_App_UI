import 'package:baseapp/MainPage.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Start Base',
      theme: ThemeData(
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.orange,
          onBackground: Colors.orange,
          onPrimary: Colors.purple,
          onSecondary: Colors.purple,
      brightness: Brightness.light
        ),
        textTheme:  TextTheme(
          titleLarge:GoogleFonts.shareTechMono(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.normal,
              fontSize: 25,
          ),
          labelLarge: GoogleFonts.oswald(),
        ),
      ),

      home:MainPage(),
    );
  }
}

