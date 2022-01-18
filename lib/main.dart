import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:own_pets/pages/home_page.dart';
import 'package:own_pets/pages/intro_screen_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Home for pets',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: GoogleFonts.poppinsTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      home: const IntroScreenPage(),
    );
  }
}
