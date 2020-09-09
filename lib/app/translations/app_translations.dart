import 'package:cd_castellon/app/translations/en_US/en_us_translations.dart';
import 'package:cd_castellon/app/translations/es_ES/es_es_translations.dart';
import 'package:cd_castellon/app/translations/es_MX/es_mx_translations.dart';
import 'package:cd_castellon/app/translations/pt_BR/pt_br_translations.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> 
  translations = 
{
    'es_ES' : esES,
    'pt_BR' : ptBR,
    'en_US' : enUS,
    'es_MX' : esMX
};

}
