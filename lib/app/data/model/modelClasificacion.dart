// To parse this JSON data, do
//
//     final standings = standingsFromJson(jsonString);

import 'dart:convert';



Standings standingsFromJson(String str) => Standings.fromJson(json.decode(str));

String standingsToJson(Standings data) => json.encode(data.toJson());

class Standings {
  Standings({
    this.uid,
    this.id,
    this.name,
    this.abbreviation,
    this.children,
    this.seasons,
  });

  String uid;
  String id;
  String name;
  String abbreviation;
  List<Child> children;
  List<Season> seasons;

  factory Standings.fromJson(Map<String, dynamic> json) => Standings(
    uid: json["uid"],
    id: json["id"],
    name: json["name"],
    abbreviation: json["abbreviation"],
    children: List<Child>.from(json["children"].map((x) => Child.fromJson(x))),
    seasons: List<Season>.from(json["seasons"].map((x) => Season.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "uid": uid,
    "id": id,
    "name": name,
    "abbreviation": abbreviation,
    "children": List<dynamic>.from(children.map((x) => x.toJson())),
    "seasons": List<dynamic>.from(seasons.map((x) => x.toJson())),
  };
}

class Child {
  Child({
    this.uid,
    this.id,
    this.name,
    this.abbreviation,
    this.standings,
  });

  String uid;
  String id;
  String name;
  String abbreviation;
  StandingsClass standings;

  factory Child.fromJson(Map<String, dynamic> json) => Child(
    uid: json["uid"],
    id: json["id"],
    name: json["name"],
    abbreviation: json["abbreviation"],
    standings: StandingsClass.fromJson(json["standings"]),
  );

  Map<String, dynamic> toJson() => {
    "uid": uid,
    "id": id,
    "name": name,
    "abbreviation": abbreviation,
    "standings": standings.toJson(),
  };
}

class StandingsClass {
  StandingsClass({
    this.id,
    this.name,
    this.displayName,
    this.links,
    this.season,
    this.seasonType,
    this.entries,
  });

  String id;
  String name;
  String displayName;
  List<dynamic> links;
  int season;
  int seasonType;
  List<Entry> entries;

  factory StandingsClass.fromJson(Map<String, dynamic> json) => StandingsClass(
    id: json["id"],
    name: json["name"],
    displayName: json["displayName"],
    links: List<dynamic>.from(json["links"].map((x) => x)),
    season: json["season"],
    seasonType: json["seasonType"],
    entries: List<Entry>.from(json["entries"].map((x) => Entry.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "displayName": displayName,
    "links": List<dynamic>.from(links.map((x) => x)),
    "season": season,
    "seasonType": seasonType,
    "entries": List<dynamic>.from(entries.map((x) => x.toJson())),
  };
}

class Entry {
  Entry({
    this.team,
    this.note,
    this.stats,
  });

  Team team;
  Note note;
  List<Stat> stats;

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
    team: Team.fromJson(json["team"]),
    note: json["note"] == null ? null : Note.fromJson(json["note"]),
    stats: List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "team": team.toJson(),
    "note": note == null ? null : note.toJson(),
    "stats": List<dynamic>.from(stats.map((x) => x.toJson())),
  };
}

class Note {
  Note({
    this.color,
    this.description,
    this.rank,
  });

  Color color;
  NoteDescription description;
  int rank;

  factory Note.fromJson(Map<String, dynamic> json) => Note(
    color: colorValues.map[json["color"]],
    description: noteDescriptionValues.map[json["description"]],
    rank: json["rank"] == null ? null : json["rank"],
  );

  Map<String, dynamic> toJson() => {
    "color": colorValues.reverse[color],
    "description": noteDescriptionValues.reverse[description],
    "rank": rank,
  };
}

enum Color { THE_81_D6_AC, B5_E7_CE, FF7_F84 }

final colorValues = EnumValues({
  "#B5E7CE": Color.B5_E7_CE,
  "#FF7F84": Color.FF7_F84,
  "#81D6AC": Color.THE_81_D6_AC
});

enum NoteDescription { PROMOTION, PROMOTION_PLAYOFFS, RELEGATION }

final noteDescriptionValues = EnumValues({
  "Promotion": NoteDescription.PROMOTION,
  "Promotion playoffs": NoteDescription.PROMOTION_PLAYOFFS,
  "Relegation": NoteDescription.RELEGATION
});

class Stat {
  Stat({
    this.name,
    this.displayName,
    this.shortDisplayName,
    this.description,
    this.abbreviation,
    this.type,
    this.value,
    this.displayValue,
    this.id,
    this.summary,
  });

  Name name;
  DisplayName displayName;
  ShortDisplayName shortDisplayName;
  StatDescription description;
  Abbreviation abbreviation;
  TypeEnum type;
  int value;
  String displayValue;
  String id;
  Summary summary;

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
    name: nameValues.map[json["name"]],
    displayName: displayNameValues.map[json["displayName"]],
    shortDisplayName: shortDisplayNameValues.map[json["shortDisplayName"]],
    description: statDescriptionValues.map[json["description"]],
    abbreviation: abbreviationValues.map[json["abbreviation"]],
    type: typeEnumValues.map[json["type"]],
    value: json["value"] == null ? null : json["value"].toInt(),
    displayValue: json["displayValue"],
    id: json["id"] == null ? null : json["id"],
    summary: json["summary"] == null ? null : summaryValues.map[json["summary"]],
  );

  Map<String, dynamic> toJson() => {
    "name": nameValues.reverse[name],
    "displayName": displayNameValues.reverse[displayName],
    "shortDisplayName": shortDisplayNameValues.reverse[shortDisplayName],
    "description": statDescriptionValues.reverse[description],
    "abbreviation": abbreviationValues.reverse[abbreviation],
    "type": typeEnumValues.reverse[type],
    "value": value == null ? null : value,
    "displayValue": displayValue,
    "id": id == null ? null : id,
    "summary": summary == null ? null : summaryValues.reverse[summary],
  };
}

enum Abbreviation { G, P, E, J, F, A, PTS, RC, R, DIFF, PD, TOTAL }

final abbreviationValues = EnumValues({
  "A": Abbreviation.A,
  "DIFF": Abbreviation.DIFF,
  "E": Abbreviation.E,
  "F": Abbreviation.F,
  "G": Abbreviation.G,
  "J": Abbreviation.J,
  "P": Abbreviation.P,
  "PD": Abbreviation.PD,
  "PTS": Abbreviation.PTS,
  "R": Abbreviation.R,
  "RC": Abbreviation.RC,
  "Total": Abbreviation.TOTAL
});

enum StatDescription { EL_NMERO_DE_PARTIDOS_GANADOS, DERROTAS, EMPATE, NMERO_DE_PARTIDOS_JUGADOS, GOLES_A_FAVOR, GOLES_EN_CONTRA, PUNTOS, RANK_CHANGE, RANK, DIFERENCIA_DE_PUNTOS, POINT_DEDUCTIONS, OVERALL_RECORD }

final statDescriptionValues = EnumValues({
  "Derrotas": StatDescription.DERROTAS,
  "Diferencia de puntos": StatDescription.DIFERENCIA_DE_PUNTOS,
  "El número de partidos ganados.": StatDescription.EL_NMERO_DE_PARTIDOS_GANADOS,
  "Empate": StatDescription.EMPATE,
  "Goles a favor": StatDescription.GOLES_A_FAVOR,
  "Goles en contra": StatDescription.GOLES_EN_CONTRA,
  "Número de partidos jugados": StatDescription.NMERO_DE_PARTIDOS_JUGADOS,
  "Overall Record": StatDescription.OVERALL_RECORD,
  "Point Deductions": StatDescription.POINT_DEDUCTIONS,
  "Puntos": StatDescription.PUNTOS,
  "Rank": StatDescription.RANK,
  "Rank Change": StatDescription.RANK_CHANGE
});

enum DisplayName { VICTORIAS, DERROTAS, EMPATE, PARTIDOS_JUGADOS, GOLES_PARA, GOLES_EN_CONTRA, PUNTOS, RANK_CHANGE, RANK, DIFERENCIA_DE_PUNTOS, POINT_DEDUCTIONS, OVERALL }

final displayNameValues = EnumValues({
  "Derrotas": DisplayName.DERROTAS,
  "Diferencia de puntos": DisplayName.DIFERENCIA_DE_PUNTOS,
  "Empate": DisplayName.EMPATE,
  "Goles en contra": DisplayName.GOLES_EN_CONTRA,
  "Goles para": DisplayName.GOLES_PARA,
  "Overall": DisplayName.OVERALL,
  "Partidos jugados": DisplayName.PARTIDOS_JUGADOS,
  "Point Deductions": DisplayName.POINT_DEDUCTIONS,
  "Puntos": DisplayName.PUNTOS,
  "Rank": DisplayName.RANK,
  "Rank Change": DisplayName.RANK_CHANGE,
  "Victorias": DisplayName.VICTORIAS
});

enum Name { WINS, LOSSES, TIES, GAMES_PLAYED, POINTS_FOR, POINTS_AGAINST, POINTS, RANK_CHANGE, RANK, POINT_DIFFERENTIAL, DEDUCTIONS, TOTAL }

final nameValues = EnumValues({
  "deductions": Name.DEDUCTIONS,
  "gamesPlayed": Name.GAMES_PLAYED,
  "losses": Name.LOSSES,
  "points": Name.POINTS,
  "pointsAgainst": Name.POINTS_AGAINST,
  "pointsFor": Name.POINTS_FOR,
  "pointDifferential": Name.POINT_DIFFERENTIAL,
  "rank": Name.RANK,
  "rankChange": Name.RANK_CHANGE,
  "ties": Name.TIES,
  "Total": Name.TOTAL,
  "wins": Name.WINS
});

enum ShortDisplayName { G, P, E, J, GF, GC, PTS, RANK_CHANGE, RANK, DIF, DEDUCTIONS, OVER }

final shortDisplayNameValues = EnumValues({
  "Deductions": ShortDisplayName.DEDUCTIONS,
  "DIF": ShortDisplayName.DIF,
  "E": ShortDisplayName.E,
  "G": ShortDisplayName.G,
  "GC": ShortDisplayName.GC,
  "GF": ShortDisplayName.GF,
  "J": ShortDisplayName.J,
  "OVER": ShortDisplayName.OVER,
  "P": ShortDisplayName.P,
  "PTS": ShortDisplayName.PTS,
  "Rank": ShortDisplayName.RANK,
  "Rank Change": ShortDisplayName.RANK_CHANGE
});

enum Summary { THE_000 }

final summaryValues = EnumValues({
  "0-0-0": Summary.THE_000
});

enum TypeEnum { WINS, LOSSES, TIES, GAMESPLAYED, POINTSFOR, POINTSAGAINST, POINTS, RANKCHANGE, RANK, POINTDIFFERENTIAL, DEDUCTIONS, TOTAL }

final typeEnumValues = EnumValues({
  "deductions": TypeEnum.DEDUCTIONS,
  "gamesplayed": TypeEnum.GAMESPLAYED,
  "losses": TypeEnum.LOSSES,
  "pointdifferential": TypeEnum.POINTDIFFERENTIAL,
  "points": TypeEnum.POINTS,
  "pointsagainst": TypeEnum.POINTSAGAINST,
  "pointsfor": TypeEnum.POINTSFOR,
  "rank": TypeEnum.RANK,
  "rankchange": TypeEnum.RANKCHANGE,
  "ties": TypeEnum.TIES,
  "total": TypeEnum.TOTAL,
  "wins": TypeEnum.WINS
});

class Team {
  Team({
    this.id,
    this.uid,
    this.location,
    this.name,
    this.abbreviation,
    this.displayName,
    this.shortDisplayName,
    this.isActive,
    this.logos,
    this.links,
  });

  String id;
  String uid;
  String location;
  String name;
  String abbreviation;
  String displayName;
  String shortDisplayName;
  bool isActive;
  List<Logo> logos;
  List<Link> links;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
    id: json["id"],
    uid: json["uid"],
    location: json["location"],
    name: json["name"],
    abbreviation: json["abbreviation"],
    displayName: json["displayName"],
    shortDisplayName: json["shortDisplayName"],
    isActive: json["isActive"],
    logos: json["logos"] == null ? null : List<Logo>.from(json["logos"].map((x) => Logo.fromJson(x))),
    links: List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "location": location,
    "name": name,
    "abbreviation": abbreviation,
    "displayName": displayName,
    "shortDisplayName": shortDisplayName,
    "isActive": isActive,
    "logos": logos == null ? null : List<dynamic>.from(logos.map((x) => x.toJson())),
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
  };
}

class Link {
  Link({
    this.language,
    this.rel,
    this.href,
    this.text,
    this.shortText,
    this.isExternal,
    this.isPremium,
  });

