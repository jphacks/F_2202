import 'app_localization.dart';

/// The translations for Japanese (`ja`).
class AppLocalizationJa extends AppLocalization {
  AppLocalizationJa([String locale = 'ja']) : super(locale);

  @override
  String get search_place_button => '場所を探す';

  @override
  String get search_place_text_field_hint => '場所を検索する';
}
