import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/data/model/modelClasificacion.dart';
import 'package:cd_castellon/app/pages/partido/clasificacion/controller.dart';

class CompetitionTable extends GetView<ClasificacionController> {
  final List<Entry> entries;
  // final bool showCompetition;

  const CompetitionTable(this.entries);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 30),
          child:
              // buildDataTable(context),
              buildPositions(context),
        ),
      ],
      // padding:
      // child:
    );
  }

  Widget getStatusIcon(status) {
    switch (status) {
      case 19:
        return Icon(
          Icons.keyboard_arrow_down,
          size: 18,
          color: Colors.red,
        );
        break;
      case 20:
        return Icon(
          Icons.keyboard_arrow_down,
          size: 18,
          color: Colors.red,
        );
        break;
      case 21:
        return Icon(
          Icons.keyboard_arrow_down,
          size: 18,
          color: Colors.red,
        );
        break;
      case 22:
        return Icon(
          Icons.keyboard_arrow_down,
          size: 18,
          color: Colors.red,
        );
        break;
      case 1:
        return Icon(
          Icons.keyboard_arrow_up,
          size: 18,
          color: Colors.green,
        );
        break;
      case 2:
        return Icon(
          Icons.keyboard_arrow_up,
          size: 18,
          color: Colors.green,
        );
        break;
      case 3:
        return Icon(
          Icons.keyboard_arrow_up,
          size: 18,
          color: Colors.blue,
        );
        break;
      case 4:
        return Icon(
          Icons.keyboard_arrow_up,
          size: 18,
          color: Colors.blue,
        );
        break;
      case 5:
        return Icon(
          Icons.keyboard_arrow_up,
          size: 18,
          color: Colors.blue,
        );
        break;
      case 6:
        return Icon(
          Icons.keyboard_arrow_up,
          size: 18,
          color: Colors.blue,
        );
        break;
    }
  }

  Widget buildPositions(BuildContext context) {
    var rows = List<TableRow>();
    rows.add(buildTableHead(context));
    var lastDescription = '';

    for (int i = 0; i < entries.length; ++i) {
      var position = entries[i];
      rows.add(TableRow(
          decoration: BoxDecoration(
              color: (i.isOdd ? Colors.white12 : Colors.black12),
              border: Border(
                  top: BorderSide(
                      color: (position.team.name != lastDescription
                          ? Colors.black
                          : Theme.of(context).dividerColor)))),
          children: [
            TableCell(
              child: (position.note != null)
                  ? Padding(
                  padding: const EdgeInsets.only(
                      left: 4),
                  child: getStatusIcon(position.note.rank))
                  : Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 0, vertical: 0),
                  child: Icon(Icons.remove, size: 18)),
            ),
            TableCell(
              child: Padding(
                  padding:
                  const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8.0),
                  child: Text(
                    position.stats[8].value.toString(),
                    style: Theme
                        .of(context)
                        .textTheme
                        .bodyText2,
                    textAlign: TextAlign.right,
                  )),
            ),
            TableCell(
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 8.0),
                  child: (position.team.logos != null)
                      ? LogoIcon(position.team.logos[0].href, 16, false)
                      : LogoIconAsset(position.team.name, 16, false)),
            ),
            TableCell(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 8.0),
                child: Text(
                  position.team.name.toString(),
                  style: Theme.of(context)
                      .textTheme
                      .bodyText2
                      .copyWith(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 8.0),
                child: Text(
                  position.stats[3].value.toString(),
                  style: Theme.of(context).textTheme.bodyText2,
                  textAlign: TextAlign.right,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${position.stats[0].value.toString()}-${position.stats[2].value.toString()}-${position.stats[1].value.toString()}',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),
            TableCell(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  '${position.stats[4].value.toString()}:${position.stats[5].value.toString()}',
                  style: Theme.of(context).textTheme.bodyText2,
                ),
              ),
            ),

            TableCell(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text(
                  position.stats[6].value.toString(),
                  style: Theme.of(context).textTheme.bodyText2.copyWith(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.right,
                ),
              ),
            ),

            // TableCell(
            //   child: Padding(
            //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
            //     child: Text(
            //       position.stats[9].value.toString(),
            //       style: Theme.of(context).textTheme.bodyText2,
            //       textAlign: TextAlign.right,
            //     ),
            //   ),
            // ),

          ]));

      lastDescription = position.team.displayName;
    }
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Table(
          defaultVerticalAlignment: TableCellVerticalAlignment.middle,
          columnWidths: {
            0: IntrinsicColumnWidth(),
            1: IntrinsicColumnWidth(),
            2: IntrinsicColumnWidth(),
            3: IntrinsicColumnWidth(),
            4: IntrinsicColumnWidth(),
            5: IntrinsicColumnWidth(),
            6: IntrinsicColumnWidth(),
            // 7: IntrinsicColumnWidth(),
            // 8: IntrinsicColumnWidth(),
          },
          children: rows),
    );
  }

  TableRow buildTableHead(BuildContext context) {
    return TableRow(
        decoration: BoxDecoration(
            border: Border(bottom: BorderSide(color: Colors.black))),
        children: [
          TableCell(
            child: Container(
              child: Padding(
                padding:
                const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8),
                child: Text(
                  '',
                  style: Theme
                      .of(context)
                      .textTheme
                      .caption,
                ),
              ),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 0.0, vertical: 8),
              child: Text(
                'Pos.',
                textAlign: TextAlign.right,
                style: Theme
                    .of(context)
                    .textTheme
                    .caption,
              ),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Text(
                'Equipo',
                style: Theme
                    .of(context)
                    .textTheme
                    .caption,
              ),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Text(
                'Pj',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Text(
                'G-E-P',
                style: Theme.of(context).textTheme.caption,
              ),
            ),
          ),
          TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Text(
                'GF/GC',
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.center,
              ),
            ),
          ),

          TableCell(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 8),
              child: Text(
                'Pts',
                style: Theme.of(context).textTheme.caption,
                textAlign: TextAlign.right,
              ),
            ),
          ),

          // TableCell(
          //   child: Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8),
          //     child: Text(
          //       '+/-',
          //       style: Theme.of(context).textTheme.caption,
          //       textAlign: TextAlign.right,
          //     ),
          //   ),
          // ),
        ]);
  }
}

