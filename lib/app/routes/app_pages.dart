import 'package:cd_castellon/app/pages/contacto/contacto_binding.dart';
import 'package:cd_castellon/app/pages/contacto/contacto_page.dart';
import 'package:cd_castellon/app/pages/patrocinadores/patrocinadores_binding.dart';
import 'package:cd_castellon/app/pages/patrocinadores/patrocinadores_page.dart';
import 'package:cd_castellon/app/pages/plantilla/binding.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/pages/partido/clasificacion/binding.dart';
import 'package:cd_castellon/app/pages/partido/home/binding.dart';
import 'package:cd_castellon/app/pages/partido/resultados/resultados_binding.dart';

import 'package:cd_castellon/app/pages/news/home.dart';
import 'package:cd_castellon/app/pages/partido/main/main_partido_bindings.dart';
import 'package:cd_castellon/app/pages/partido/main/main_partido_page.dart';
import 'package:cd_castellon/app/pages/partido/resultados/jornada_detail.dart';
import 'package:cd_castellon/app/pages/partido/resultados/partido_detail/partido_details.dart';
import 'package:cd_castellon/app/pages/partido/resultados/resultados_home.dart';

import 'package:cd_castellon/app/pages/plantilla/plantilla.dart';
import 'package:cd_castellon/app/pages/splash/splash.dart';
part './app_routes.dart';


class AppPages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => SplashScreen(),
    ),
    GetPage(
      name: Routes.news,
      page: () => HomePage(),
    ),
    GetPage(
        name: Routes.plantilla,
        page: () => PlantillaPage(),
        binding: PlantillaBinding()),
    GetPage(name: Routes.mainPartido, page: () => MainPartidoPage(), bindings: [
      MainPartidoBindings(),
      ResultadosBinding(),
      ClasificacionBinding(),
      PartidoHomeBinding()
    ]),
    GetPage(name: Routes.jornada_detail, page: () => JornadaDetail()),
    GetPage(name: Routes.partido_detail, page: () => PartidoDetail()),
    GetPage(
        name: Routes.resultados_temporada, page: () => ResultadosTemporada()),
    GetPage(
        name: Routes.patrocinadores,
        page: () => PatrocinadoresPage(),
        binding: PatrocinadoresBinding()),
    GetPage(
        name: Routes.contacto,
        page: () => ContactoPage(),
        binding: ContactoBinding()),
  ];
}