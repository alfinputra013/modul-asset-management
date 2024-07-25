import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:modul_asset_management/app/views/tab-bar-view.dart/assets_detail.dart';
import 'package:modul_asset_management/app/views/tab-bar-view.dart/notes_all.dart';
import 'package:modul_asset_management/app/views/tab-bar-view.dart/stock_opname.dart';
import 'package:modul_asset_management/core/theme.dart';
import 'package:modul_asset_management/widget/app_bar.dart';

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: whiteColor,
      appBar: AppBarGlobal(
        title: "Stock Opname",
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
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 10),
            child: Container(
              height: 35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(5),
              ),
              child: TabBar(
                dividerHeight: 0,
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.label,
                indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(color: orangeMain, width: 2.5),
                  insets: const EdgeInsets.symmetric(horizontal: 5.0),
                  borderRadius: const BorderRadius.vertical(
                    top: Radius.circular(5),
                  ),
                ),
                labelColor: orangeMain,
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
