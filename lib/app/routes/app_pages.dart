import 'package:cd_castellon/app/pages/clasificacion/clasificacion_binding.dart';
import 'package:cd_castellon/app/pages/clasificacion/clasificacion_page.dart';
import 'package:cd_castellon/app/pages/contacto/contacto_binding.dart';
import 'package:cd_castellon/app/pages/contacto/contacto_page.dart';
import 'package:cd_castellon/app/pages/news/home.dart';
import 'package:cd_castellon/app/pages/nextPartido/nextPartido_binding.dart';
import 'package:cd_castellon/app/pages/nextPartido/nextPartido_page.dart';
import 'package:cd_castellon/app/pages/patrocinadores/patrocinadores_binding.dart';
import 'package:cd_castellon/app/pages/patrocinadores/patrocinadores_page.dart';
import 'package:cd_castellon/app/pages/plantilla/binding.dart';
import 'package:cd_castellon/app/pages/plantilla/plantilla.dart';
import 'package:cd_castellon/app/pages/splash/splash.dart';
import 'package:cd_castellon/app/pages/temporada/jornada_detail.dart';
import 'package:cd_castellon/app/pages/temporada/partido_detail/partido_details.dart';
import 'package:cd_castellon/app/pages/temporada/resultadosTemporada_binding.dart';
import 'package:cd_castellon/app/pages/temporada/resultadosTemporada_home.dart';
import 'package:get/get.dart';

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

    //
    // GetPage(name: Routes.mainPartido, page: () => MainPartidoPage(), bindings: [
    //   MainPartidoBindings(),
    //   ResultadosBinding(),
    //   ClasificacionBinding(),
    //   PartidoHomeBinding()
    // ]),
    GetPage(name: Routes.jornada_detail, page: () => JornadaDetail()),
    GetPage(name: Routes.partido_detail, page: () => PartidoDetail()),
    // GetPage(name: Routes.resultados_temporada, page: () => ResultadosTemporada()),
    //
    //
    GetPage(
        name: Routes.patrocinadores,
        page: () => PatrocinadoresPage(),
        binding: PatrocinadoresBinding()),
    GetPage(
        name: Routes.contacto,
        page: () => ContactoPage(),
        binding: ContactoBinding()),
    GetPage(
        name: Routes.nextpartido,
        page: () => NextPartidoPage(),
        binding: NextPartidoBinding()),
    GetPage(
        name: Routes.clasificacion,
        page: () => ClasificacionPage(),
        binding: ClasificacionBinding()),
    GetPage(
        name: Routes.resultadosTemporada,
        page: () => ResultadosTemporadaPage(),
        binding: ResultadosTemporadaBinding()),
  ];
}