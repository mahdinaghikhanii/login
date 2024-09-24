import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_youtobe/pages/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Auth',
        theme: ThemeData(
          textTheme: TextTheme(
              titleLarge: GoogleFonts.urbanist(
                  color: const Color(0xFF1E232C), fontWeight: FontWeight.w800),
              titleMedium: GoogleFonts.urbanist(
                color: const Color(0xFF1E232C),
              ),
              bodyMedium: GoogleFonts.urbanist(color: const Color(0xFF6A707C))),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple,
              onPrimary: const Color(0xFF35C2C1),
              primaryContainer: const Color(0xFF8391A1)),
          useMaterial3: true,
        ),
        home: const LoginPage());
  }
}
