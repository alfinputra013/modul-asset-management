import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/routes/app_pages.dart';
import 'package:modul_asset_management/widget/app_bar.dart';
import 'package:modul_asset_management/widget/list_data.dart';

class AllDataAssets extends StatefulWidget {
  const AllDataAssets({super.key});

  @override
  State<AllDataAssets> createState() => _AllDataAssetsState();
}

class _AllDataAssetsState extends State<AllDataAssets> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBarGlobal(
        title: "All Data Assets",
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
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "All Asset Maintenance",
                  style: GoogleFonts.poppins(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.only(bottom: 10),
                itemCount: 10,
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
            ),
          
          ],
        ),
      ),
    );
  }
}
