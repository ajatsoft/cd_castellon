import 'package:cd_castellon/app/data/model/livePartidoModel.dart';
import 'package:cd_castellon/app/data/model/nextPartidoModel.dart';
import 'package:cd_castellon/app/data/model/partidoHome_model.dart';
import 'package:cd_castellon/app/data/provider/nextPartido_provider.dart';
import 'package:cd_castellon/app/data/provider/partidoHome_provider.dart';

class NextPartidoRepository {
  NextPartidoRepository({this.nextPartidoProvider});

  final NextPartidoProvider nextPartidoProvider;

  Future<NextPartido> getPartidoHome() async {
    return nextPartidoProvider.getPartidoHome();
  }

// Future<NextPartidoDataModel> getNextPartidoDetail(id) async {
//     print(id);
//     return nextPartidoProvider.getPartidoDetail(id);
//   }
  Future<LivePartidoDataDetail> getLivePartidoDetail(id) async {
    print(id);
    return nextPartidoProvider.getLivePartidoDataDetail(id);
  }
}
