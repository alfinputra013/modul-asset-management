import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/widget/button.dart';
import 'package:modul_asset_management/widget/form.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBar(
        backgroundColor: Colors.white,
        automaticallyImplyLeading: false,
        title: GestureDetector(
          onTap: () {
            Get.back();
          },
          child: Row(
            children: [
              Icon(
                Icons.arrow_back_ios_new,
                color: greyFont,
              ),
              const SizedBox(
                width: 3,
              ),
              Text(
                "Back",
                style: GoogleFonts.poppins(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: Text(
              "Update Data Opname",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: orangeMain,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Condition",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 14),
            ),
            const SizedBox(
              height: 4,
            ),
            const CustomTextField(
              suffixIcon: Icons.arrow_forward_ios_outlined,
              hintText: "Good",
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Attachment",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 14),
            ),
            const SizedBox(
              height: 4,
            ),
            Container(
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                image: const DecorationImage(
                  image: AssetImage(
                    "assets/images/laptop.jpg",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              "Notes",
              style: GoogleFonts.poppins(
                  fontWeight: FontWeight.w500, fontSize: 14),
            ),
            const TextField(
              keyboardType: TextInputType.text,
              maxLines: 4,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.grey,
                    width: 1.3,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.blueAccent,
                    width: 1.3,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: CustomButton(
                onPressed: () {},
                text: "Save",
                color: Colors.blueAccent,
                height: 35,
                width: 150,
              ),
            )
          ],
        ),
      ),
    );
  }
}
