part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const HOME = _Paths.HOME;
  static const LOGIN = _Paths.LOGIN;
  static const EDITNOTES = _Paths.EDITNOTES;
  static const DETAILOPNAME = _Paths.DETAILOPNAME;
  static const DETAIL = _Paths.DETAIL;
}

abstract class _Paths {
  static const HOME = '/home';
  static const EDITNOTES = '/editnotes';
  static const LOGIN = '/login';
  static const DETAIL = '/detail';
  static const DETAILOPNAME = '/detailopname';
}
