import 'package:cd_castellon/app/data/model/livePartidoModel.dart';
import 'package:cd_castellon/app/pages/widgets_general/dots_loader.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:timeline_tile/timeline_tile.dart';

import '../nextPartido_controller.dart';

class NextPartidoLive extends GetView<NextPartidoController> {
  final LivePartidoDataDetail partido;

  NextPartidoLive(this.partido);

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (controller.isLoading) {
        return Center(
          child: ColorLoader(),
        );
      }
      return Scaffold(
        backgroundColor: Colors.transparent,
        extendBodyBehindAppBar: false,
        body: Obx(
          () => Column(
            children: <Widget>[
              (controller.eventos != null)
                  ? Expanded(
                      child: CustomScrollView(
                        slivers: <Widget>[
                          SliverList(
                            delegate: SliverChildListDelegate(<Widget>[
                              const _MessageTimeline(
                                message: 'Inicio del partido!',
                              ),
                            ]),
                          ),
                          _TimelineFootball(
                            data: controller.eventos,
                            partido: partido,
                          ),
                          (partido.header.competitions[0].status.type
                                      .completed ==
                                  true)
                              ? SliverList(
                                  delegate: SliverChildListDelegate(<Widget>[
                                    const _MessageTimeline(
                                      message: 'Fin del partido!',
                                    ),
                                  ]),
                                )
                              : SliverList(
                                  delegate: SliverChildListDelegate(<Widget>[
                                    _MessageTimeline(
                                      message: partido.header.competitions[0]
                                          .status.type.shortDetail,
                                    ),
                                  ]),
                                ),
                          const SliverPadding(
                              padding: EdgeInsets.only(top: 20)),
                        ],
                      ),
                    )
                  : Container(
                      child: Center(
                          child: Padding(
                      padding: const EdgeInsets.only(top: 18.0),
                      child: Text(
                          'Partido no iniciado,\no no hay datos que mostrar aún'),
                    ))),
            ],
          ),
        ),
      );
    });
  }
}

class _TimelineFootball extends StatelessWidget {
  const _TimelineFootball({Key key, this.data, this.partido}) : super(key: key);

  final List<KeyEvent> data;
  final LivePartidoDataDetail partido;

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
            (BuildContext context, int index) {
          final KeyEvent event = data[index];
          final isLeftChild =
              event.team.id == partido.header.competitions[0].competitors[0].id;
          final child = _TimelineFootballChild(
            action: event.type.text,
            title: event.type.text,
            subtitle: event.text,
            isLeftChild: isLeftChild,
          );

          return TimelineTile(
            alignment: TimelineAlign.center,
            endChild: isLeftChild ? null : child,
            startChild: isLeftChild ? child : null,
            indicatorStyle: IndicatorStyle(
              width: 40,
              height: 40,
              indicator:
                  _TimelineFootballIndicator(time: event.clock.displayValue),
              drawGap: true,
            ),
            beforeLineStyle: LineStyle(
              color: Colors.white.withOpacity(0.2),
              thickness: 3,
            ),
          );
        },
        childCount: data.length,
      ),
    );
  }
}

class _MessageTimeline extends StatelessWidget {
  const _MessageTimeline({Key key, this.message}) : super(key: key);