  Language language;
  List<LinkRel> rel;
  String href;
  LinkText text;
  LinkText shortText;
  bool isExternal;
  bool isPremium;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
    language: languageValues.map[json["language"]],
    rel: List<LinkRel>.from(json["rel"].map((x) => linkRelValues.map[x])),
    href: json["href"],
    text: textValues.map[json["text"]],
    shortText: textValues.map[json["shortText"]],
    isExternal: json["isExternal"],
    isPremium: json["isPremium"],
  );

  Map<String, dynamic> toJson() => {
    "language": languageValues.reverse[language],
    "rel": List<dynamic>.from(rel.map((x) => linkRelValues.reverse[x])),
    "href": href,
    "text": textValues.reverse[text],
    "shortText": textValues.reverse[shortText],
    "isExternal": isExternal,
    "isPremium": isPremium,
  };
}

enum Language { ES }

final languageValues = EnumValues({
  "es": Language.ES
});

enum LinkRel { CLUBHOUSE, DESKTOP, TEAM }

final linkRelValues = EnumValues({
  "clubhouse": LinkRel.CLUBHOUSE,
  "desktop": LinkRel.DESKTOP,
  "team": LinkRel.TEAM
});

enum LinkText { SEDE }

final textValues = EnumValues({
  "Sede": LinkText.SEDE
});

