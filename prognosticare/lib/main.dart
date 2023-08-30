import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:prognosticare/src/pages/auth/view/sign_in_screen.dart';
import 'package:prognosticare/src/pages_routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'PrognostiCare',
      theme: ThemeData(
        primarySwatch: Colors.pink, // Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: SignInScreen(),
      initialRoute: PagesRoutes.signInRoute,
      getPages: AppPages.pages,
    );
  }
}