class LogoIcon extends StatelessWidget {
  final String url;
  final double height;
  final bool allowSvg;

  const LogoIcon(this.url, this.height, this.allowSvg);

  @override
  Widget build(BuildContext context) {
    try {
      if (url != null && url.isNotEmpty) {
        if (allowSvg && url.toLowerCase().endsWith('.svg')) {
          return Image.network(
            url,
            height: height,
//             placeholderBuilder: (BuildContext context) => Container(
// //                padding: const EdgeInsets.all(30.0),
//                 child: const CircularProgressIndicator()),
          );
        }
        if (url.toLowerCase().endsWith('.png')) {
          return Image.network(
            url,
            height: height,
          );
        }
      }
    } catch (e) {
      print('Exception in _buildImage for $url: $e');
    }

    return CircleAvatar(
      backgroundColor: Colors.grey,
      maxRadius: height / 2,
    );
  }
}

class LogoIconAsset extends StatelessWidget {
  final String team;
  final double height;
  final bool allowSvg;

  const LogoIconAsset(this.team, this.height, this.allowSvg);

  @override
  Widget build(BuildContext context) {
    try {
      if (team == "Castellon") {
        return Image.asset(
          'images/castellon.png',
          height: height,
        );
      } else if (team == "FC Cartagena") {
        return Image.asset(
          'images/carthagene.png',
          height: height,
        );
      } else if (team == "CD Sabadell") {
        return Image.asset(
          'images/sabadell.png',
          height: height,
        );
      } else {
        return Image.asset(
          'images/ud-logrones.png',
          height: height,
        );
      }
    } catch (e) {
      print('Exception in _buildImage for : $e');
    }
    return CircleAvatar(
      backgroundColor: Colors.grey,
      maxRadius: height / 2,
    );
  }
}

