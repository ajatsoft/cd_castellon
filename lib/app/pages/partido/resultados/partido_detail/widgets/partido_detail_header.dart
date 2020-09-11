import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cd_castellon/app/config.dart';
import 'package:cd_castellon/app/data/model/partido.dart';




class MatchHead extends StatelessWidget {
  final Event partido;

  const MatchHead(this.partido);

  Widget buildTeamHome() {
    return Expanded(
      flex: 4,
      child: GestureDetector(
        onTap: () {
//          Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => TeamDetail(team)),
//          );
        },
        child: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.only(left: 4.0),
              child: (partido.competitors[0].logo == '')
                  ? logoAway(partido.competitors[0].name)
                  : Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          partido.competitors[0].logo),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Text(
                partido.competitors[0].name,
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }
  Widget buildTeamAway() {
    return Expanded(
      flex: 4,
      child: GestureDetector(
        onTap: () {
//          Navigator.push(
//            context,
//            MaterialPageRoute(builder: (context) => TeamDetail(team)),
//          );
        },
        child: Column(
          children: [
            Padding(
              padding:
              const EdgeInsets.only(left: 4.0),
              child: (partido.competitors[1].logo == '')
                  ? logoAway(partido.competitors[1].name)
                  : Container(
                  width: 70.0,
                  height: 70.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: NetworkImage(
                          partido.competitors[1].logo),
                    ),
                  )),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Text(
                partido.competitors[1].name,
                style: TextStyle(fontSize: 14.0),
                textAlign: TextAlign.center,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.transparent,
      padding: const EdgeInsets.only(top: 40, left: defaultPadding, right: defaultPadding),
      child: Row(
        children: [
          buildTeamHome(),
          MatchDetailStatus(partido),
          buildTeamAway(),
        ],
      ),
    );
  }
}

class MatchDetailStatus extends StatelessWidget {
  final Event partido;

  const MatchDetailStatus(this.partido);

  @override
  Widget build(BuildContext context) {

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 25),
          child: Text(partido.competitors[0].score.toString() + " : " + partido.competitors[1].score.toString(), style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold,)),
        ),
      ],
    );
//    switch (jornada.status) {
//      case Models.MatchStatus.Postponed:
//      case Models.MatchStatus.Cancelled:
//      case Models.MatchStatus.Suspended:
//        {
//          var index = match.status.toString().lastIndexOf('.') + 1;
//          var status = match.status.toString().substring(index);
//          return Text(
//            '!\n$status',
//            style: TextStyle(fontWeight: FontWeight.normal, fontSize: 14, color: Colors.orange),
//            textAlign: TextAlign.center,
//          );
//        }
//        break;
//
//      case Models.MatchStatus.Scheduled:
//        {
//          return Text(match.time);
//        }
//        break;
//
//      case Models.MatchStatus.Finished:
//      case Models.MatchStatus.In_Play:
//        {
//          return Column(
//            mainAxisAlignment: MainAxisAlignment.start,
//            crossAxisAlignment: CrossAxisAlignment.center,
//            children: [
//              Padding(
//                padding: const EdgeInsets.only(top: 10),
//                child: Text(match.score.home.toString() + " : " + match.score.away.toString(), style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold, color: Colors.white)),
//              ),
//            ],
//          );
//        }
//        break;
//
//      default:
//        {
//          return Text('');
//        }
//        break;
//    }
  }
}

// class LogoIcon extends StatelessWidget {
//   final String url;
//   final double height;
//   final bool allowSvg;
//
//   const LogoIcon(this.url, this.height, this.allowSvg);
//
//   @override
//   Widget build(BuildContext context) {
//     try {
//       if (url != null && url.isNotEmpty) {
//         if (allowSvg && url.toLowerCase().endsWith('.svg')) {
//           return Image.network(
//             url,
//             height: height,
// //            placeholderBuilder: (BuildContext context) => Container(
// ////                padding: const EdgeInsets.all(30.0),
// //                child: const CircularProgressIndicator()),
//           );
//         }
//         if (url.toLowerCase().endsWith('.png')) {
//           return Image.network(
//             url,
//             height: height,
//           );
//         }
//       } return Container();
//     } catch (e) {
//       print('Exception in _buildImage for $url: $e');
//     }
//
//     return CircleAvatar(
//       backgroundColor: Colors.grey,
//       maxRadius: height / 2,
//     );
//   }
// }

logoHome(team) {
  if (team == "Castellon") {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/castellon.png'),
        ),
      ),);
  } else if (team == "FC Cartagena") {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              'assets/images/carthagene.png'),
        ),
      ),);
  }else if (team == "CD Sabadell") {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              'assets/images/sabadell.png'),
        ),
      ),);
  } else {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              'assets/images/ud-logrones.png'),
        ),
      ),);
  }
}

logoAway(team) {
  if (team == "Castellon") {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              'assets/images/castellon.png'),
        ),
      ),);
  } else if (team == "FC Cartagena") {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              'assets/images/carthagene.png'),
        ),
      ),);
  }else if (team == "CD Sabadell") {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              'assets/images/sabadell.png'),
        ),
      ),);
  } else {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
              'assets/images/ud-logrones.png'),
        ),
      ),);
  }
}