class Logo {
  Logo({
    this.href,
    this.width,
    this.height,
    this.alt,
    this.rel,
  });

  String href;
  int width;
  int height;
  String alt;
  List<LogoRel> rel;

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
    href: json["href"],
    width: json["width"],
    height: json["height"],
    alt: json["alt"],
    rel: List<LogoRel>.from(json["rel"].map((x) => logoRelValues.map[x])),
  );

  Map<String, dynamic> toJson() => {
    "href": href,
    "width": width,
    "height": height,
    "alt": alt,
    "rel": List<dynamic>.from(rel.map((x) => logoRelValues.reverse[x])),
  };
}

enum LogoRel { FULL, DEFAULT }

final logoRelValues = EnumValues({
  "default": LogoRel.DEFAULT,
  "full": LogoRel.FULL
});

class Season {
  Season({
    this.year,
    this.startDate,
    this.endDate,
    this.types,
  });

  int year;
  String startDate;
  String endDate;
  List<TypeElement> types;

  factory Season.fromJson(Map<String, dynamic> json) => Season(
    year: json["year"],
    startDate: json["startDate"],
    endDate: json["endDate"],
    types: List<TypeElement>.from(json["types"].map((x) => TypeElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "startDate": startDate,
    "endDate": endDate,
    "types": List<dynamic>.from(types.map((x) => x.toJson())),
  };
}

class TypeElement {
  TypeElement({
    this.id,
    this.name,
    this.abbreviation,
    this.startDate,
    this.endDate,
    this.hasStandings,
  });

  String id;
  String name;
  String abbreviation;
  String startDate;
  String endDate;
  bool hasStandings;

  factory TypeElement.fromJson(Map<String, dynamic> json) => TypeElement(
    id: json["id"],
    name: json["name"],
    abbreviation: json["abbreviation"],
    startDate: json["startDate"],
    endDate: json["endDate"],
    hasStandings: json["hasStandings"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "abbreviation": abbreviation,
    "startDate": startDate,
    "endDate": endDate,
    "hasStandings": hasStandings,
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
