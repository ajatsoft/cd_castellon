import 'package:cd_castellon/app/data/model/modelClasificacion.dart';
import 'package:cd_castellon/app/data/provider/clasificacion_provider.dart';

class ClasificacionRepository {
  ClasificacionRepository({this.clasificacionProvider});

  final ClasificacionProvider clasificacionProvider;

  Future<Standings> getClasificacion() async {
    return clasificacionProvider.getClasificacion();
  }
}
