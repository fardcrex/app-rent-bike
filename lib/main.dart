import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import './views/init_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    return MaterialApp(
      title: 'Renta de Bicicletas',
      theme: ThemeData(
        // Define the default brightness and colors.
        brightness: Brightness.light,
        primaryColor: const Color(0xff5068a9),

        accentColor: const Color(0xff324e7b),

        // Define the default font family.

        // Define the default TextTheme. Use this to specify the default
        // text styling for headlines, titles, bodies of text, and more.

        textTheme: GoogleFonts.sourceCodeProTextTheme(textTheme).copyWith(
          headline6: GoogleFonts.alegreya(textStyle: textTheme.headline6),
        ),
      ),
      home: const InitPage(),
    );
  }
}
