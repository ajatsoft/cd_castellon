import 'dart:convert';

// Jornada jornadaFromJson(String str) => Jornada.fromJson(json.decode(str));
//
//
// class Jornada {
//   Jornada({
//     this.matches,
//   });
//
//   List<Partidos> matches;
//
//   factory Jornada.fromJson(Map<String, dynamic> json) => Jornada(
//     matches: List<Partidos>.from(json["matches"].map((x) => Partidos.fromJson(x))),
//   );
// }
//
// class Partidos {
//   Partidos({
//     this.date,
//     this.escudoAway,
//     this.escudoHome,
//     this.id,
//     this.minuto,
//     this.publico,
//     this.scoreAway,
//     this.scoreHome,
//     this.teamAway,
//     this.teamHome,
//   });
//
//   String date;
//   String escudoAway;
//   String escudoHome;
//   String id;
//   String minuto;
//   int publico;
//   String scoreAway;
//   String scoreHome;
//   String teamAway;
//   String teamHome;
//
//   factory Partidos.fromJson(Map<String, dynamic> json) => Partidos(
//     date: json["date"],
//     escudoAway: json["escudo_away"] == null ? null : json["escudo_away"],
//     escudoHome: json["escudo_home"] == null ? null : json["escudo_home"],
//     id: json["id"],
//     minuto: json["minuto"],
//     publico: json["publico"],
//     scoreAway: json["score_away"],
//     scoreHome: json["score_home"],
//     teamAway: json["team_away"],
//     teamHome: json["team_home"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "date": date,
//     "escudo_away": escudoAway == null ? null : escudoAway,
//     "escudo_home": escudoHome == null ? null : escudoHome,
//     "id": id,
//     "minuto": minuto,
//     "publico": publico,
//     "score_away": scoreAway,
//     "score_home": scoreHome,
//     "team_away": teamAway,
//     "team_home": teamHome,
//   };
// }
//



class Temporada {
  List<Week> temporada;
  Temporada({this.temporada});

  Temporada.fromJson(Map<String, dynamic> json) {
    if (json['Temporada'] != null) {
      temporada = new List<Week>();
      json['Temporada'].forEach((v) {
        temporada.add(new Week.fromJson(v));
      });
    }
  }




}

class Week {
  String week;
  String urlJornada;
  Week({ this.week,this.urlJornada});

  Week.fromJson(Map<String, dynamic> json) {

    week = json['jornada'];
    urlJornada = json['urlJornada'];
  }



}




// To parse this JSON data, do
//
//     final jornada = jornadaFromJson(jsonString);



Jornada jornadaFromJson(String str) => Jornada.fromJson(json.decode(str));

String jornadaToJson(Jornada data) => json.encode(data.toJson());

class Jornada {
  Jornada({
    this.sports,
  });

  List<Sport> sports;

