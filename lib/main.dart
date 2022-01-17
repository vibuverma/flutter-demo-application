import 'package:flutter/material.dart';
import 'package:flutter_application_1_scratch/utils/routes.dart';
import 'pages/home_page.dart';
import 'pages/login_page.dart';
import 'package:flutter_application_1_scratch/widgets/themes.dart';
// import 'pages/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.light,
      theme: MyTheme.lightTheme(context),
      darkTheme: MyTheme.darkTheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => Homepgae(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
