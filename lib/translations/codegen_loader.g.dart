// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> ru = {
  "all": "Все",
  "clients": "Клиенты",
  "injob": "В работе",
  "success": "Успешно",
  "archive": "Архив",
  "mysite": "Мой сайт",
  "assistent": "Ассистент",
  "marsel": "marsel.zeely.me",
  "promotion": "Продвижение"
};
static const Map<String,dynamic> en = {
  "all": "All",
  "clients": "Clients",
  "injob": "In job",
  "success": "Success",
  "archive": "Archive",
  "mysite": "My site",
  "assistent": "Assistent",
  "marsel": "marsel.zeely.me",
  "promotion": "Promotion"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"ru": ru, "en": en};
}
