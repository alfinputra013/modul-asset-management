import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/app/views/detail-item/detail_item.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/routes/app_pages.dart';
import 'package:modul_asset_management/widget/list_data.dart';
import 'package:qrscan/qrscan.dart' as scanner;

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
    Future<void> scanQR(BuildContext context) async {
    String scanResult;
    try {
      scanResult = (await scanner.scan())!;
    } catch (e) {
      scanResult = 'Error: $e';
    }
    // Handle the scan result, e.g., display it in a dialog
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        title: Text('Scan Result'),
        content: Text(scanResult),
        actions: <Widget>[
          TextButton(
            child: Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: orangeMain,
        centerTitle: true,
        title: Text(
          "Asset Management & Inventory",
          style: GoogleFonts.poppins(
            color: Colors.white,
            fontWeight: FontWeight.w500,
            fontSize: 14,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Asset Maintenance",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.blue[900],
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 300,
                decoration: BoxDecoration(border: Border.all()),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 3,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap:  () {
                       Get.toNamed(Routes.DETAIL);
                      },
                      child: const CustomListItem(
                        maintenance: "Cleansing Hardisk",
                        subtitle1: "Notebokk A",
                        subtitle2: "Laptop",
                        date: "12-12-2022",
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Stock Opname Due",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    "See All",
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      color: Colors.blue[900],
                      decoration: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                height: 200,
                decoration: BoxDecoration(border: Border.all()),
                child: ListView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: 2,
                  itemBuilder: (context, index) {
                    return InkWell(
                      onTap: () {
                       Get.toNamed(Routes.DETAILOPNAME);
                      },
                      child: const CustomListItem(
                        maintenance: "Cleansing Hardisk",
                        subtitle1: "Notebokk A",
                        subtitle2: "Laptop",
                        date: "12-12-2022",
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 20),
        child: FloatingActionButton(
          backgroundColor: whiteColor,
          onPressed: () {
          scanQR(context);
          },
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(28.0),
          ),
          child: const Icon(
            Icons.qr_code_2,
            size: 34,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}


