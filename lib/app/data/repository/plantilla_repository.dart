import 'package:cd_castellon/app/data/model/players.dart';
import 'package:cd_castellon/app/data/provider/plantilla_provider.dart';

class PlantillaRepository {
  PlantillaRepository({this.plantillaProvider});

  final PlantillaProvider plantillaProvider;

  Future<Jugadores> getJugadores() async {
    return plantillaProvider.getJugadores();
  }
}
