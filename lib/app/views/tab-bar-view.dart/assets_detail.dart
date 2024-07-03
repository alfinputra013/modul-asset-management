import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/routes/app_pages.dart';
import 'package:modul_asset_management/widget/list_data.dart';

class AssetsDetail extends StatelessWidget {
  const AssetsDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
        child: Container(
          decoration: BoxDecoration(border: Border.all()),
          child: ListView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: 3,
            itemBuilder: (context, index) {
              return InkWell(
                onTap: () {
                  Get.toNamed(Routes.EDITNOTES);
                },
                child: const CustomOpname(
                  icon: Icons.edit,
                  iconColor: Colors.black,
                  kode: "02022001",
                  merk: "Notebook A",
                  condition: "Good",
                  image1: 'assets/images/laptop.jpg',
                  location: "Head Office, HO Laptop Storage",
                  asset: "Laptop",
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
