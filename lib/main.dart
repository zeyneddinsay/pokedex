import 'package:flutter/material.dart';
import 'package:flutter_pokedex/pages/home_page.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(412, 732),
      builder: () => MaterialApp(
        debugShowCheckedModeBanner: false,
        title: ' pokedex',
        theme:
            ThemeData.dark().copyWith(textTheme: GoogleFonts.latoTextTheme()),
        home: const HomePage(),
      ),
    );
  }
}
