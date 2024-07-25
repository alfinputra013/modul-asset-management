import 'package:get/get.dart';
import 'package:modul_asset_management/app/auth/loginpage.dart';
import 'package:modul_asset_management/app/views/detail-item/all_data_assets.dart';
import 'package:modul_asset_management/app/views/detail-item/all_data_stock.dart';
import 'package:modul_asset_management/app/views/detail-item/detail_item.dart';
import 'package:modul_asset_management/app/views/detail-item/detail_item_opname.dart';
import 'package:modul_asset_management/app/views/homepage.dart';
import 'package:modul_asset_management/app/views/tab-bar-view.dart/edit_notes.dart';

import '../main.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomePage(),
    ),
    GetPage(
      name: _Paths.ALLDATA,
      page: () => const AllDataAssets(),
    ),
    GetPage(
      name: _Paths.ALLDATASTOCK,
      page: () => const AllDataStock(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: _Paths.EDITNOTES,
      page: () => const EditNotes(),
    ),
    GetPage(
      name: _Paths.DETAIL,
      page: () => const DetailItem(),
    ),
    GetPage(
      name: _Paths.DETAILOPNAME,
      page: () => const DetailItemOpname(),
    ),
  ];
}
