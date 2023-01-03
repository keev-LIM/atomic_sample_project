// ignore_for_file: constant_identifier_names

part of 'app_pages.dart';

abstract class Routes {
  Routes._();
  static const INITIAL = _Paths.INITIAL;
}

//test
abstract class _Paths {
  _Paths._();
  static const INITIAL = '/initial';
}