  factory Jornada.fromJson(Map<String, dynamic> json) => Jornada(
    sports: List<Sport>.from(json["sports"].map((x) => Sport.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "sports": List<dynamic>.from(sports.map((x) => x.toJson())),
  };
}

class Sport {
  Sport({
    this.id,
    this.uid,
    this.name,
    this.slug,
    this.leagues,
  });

  String id;
  String uid;
  String name;
  String slug;
  List<League> leagues;

  factory Sport.fromJson(Map<String, dynamic> json) => Sport(
    id: json["id"],
    uid: json["uid"],
    name: json["name"],
    slug: json["slug"],
    leagues: List<League>.from(json["leagues"].map((x) => League.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "name": name,
    "slug": slug,
    "leagues": List<dynamic>.from(leagues.map((x) => x.toJson())),
  };
}

class League {
  League({
    this.id,
    this.uid,
    this.name,
    this.abbreviation,
    this.shortName,
    this.slug,
    this.isTournament,
    this.events,
    this.smartdates,
  });

  String id;
  String uid;
  String name;
  String abbreviation;
  String shortName;
  String slug;
  bool isTournament;
  List<Event> events;
  List<dynamic> smartdates;

  factory League.fromJson(Map<String, dynamic> json) => League(
    id: json["id"],
    uid: json["uid"],
    name: json["name"],
    abbreviation: json["abbreviation"],
    shortName: json["shortName"],
    slug: json["slug"],
    isTournament: json["isTournament"],
    events: List<Event>.from(json["events"].map((x) => Event.fromJson(x))),
    smartdates: List<dynamic>.from(json["smartdates"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "name": name,
    "abbreviation": abbreviation,
    "shortName": shortName,
    "slug": slug,
    "isTournament": isTournament,
    "events": List<dynamic>.from(events.map((x) => x.toJson())),
    "smartdates": List<dynamic>.from(smartdates.map((x) => x)),
  };
}

class Event {
  Event({
    this.gamecastAvailable,
    this.playByPlayAvailable,
    this.commentaryAvailable,
    this.recent,
    this.id,
    this.location,
    this.competitionId,
    this.uid,
    this.date,
    this.timeValid,
    this.name,
    this.shortName,
    this.season,
    this.seasonStartDate,
    this.seasonEndDate,
    this.seasonType,
    this.seasonTypeHasGroups,
    this.group,
    this.period,
    this.clock,
    this.addedClock,
    this.status,
    this.summary,
    this.fullStatus,
    this.notes,
    this.link,
    this.links,
    this.onWatch,
    this.competitors,
    this.appLinks,
    this.odds,
  });

  bool gamecastAvailable;
  bool playByPlayAvailable;
  bool commentaryAvailable;
  bool recent;
  String id;
  String location;
  String competitionId;
  String uid;
  DateTime date;
  bool timeValid;
  ShortNameEnum name;
  ShortNameEnum shortName;
  int season;
  DateTime seasonStartDate;
  DateTime seasonEndDate;
  String seasonType;
  bool seasonTypeHasGroups;
  Group group;
  int period;
  String clock;
  int addedClock;
  Stat status;
  Summary summary;
  FullStatus fullStatus;
  List<Note> notes;
  String link;
  List<Link> links;
  bool onWatch;
  List<Competitor> competitors;
  List<dynamic> appLinks;
  EventOdds odds;

  factory Event.fromJson(Map<String, dynamic> json) => Event(
    gamecastAvailable: json["gamecastAvailable"],
    playByPlayAvailable: json["playByPlayAvailable"],
    commentaryAvailable: json["commentaryAvailable"],
    recent: json["recent"],
    id: json["id"],
    location: json["location"] == null ? null : json["location"],
    competitionId: json["competitionId"],
    uid: json["uid"],
    date: DateTime.parse(json["date"]),
    timeValid: json["timeValid"],
    name: shortNameEnumValues.map[json["name"]],
    shortName: shortNameEnumValues.map[json["shortName"]],
    season: json["season"],
    seasonStartDate: DateTime.parse(json["seasonStartDate"]),
    seasonEndDate: DateTime.parse(json["seasonEndDate"]),
    seasonType: json["seasonType"],
    seasonTypeHasGroups: json["seasonTypeHasGroups"],
    group: Group.fromJson(json["group"]),
    period: json["period"],
    clock: json["clock"],
    addedClock: json["addedClock"].toInt(),
    status: statValues.map[json["status"]],
    summary: summaryValues.map[json["summary"]],
    fullStatus: FullStatus.fromJson(json["fullStatus"]),
    notes: json["notes"] == null ? null : List<Note>.from(json["notes"].map((x) => Note.fromJson(x))),
    link: json["link"],
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    onWatch: json["onWatch"],
    competitors: List<Competitor>.from(json["competitors"].map((x) => Competitor.fromJson(x))),
    appLinks: List<dynamic>.from(json["appLinks"].map((x) => x)),
    odds: json["odds"] == null ? null : EventOdds.fromJson(json["odds"]),
  );

  Map<String, dynamic> toJson() => {
    "gamecastAvailable": gamecastAvailable,
    "playByPlayAvailable": playByPlayAvailable,
    "commentaryAvailable": commentaryAvailable,
    "recent": recent,
    "id": id,
    "competitionId": competitionId,
    "uid": uid,
    "date": date.toIso8601String(),
    "timeValid": timeValid,
    "name": shortNameEnumValues.reverse[name],
    "shortName": shortNameEnumValues.reverse[shortName],
    "season": season,
    "seasonStartDate": seasonStartDate.toIso8601String(),
    "seasonEndDate": seasonEndDate.toIso8601String(),
    "seasonType": seasonType,
    "seasonTypeHasGroups": seasonTypeHasGroups,
    "group": group.toJson(),
    "period": period,
    "clock": clock,
    "addedClock": addedClock,
    "status": statValues.reverse[status],
    "summary": summaryValues.reverse[summary],
    "fullStatus": fullStatus.toJson(),
    "notes": List<dynamic>.from(notes.map((x) => x.toJson())),
    "link": link,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "onWatch": onWatch,
    "competitors": List<dynamic>.from(competitors.map((x) => x.toJson())),
    "appLinks": List<dynamic>.from(appLinks.map((x) => x)),
    "odds": odds == null ? null : odds.toJson(),
  };
}

class Competitor {
  Competitor({
    this.id,
    this.uid,
    this.type,
    this.order,
    this.homeAway,
    this.winner,
    this.score,
    this.record,
    this.logo,
    this.logoDark,
    this.form,
    this.goalieSummary,
    this.displayName,
    this.name,
    this.abbreviation,
    this.location,
    this.color,
    this.alternateColor,
    this.isNational,
    this.group,
    this.competitionIdPrevious,
    this.competitionIdNext,
  });

  String id;
  String uid;
  CompetitorType type;
  int order;
  HomeAway homeAway;
  bool winner;
  String score;
  String record;
  String logo;
  String logoDark;
  String form;
  List<GoalieSummary> goalieSummary;
  String displayName;
  String name;
  String abbreviation;
  String location;
  String color;
  String alternateColor;
  bool isNational;
  String group;
  String competitionIdPrevious;
  String competitionIdNext;

  factory Competitor.fromJson(Map<String, dynamic> json) => Competitor(
    id: json["id"],
    uid: json["uid"],
    type: competitorTypeValues.map[json["type"]],
    order: json["order"],
    homeAway: homeAwayValues.map[json["homeAway"]],
    winner: json["winner"],
    score: json["score"],
    record: json["record"],
    logo: json["logo"],
    logoDark: json["logoDark"],
    form: json["form"],
    goalieSummary: json["goalieSummary"] == null ? null : List<GoalieSummary>.from(json["goalieSummary"].map((x) => GoalieSummary.fromJson(x))),
    displayName: json["displayName"],
    name: json["name"],
    abbreviation: json["abbreviation"],
    location: json["location"],
    color: json["color"],
    alternateColor: json["alternateColor"],
    isNational: json["isNational"],
    group: json["group"],
    competitionIdPrevious: json["competitionIdPrevious"],
    competitionIdNext: json["competitionIdNext"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "type": competitorTypeValues.reverse[type],
    "order": order,
    "homeAway": homeAwayValues.reverse[homeAway],
    "winner": winner,
    "score": score,
    "record": record,
    "logo": logo,
    "logoDark": logoDark,
    "form": form,
    "goalieSummary": List<dynamic>.from(goalieSummary.map((x) => x.toJson())),
    "displayName": displayName,
    "name": name,
    "abbreviation": abbreviation,
    "location": location,
    "color": color,
    "alternateColor": alternateColor,
    "isNational": isNational,
    "group": group,
    "competitionIdPrevious": competitionIdPrevious,
    "competitionIdNext": competitionIdNext,
  };
}

class GoalieSummary {
  GoalieSummary({
    this.athlete,
    this.displayValue,
  });

  Athlete athlete;
  DisplayValue displayValue;

  factory GoalieSummary.fromJson(Map<String, dynamic> json) => GoalieSummary(
    athlete: Athlete.fromJson(json["athlete"]),
    displayValue: displayValueValues.map[json["displayValue"]],
  );

  Map<String, dynamic> toJson() => {
    "athlete": athlete.toJson(),
    "displayValue": displayValueValues.reverse[displayValue],
  };
}

class Athlete {
  Athlete({
    this.lastName,
    this.displayName,
    this.shortName,
    this.id,
    this.fullName,
    this.position,
    this.jersey,
    this.team,
  });

  String lastName;
  String displayName;
  String shortName;
  String id;
  String fullName;
  Position position;
  String jersey;
  AthleteTeam team;

  factory Athlete.fromJson(Map<String, dynamic> json) => Athlete(
    lastName: json["lastName"],
    displayName: json["displayName"],
    shortName: json["shortName"],
    id: json["id"],
    fullName: json["fullName"],
    position: positionValues.map[json["position"]],
    jersey: json["jersey"],
    team: AthleteTeam.fromJson(json["team"]),
  );

  Map<String, dynamic> toJson() => {
    "lastName": lastName,
    "displayName": displayName,
    "shortName": shortName,
    "id": id,
    "fullName": fullName,
    "position": positionValues.reverse[position],
    "jersey": jersey,
    "team": team.toJson(),
  };
}

enum Position { G }

final positionValues = EnumValues({
  "G": Position.G
});

class AthleteTeam {
  AthleteTeam({
    this.id,
  });

  String id;

  factory AthleteTeam.fromJson(Map<String, dynamic> json) => AthleteTeam(
    id: json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
  };
}

enum DisplayValue { THE_1_GA_0_SV, THE_0_GA_0_SV, THE_3_GA_0_SV, THE_2_GA_0_SV }

final displayValueValues = EnumValues({
  "0 GA, 0 SV": DisplayValue.THE_0_GA_0_SV,
  "1 GA, 0 SV": DisplayValue.THE_1_GA_0_SV,
  "2 GA, 0 SV": DisplayValue.THE_2_GA_0_SV,
  "3 GA, 0 SV": DisplayValue.THE_3_GA_0_SV
});

enum HomeAway { HOME, AWAY, SUMMARY, DESKTOP, EVENT, STATS, STANDINGS, BETS, BET_365, DRAW }

final homeAwayValues = EnumValues({
  "away": HomeAway.AWAY,
  "bets": HomeAway.BETS,
  "bet-365": HomeAway.BET_365,
  "desktop": HomeAway.DESKTOP,
  "draw": HomeAway.DRAW,
  "event": HomeAway.EVENT,
  "home": HomeAway.HOME,
  "standings": HomeAway.STANDINGS,
  "stats": HomeAway.STATS,
  "summary": HomeAway.SUMMARY
});

enum CompetitorType { TEAM }

final competitorTypeValues = EnumValues({
  "team": CompetitorType.TEAM
});

class FullStatus {
  FullStatus({
    this.clock,
    this.addedClock,
    this.displayClock,
    this.period,
    this.type,
  });

  int clock;
  int addedClock;
  String displayClock;
  int period;
  TypeClass type;

  factory FullStatus.fromJson(Map<String, dynamic> json) => FullStatus(
    clock: json["clock"].toInt(),
    addedClock: json["addedClock"].toInt(),
    displayClock: json["displayClock"],
    period: json["period"],
    type: TypeClass.fromJson(json["type"]),
  );

  Map<String, dynamic> toJson() => {
    "clock": clock,
    "addedClock": addedClock,
    "displayClock": displayClock,
    "period": period,
    "type": type.toJson(),
  };
}

class TypeClass {
  TypeClass({
    this.id,
    this.name,
    this.state,
    this.completed,
    this.description,
    this.detail,
    this.shortDetail,
  });

  String id;
  TypeName name;
  Stat state;
  bool completed;
  Description description;
  Summary detail;
  Summary shortDetail;

  factory TypeClass.fromJson(Map<String, dynamic> json) => TypeClass(
    id: json["id"],
    name: typeNameValues.map[json["name"]],
    state: statValues.map[json["state"]],
    completed: json["completed"],
    description: descriptionValues.map[json["description"]],
    detail: summaryValues.map[json["detail"]],
    shortDetail: summaryValues.map[json["shortDetail"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": typeNameValues.reverse[name],
    "state": statValues.reverse[state],
    "completed": completed,
    "description": descriptionValues.reverse[description],
    "detail": summaryValues.reverse[detail],
    "shortDetail": summaryValues.reverse[shortDetail],
  };
}

enum Description { FULL_TIME }

final descriptionValues = EnumValues({
  "Full Time": Description.FULL_TIME
});

enum Summary { FT }

final summaryValues = EnumValues({
  "FT": Summary.FT
});

enum TypeName { STATUS_FULL_TIME }

final typeNameValues = EnumValues({
  "STATUS_FULL_TIME": TypeName.STATUS_FULL_TIME
});

enum Stat { POST }

final statValues = EnumValues({
  "post": Stat.POST
});

class Group {
  Group({
    this.groupId,
    this.name,
    this.abbreviation,
    this.shortName,
  });

  String groupId;
  GroupName name;
  Abbreviation abbreviation;
  ShortName shortName;

  factory Group.fromJson(Map<String, dynamic> json) => Group(
    groupId: json["groupId"],
    name: groupNameValues.map[json["name"]],
    abbreviation: abbreviationValues.map[json["abbreviation"]],
    shortName: shortNameValues.map[json["shortName"]],
  );

  Map<String, dynamic> toJson() => {
    "groupId": groupId,
    "name": groupNameValues.reverse[name],
    "abbreviation": abbreviationValues.reverse[abbreviation],
    "shortName": shortNameValues.reverse[shortName],
  };
}

enum Abbreviation { THE_201920_LA_LIGA_2 }

final abbreviationValues = EnumValues({
  "2019-20 LaLiga 2": Abbreviation.THE_201920_LA_LIGA_2
});

enum GroupName { REGULAR_SEASON }

final groupNameValues = EnumValues({
  "Regular Season": GroupName.REGULAR_SEASON
});

enum ShortName { THE_201920_LALIGA_2 }

final shortNameValues = EnumValues({
  "2019-20 LALIGA 2": ShortName.THE_201920_LALIGA_2
});

class Link {
  Link({
    this.rel,
    this.href,
    this.text,
    this.shortText,
  });

  List<HomeAway> rel;
  String href;
  ShortTextEnum text;
  ShortTextEnum shortText;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    rel: List<HomeAway>.from(json["rel"].map((x) => homeAwayValues.map[x])),
    href: json["href"],
    text: shortTextEnumValues.map[json["text"]],
    shortText: json["shortText"] == null ? null : shortTextEnumValues.map[json["shortText"]],
  );

  Map<String, dynamic> toJson() => {
    "rel": List<dynamic>.from(rel.map((x) => homeAwayValues.reverse[x])),
    "href": href,
    "text": shortTextEnumValues.reverse[text],
    "shortText": shortText == null ? null : shortTextEnumValues.reverse[shortText],
  };
}

enum ShortTextEnum { SUMMARY, STATISTICS, TABLE, HOME_BET, AWAY_BET, DRAW_BET }

final shortTextEnumValues = EnumValues({
  "Away Bet": ShortTextEnum.AWAY_BET,
  "Draw Bet": ShortTextEnum.DRAW_BET,
  "Home Bet": ShortTextEnum.HOME_BET,
  "Statistics": ShortTextEnum.STATISTICS,
  "Summary": ShortTextEnum.SUMMARY,
  "Table": ShortTextEnum.TABLE
});

enum ShortNameEnum { THE_201920_SPANISH_SEGUNDA_DIVISION }

final shortNameEnumValues = EnumValues({
  "2019-20 Spanish Segunda Division": ShortNameEnum.THE_201920_SPANISH_SEGUNDA_DIVISION
});

class Note {
  Note({
    this.type,
    this.date,
    this.text,
    this.source,
  });

  NoteType type;
  Date date;
  NoteText text;
  String source;

  factory Note.fromJson(Map<String, dynamic> json) => Note(
    type: noteTypeValues.map[json["type"]],
    date: dateValues.map[json["date"]],
    text: noteTextValues.map[json["text"]],
    source: json["source"],
  );

  Map<String, dynamic> toJson() => {
    "type": noteTypeValues.reverse[type],
    "date": dateValues.reverse[date],
    "text": noteTextValues.reverse[text],
    "source": source,
  };
}

enum Date { THE_20200721_T21_38_Z }

final dateValues = EnumValues({
  "2020-07-21T21:38Z": Date.THE_20200721_T21_38_Z
});

enum NoteText { BEHIND_CLOSED_DOORS }

final noteTextValues = EnumValues({
  "Behind Closed Doors": NoteText.BEHIND_CLOSED_DOORS
});

enum NoteType { OPTA_ADDITIONAL_NOTE }

final noteTypeValues = EnumValues({
  "opta-additional-note": NoteType.OPTA_ADDITIONAL_NOTE
});

class EventOdds {
  EventOdds({
    this.provider,
    this.awayTeamOdds,
    this.homeTeamOdds,
    this.drawOdds,
    this.bettingOdds,
    this.links,
    this.moneylineWinner,
    this.spreadWinner,
  });

  Provider provider;
  TeamOdds awayTeamOdds;
  TeamOdds homeTeamOdds;
  DrawOddsClass drawOdds;
  BettingOdds bettingOdds;
  List<Link> links;
  bool moneylineWinner;
  bool spreadWinner;

  factory EventOdds.fromJson(Map<String, dynamic> json) => EventOdds(
    provider: Provider.fromJson(json["provider"]),
    awayTeamOdds: TeamOdds.fromJson(json["awayTeamOdds"]),
    homeTeamOdds: TeamOdds.fromJson(json["homeTeamOdds"]),
    drawOdds: DrawOddsClass.fromJson(json["drawOdds"]),
    bettingOdds: BettingOdds.fromJson(json["bettingOdds"]),
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
    moneylineWinner: json["moneylineWinner"],
    spreadWinner: json["spreadWinner"],
  );

  Map<String, dynamic> toJson() => {
    "provider": provider.toJson(),
    "awayTeamOdds": awayTeamOdds.toJson(),
    "homeTeamOdds": homeTeamOdds.toJson(),
    "drawOdds": drawOdds.toJson(),
    "bettingOdds": bettingOdds.toJson(),
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "moneylineWinner": moneylineWinner,
    "spreadWinner": spreadWinner,
  };
}

class TeamOdds {
  TeamOdds({
    this.team,
    this.odds,
  });

  AwayTeamClass team;
  DrawOddsClass odds;

  factory TeamOdds.fromJson(Map<String, dynamic> json) => TeamOdds(
    team: AwayTeamClass.fromJson(json["team"]),
    odds: DrawOddsClass.fromJson(json["odds"]),
  );

  Map<String, dynamic> toJson() => {
    "team": team.toJson(),
    "odds": odds.toJson(),
  };
}

class DrawOddsClass {
  DrawOddsClass({
    this.summary,
    this.value,
    this.handicap,
  });

  String summary;
  double value;
  int handicap;

  factory DrawOddsClass.fromJson(Map<String, dynamic> json) => DrawOddsClass(
        summary: json["summary"] == null ? null : json["summary"],
        value: json["value"].toDouble(),
        handicap: json["handicap"].toInt(),
      );

  Map<String, dynamic> toJson() => {
    "summary": summary,
    "value": value,
    "handicap": handicap,
  };
}

class AwayTeamClass {
  AwayTeamClass({
    this.id,
    this.abbreviation,
  });

  String id;
  String abbreviation;

  factory AwayTeamClass.fromJson(Map<String, dynamic> json) => AwayTeamClass(
    id: json["id"],
    abbreviation: json["abbreviation"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "abbreviation": abbreviation,
  };
}

class BettingOdds {
  BettingOdds({
    this.homeTeam,
    this.awayTeam,
    this.teamOdds,
    this.playerOdds,
  });

  AwayTeamClass homeTeam;
  AwayTeamClass awayTeam;
  TeamOddsClass teamOdds;
  PlayerOdds playerOdds;

  factory BettingOdds.fromJson(Map<String, dynamic> json) => BettingOdds(
    homeTeam: AwayTeamClass.fromJson(json["homeTeam"]),
    awayTeam: AwayTeamClass.fromJson(json["awayTeam"]),
    teamOdds: TeamOddsClass.fromJson(json["teamOdds"]),
    playerOdds: PlayerOdds.fromJson(json["playerOdds"]),
  );

  Map<String, dynamic> toJson() => {
    "homeTeam": homeTeam.toJson(),
    "awayTeam": awayTeam.toJson(),
    "teamOdds": teamOdds.toJson(),
    "playerOdds": playerOdds.toJson(),
  };
}

class PlayerOdds {
  PlayerOdds();

  factory PlayerOdds.fromJson(Map<String, dynamic> json) => PlayerOdds(
  );

  Map<String, dynamic> toJson() => {
  };
}

class TeamOddsClass {
  TeamOddsClass({
    this.preMatchFullTimeResultDraw,
    this.preMatchFullTimeResultAway,
    this.preMatchDoubleChanceDrawOrAway,
    this.preMatchDoubleChanceHomeOrAway,
    this.preMatchOverUnderHandicap,
    this.preMatchFullTimeResultHome,
    this.preMatchGoalLineUnder,
    this.preMatchGoalLineOver,
    this.preMatchDoubleChanceHomeOrDraw,
  });

  PreMatch preMatchFullTimeResultDraw;
  PreMatch preMatchFullTimeResultAway;
  PreMatch preMatchDoubleChanceDrawOrAway;
  PreMatch preMatchDoubleChanceHomeOrAway;
  PreMatch preMatchOverUnderHandicap;
  PreMatch preMatchFullTimeResultHome;
  PreMatch preMatchGoalLineUnder;
  PreMatch preMatchGoalLineOver;
  PreMatch preMatchDoubleChanceHomeOrDraw;

  factory TeamOddsClass.fromJson(Map<String, dynamic> json) => TeamOddsClass(
    preMatchFullTimeResultDraw: PreMatch.fromJson(json["preMatchFullTimeResultDraw"]),
    preMatchFullTimeResultAway: PreMatch.fromJson(json["preMatchFullTimeResultAway"]),
    preMatchDoubleChanceDrawOrAway: PreMatch.fromJson(json["preMatchDoubleChanceDrawOrAway"]),
    preMatchDoubleChanceHomeOrAway: PreMatch.fromJson(json["preMatchDoubleChanceHomeOrAway"]),
    preMatchOverUnderHandicap: PreMatch.fromJson(json["preMatchOverUnderHandicap"]),
    preMatchFullTimeResultHome: PreMatch.fromJson(json["preMatchFullTimeResultHome"]),
    preMatchGoalLineUnder: PreMatch.fromJson(json["preMatchGoalLineUnder"]),
    preMatchGoalLineOver: PreMatch.fromJson(json["preMatchGoalLineOver"]),
    preMatchDoubleChanceHomeOrDraw: PreMatch.fromJson(json["preMatchDoubleChanceHomeOrDraw"]),
  );

  Map<String, dynamic> toJson() => {
    "preMatchFullTimeResultDraw": preMatchFullTimeResultDraw.toJson(),
    "preMatchFullTimeResultAway": preMatchFullTimeResultAway.toJson(),
    "preMatchDoubleChanceDrawOrAway": preMatchDoubleChanceDrawOrAway.toJson(),
    "preMatchDoubleChanceHomeOrAway": preMatchDoubleChanceHomeOrAway.toJson(),
    "preMatchOverUnderHandicap": preMatchOverUnderHandicap.toJson(),
    "preMatchFullTimeResultHome": preMatchFullTimeResultHome.toJson(),
    "preMatchGoalLineUnder": preMatchGoalLineUnder.toJson(),
    "preMatchGoalLineOver": preMatchGoalLineOver.toJson(),
    "preMatchDoubleChanceHomeOrDraw": preMatchDoubleChanceHomeOrDraw.toJson(),
  };
}

class PreMatch {
  PreMatch({
    this.oddId,
    this.value,
    this.betSlipUrl,
  });

  String oddId;
  String value;
  String betSlipUrl;

  factory PreMatch.fromJson(Map<String, dynamic> json) => PreMatch(
    oddId: json["oddId"],
    value: json["value"],
    betSlipUrl: json["betSlipUrl"],
  );

  Map<String, dynamic> toJson() => {
    "oddId": oddId,
    "value": value,
    "betSlipUrl": betSlipUrl,
  };
}

class Provider {
  Provider({
    this.id,
    this.name,
    this.priority,
  });

  String id;
  String name;
  int priority;

  factory Provider.fromJson(Map<String, dynamic> json) => Provider(
    id: json["id"],
    name: json["name"],
    priority: json["priority"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "priority": priority,
  };
}

class EnumValues<T> {
  Map<String, T> map;
  Map<T, String> reverseMap;

  EnumValues(this.map);

  Map<T, String> get reverse {
    if (reverseMap == null) {
      reverseMap = map.map((k, v) => new MapEntry(v, k));
    }
    return reverseMap;
  }
}








//
// class Matches {
//   String id;
//   String name;
//   String escudoHome;
//   String teamHome;
//   String scoreHome;
//   String scoreAway;
//   String teamAway;
//   String escudoAway;
//   List<String> homeGoals;
//   List<String> awayGoals;
//
//   Matches(
//       {this.id,
//         this.name,
//         this.escudoHome,
//         this.teamHome,
//         this.scoreHome,
//         this.scoreAway,
//         this.teamAway,
//         this.escudoAway,
//         this.homeGoals,
//         this.awayGoals});
//
//   Matches.fromJson(Map<String, dynamic> json) {
//     id = json['id'];
//     name = json['name'];
//     escudoHome = json['escudo_home'];
//     teamHome = json['team_home'];
//     scoreHome = json['score_home'];
//     scoreAway = json['score_away'];
//     teamAway = json['team_away'];
//     escudoAway = json['escudo_away'];
//     homeGoals = json['home_goals'].cast<String>();
//     awayGoals = json['away_goals'].cast<String>();
//   }
//
// }
