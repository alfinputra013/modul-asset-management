import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/app/views/homepage.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/routes/app_pages.dart';
import 'package:modul_asset_management/widget/button.dart';
import 'package:modul_asset_management/widget/form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;

  void _toggleVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 140,
              width: 180,
              decoration: const BoxDecoration(
                color: Colors.orangeAccent,
                image: DecorationImage(
                    image: AssetImage("assets/images/logomemi.jpeg"),
                    fit: BoxFit.fill),
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Email",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
                const CustomTextField(),
              ],
            ),
            const SizedBox(
              height: 15,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Password",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 14),
                ),
                CustomTextField(
                  obscureText: _obscureText,
                  onSuffixIconPressed: _toggleVisibility,
                  suffixIcon:
                      _obscureText ? Icons.visibility : Icons.visibility_off,
                ),
              ],
            ),
            const SizedBox(
              height: 25,
            ),
            CustomButton(
              onPressed: () {
                // Get.to(() => const HomePage());
                Get.toNamed(Routes.HOME);
              },
              text: "Login",
              width: MediaQuery.of(context).size.width * 0.6,
              height: 35,
              color: orangeMain,
            ),
          ],
        ),
      ),
    );
  }
}
