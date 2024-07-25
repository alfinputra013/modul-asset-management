import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/widget/button.dart';
import 'package:modul_asset_management/widget/form.dart';

class StockOpname extends StatelessWidget {
  const StockOpname({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: whiteColor,
        body: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Name",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustomTextField(
                        hintText: "SO HO 01/04/2022",
                        enabled: false,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Location",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustomTextField(
                        hintText: "Head Office",
                        enabled: false,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Position",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustomTextField(
                        hintText: "All Position",
                        enabled: false,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Date",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustomTextField(
                        hintText: "10/12/2022",
                        enabled: false,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Category",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustomTextField(
                        hintText: "Laptop",
                        enabled: false,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Text(
                        "Stock Opname By",
                        style: GoogleFonts.poppins(
                            fontWeight: FontWeight.w500, fontSize: 14),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const CustomTextField(
                        hintText: "Cahyo",
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: CustomButton(
                text: "Update",
                onPressed: () {},
                color: orangeMain,
                width: double.infinity,
                height: 45,
              ),
            )
          ],
        ));
  }
}
