import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          colorSchemeSeed: Color(0xff5a73d8),
          textTheme: GoogleFonts.plusJakartaSansTextTheme(
              Theme.of(context).textTheme),
              useMaterial3: true,
              ),
      home: homepage(),
    );
  }
}