  final String message;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.all(8),
        margin: const EdgeInsets.symmetric(horizontal: 16),
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.2),
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Flexible(
              child: Text(
                message,
                textAlign: TextAlign.center,
                // style: GoogleFonts.dosis(
                //   fontSize: 16,
                //   color: Colors.white,
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TimelineFootballChild extends StatelessWidget {
  const _TimelineFootballChild({
    Key key,
    this.action,
    this.title,
    this.subtitle,
    this.isLeftChild,
  }) : super(key: key);

  final String action;
  final String title;
  final String subtitle;
  final bool isLeftChild;

  @override
  Widget build(BuildContext context) {
    print(action);
    final rowChildren = <Widget>[
      _buildIconByAction(action),
      const SizedBox(width: 8),
      Expanded(
        child: Text(
          title,
          textAlign: isLeftChild ? TextAlign.right : TextAlign.left,
          // style: GoogleFonts.dosis(
          //   fontSize: 18,
          //   color: Colors.white,
          //   fontWeight: FontWeight.bold,
          // ),
        ),
      ),
    ];

    return Padding(
      padding: isLeftChild
          ? const EdgeInsets.only(left: 16, top: 10, bottom: 10, right: 10)
          : const EdgeInsets.only(right: 16, top: 10, bottom: 10, left: 10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Row(
            children: isLeftChild ? rowChildren.reversed.toList() : rowChildren,
          ),
          Flexible(
            child: Text(
              subtitle,
              textAlign: isLeftChild ? TextAlign.right : TextAlign.left,
              // style: GoogleFonts.dosis(
              //   fontSize: 16,
              //   color: Colors.white,
              // ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildIconByAction(action) {
    final imageAsset =
        'assets/football/${action.toString().split('.').last}.png';
    print(imageAsset);
    return Image.asset(
      imageAsset,
      height: 20,
      width: 20,
    );
  }
}

class _TimelineFootballIndicator extends StatelessWidget {
  const _TimelineFootballIndicator({Key key, this.time}) : super(key: key);

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white.withOpacity(0.2),
          width: 3,
        ),
        shape: BoxShape.circle,
      ),
      child: Center(
        child: Text(
          time,
          // style: GoogleFonts.dosis(
          //   fontSize: 18,
          //   color: Colors.white,
          //   fontWeight: FontWeight.bold,
          // ),
        ),
      ),
    );
  }
}

// class _Scoreboard extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: const EdgeInsets.all(16),
//       margin: const EdgeInsets.only(top: 16, right: 16, left: 16),
//       constraints: const BoxConstraints(maxHeight: 145),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.2),
//         borderRadius: const BorderRadius.all(Radius.circular(8)),
//       ),
//       child: Row(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: <Widget>[
//           // Expanded(child: Image.asset('assets/football/barcelona.png')),
//           const SizedBox(width: 16),
//           const _Score(score: '1', team: 'BAR'),
//           const SizedBox(width: 16),
//           const _Score(score: '2', team: 'ARS'),
//           const SizedBox(width: 16),
//           // Expanded(child: Image.asset('assets/football/arsenal.png')),
//         ],
//       ),
//     );
//   }
// }

// class _Score extends StatelessWidget {
//   const _Score({Key key, this.score, this.team}) : super(key: key);
//
//   final String score;
//   final String team;
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: <Widget>[
//         Container(
//           constraints: const BoxConstraints(minWidth: 60, minHeight: 70),
//           decoration: const BoxDecoration(
//             color: Color(0xFF2C524C),
//             borderRadius: BorderRadius.all(Radius.circular(8)),
//           ),
//           child: Center(
//             child: Text(
//               score,
//               // style: GoogleFonts.dosis(
//               //   fontSize: 28,
//               //   color: Colors.white,
//               //   fontWeight: FontWeight.bold,
//               // ),
//             ),
//           ),
//         ),
//         const SizedBox(height: 10),
//         Text(
//           team,
//           // style: GoogleFonts.dosis(
//           //   fontSize: 24,
//           //   color: Colors.white,
//           //   fontWeight: FontWeight.w500,
//           // ),
//         )
//       ],
//     );
//   }
// }

enum Team {
  home,
  away,
}
//
// enum Action {
//   goal,
//   yellowCard,
//   redCard,
//   offside,
//   foul,
//   injury,
//   stoppageTime,
// }
//
// class FootballData {
//   const FootballData({
//     this.team,
//     this.action,
//     this.title,
//     this.subtitle,
//     this.time,
//   });
//
//   final Team team;
//   final Action action;
//   final String title;
//   final String subtitle;
//   final String time;
// }
