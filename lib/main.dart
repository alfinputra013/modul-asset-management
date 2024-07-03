import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:modul_asset_management/app/auth/loginpage.dart';
import 'package:modul_asset_management/app/views/homepage.dart';
import 'package:modul_asset_management/routes/app_pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return  GetMaterialApp(
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
      title: 'Modul Asset Management',
      home: LoginPage(),
    );
  }
}
