import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/widget/app_bar.dart';
import 'package:modul_asset_management/widget/button.dart';
import 'package:modul_asset_management/widget/form.dart';

class EditNotes extends StatefulWidget {
  const EditNotes({super.key});

  @override
  State<EditNotes> createState() => _EditNotesState();
}

class _EditNotesState extends State<EditNotes> {
  final conditions = ["Good", "Bad", "Critical"];
  String? conditionValue;

  @override
  Widget build(BuildContext context) {

      DropdownMenuItem<String> buildMenuItemCondition(String item) =>
        DropdownMenuItem(
          value: item,
          child: Text(
            item,
            style: GoogleFonts.poppins(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          ),
        );

    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBarGlobal(
        title: "Update Data Opname",
        centerTitle: false,
        backgroundColor: orangeMain,
        leading: GestureDetector(
          onTap: () => Get.back(),
          child: Icon(
            Icons.arrow_back_ios_new,
            color: whiteColor,
            size: 20,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
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
                           Container(
                decoration: BoxDecoration(
                    border: Border.all(
                      color: Color(0xFFD9D9D9),
                    ),
                    borderRadius: BorderRadius.circular(10)),
                padding: EdgeInsets.symmetric(
                  horizontal: 10,
                ),
                child: DropdownButton<String>(
                  hint: Text(
                    "Select Condition Here",
                    style: GoogleFonts.poppins(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  icon: Icon(
                    Icons.arrow_forward_ios_rounded,
                    size: 16,
                    color: greyColor,
                  ),
                  isExpanded: true,
                  value: conditionValue,
                  elevation: 1,
                  borderRadius: BorderRadius.circular(10),
                  dropdownColor: Colors.white,
                  items: conditions.map(buildMenuItemCondition).toList(),
                  onChanged: (conditionValue) =>
                      setState(() => this.conditionValue = conditionValue),
                ),
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
              TextField(
                keyboardType: TextInputType.text,
                maxLines: 4,
                decoration: InputDecoration(
                  border: const OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Color(0xFFD9D9D9),
                      width: 0.8,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: orangeMain,
                      width: 0.8,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: CustomButton(
                  onPressed: () {},
                  text: "Save",
                  color: orangeMain,
                  height: 45,
                  width: double.infinity,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
