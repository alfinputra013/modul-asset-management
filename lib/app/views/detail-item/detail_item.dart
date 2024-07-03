import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/widget/button.dart';
import 'package:modul_asset_management/widget/form.dart';

class DetailItem extends StatefulWidget {
  const DetailItem({super.key});

  @override
  State<DetailItem> createState() => _DetailItemState();
}

class _DetailItemState extends State<DetailItem> {
  String dropDownValue = 'Pilih Status';
  @override
  Widget build(BuildContext context) {
    Future<void> selectedDate(BuildContext context) async {
      await showDatePicker(
          context: context,
          firstDate: DateTime(200),
          lastDate: DateTime(2100),
          initialDate: DateTime.now());
    }

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
              "Asset Maintenance",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: orangeMain,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 10,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Name Maintenance",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const EditTextField(
                hintText: "Cleansing Hardisk",
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Maintenance Category",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const EditTextField(
                hintText: "Preventive Maintenance",
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Description Maintenance",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const EditTextField(
                hintText: "Pembersihan Hardisk",
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Maintenance Date",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const EditTextField(
                hintText: "10/12/2022",
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Maintenance by",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const EditTextField(
                hintText: "IT",
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Maintenance Status",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                width: double.infinity,
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 5),
                    hintText: "Select Status",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Date Completed",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.76,
                    height: 35,
                    child: TextField(
                      readOnly: true,
                      onTap: () {
                        selectedDate(context);
                      },
                      decoration: const InputDecoration(
                          contentPadding: EdgeInsets.only(top: 5, left: 5),
                          hintText: "Select date",
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                            color: Colors.black,
                          ))),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  const Icon(Icons.calendar_month, size: 32),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Service Category",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const EditTextField(
                hintText: "Replace Sparepart",
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Replacement Spareport",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                width: double.infinity,
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 5),
                    hintText: "Yes",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                width: double.infinity,
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 5),
                    hintText: "Spareport Component",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                    suffixIcon: Icon(
                      Icons.arrow_forward_ios,
                      size: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Text(
                "Maintenance Cost",
                style: GoogleFonts.poppins(
                    fontWeight: FontWeight.w500, fontSize: 14),
              ),
              const SizedBox(
                height: 5,
              ),
              const SizedBox(
                width: double.infinity,
                height: 35,
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.only(top: 5, left: 5),
                    hintText: "Rp. 500.000",
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder( borderSide: BorderSide(
                        color: Colors.black,
                      ),),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                onPressed: () {},
                text: "Update",
                color: Colors.blueAccent,
                height: 45,
                width: double.infinity,
              ),
              const SizedBox(
                height: 30,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
