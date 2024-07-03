import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/app/views/tab-bar-view.dart/assets_detail.dart';
import 'package:modul_asset_management/app/views/tab-bar-view.dart/notes_all.dart';
import 'package:modul_asset_management/app/views/tab-bar-view.dart/stock_opname.dart';
import 'package:modul_asset_management/core/theme.dart';

class DetailItemOpname extends StatefulWidget {
  const DetailItemOpname({super.key});

  @override
  State<DetailItemOpname> createState() => _DetailItemOpnameState();
}

class _DetailItemOpnameState extends State<DetailItemOpname>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

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
              "Stock Opname",
              style: GoogleFonts.poppins(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: orangeMain,
              ),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
              // transform: Matrix4.translationValues(0, -40, 0),
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(
                  color: greyFont,
                  width: 1.3,
                ),
                borderRadius: BorderRadius.circular(5),
              ),
              child: TabBar(
                dividerHeight: 0,
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.blueAccent,
                ),
                labelColor: Colors.white,
                unselectedLabelColor: greyFont,
                labelStyle:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                unselectedLabelStyle:
                    const TextStyle(fontSize: 11, fontWeight: FontWeight.w500),
                tabs: const [
                  Tab(text: 'Stock Opname'),
                  Tab(text: 'Assets Detail'),
                  Tab(text: 'Notes All'),
                ],
              ),
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                StockOpname(),
                AssetsDetail(),
                NotesAll(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
