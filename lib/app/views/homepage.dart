import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/routes/app_pages.dart';
import 'package:modul_asset_management/widget/app_bar.dart';
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
      backgroundColor: whiteColor,
      appBar: AppBarGlobal(
        title: 'Modul Asset Management',
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: orangeMain,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
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
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.ALLDATA);
                        },
                        child: Text(
                          "See All",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: orangeMain,
                            decoration: TextDecoration.underline,
                            decorationColor: orangeMain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return InkWell(
                        onTap: () {
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
                  const SizedBox(
                    height: 26,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Stock Opname Due",
                        style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.ALLDATASTOCK);
                        },
                        child: Text(
                          "See All",
                          style: GoogleFonts.poppins(
                            fontSize: 13,
                            color: orangeMain,
                            decoration: TextDecoration.underline,
                            decorationColor: orangeMain,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ListView.builder(
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 4,
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
                  SizedBox(height: 30,),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(bottom: 8, right: 8),
        child: SizedBox(
          height: 60,
          width: 60,
          child: FloatingActionButton(
            elevation: 0,
            backgroundColor: orangeMain,
            onPressed: () {
              scanQR(context);
            },
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(100.0),
            ),
            child: SizedBox(
              height: 60,
              width: 60,
              child: const Icon(
                Icons.qr_code_2,
                size: 34,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
