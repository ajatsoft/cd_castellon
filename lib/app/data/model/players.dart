// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

Jugadores welcomeFromJson(String str) => Jugadores.fromJson(json.decode(str));

String welcomeToJson(Jugadores data) => json.encode(data.toJson());

class Jugadores {
  Jugadores({
    this.timestamp,
    this.status,
    this.season,
    this.athletes,
    this.team,
  });

  DateTime timestamp;
  String status;
  Season season;
  List<AthleteCS> athletes;
  Team team;

  factory Jugadores.fromJson(Map<String, dynamic> json) => Jugadores(
        timestamp: json["timestamp"] == null
            ? null
            : DateTime.parse(json["timestamp"]),
        status: json["status"] == null ? null : json["status"],
        season: json["season"] == null ? null : Season.fromJson(json["season"]),
        athletes: json["athletes"] == null
            ? null
            : List<AthleteCS>.from(
                json["athletes"].map((x) => AthleteCS.fromJson(x))),
        team: json["team"] == null ? null : Team.fromJson(json["team"]),
      );

  Map<String, dynamic> toJson() => {
        "timestamp": timestamp == null ? null : timestamp.toIso8601String(),
        "status": status == null ? null : status,
        "season": season == null ? null : season.toJson(),
        "athletes": athletes == null
            ? null
            : List<dynamic>.from(athletes.map((x) => x.toJson())),
        "team": team == null ? null : team.toJson(),
      };
}

class AthleteCS {
  AthleteCS({
    this.id,
    this.uid,
    this.guid,
    this.firstName,
    this.middleName,
    this.lastName,
    this.fullName,
    this.displayName,
    this.shortName,
    this.weight,
    this.displayWeight,
    this.height,
    this.displayHeight,
    this.age,
    this.dateOfBirth,
    this.gender,
    this.links,
    this.birthPlace,
    this.citizenship,
    this.citizenshipCountry,
    this.slug,
    this.jersey,
    this.flag,
    this.position,
    this.injuries,
    this.statistics,
    this.status,
    this.seasons,
    this.leagues,
    this.events,
    this.defaultLeague,
    this.profiled,
    this.defaultTeam,
    this.birthCountry,
    this.transactions,
  });

  String id;
  String uid;
  String guid;
  String firstName;
  String middleName;
  String lastName;
  String fullName;
  String displayName;
  String shortName;
  int weight;
  String displayWeight;
  int height;
  String displayHeight;
  int age;
  String dateOfBirth;
  Gender gender;
  List<Link> links;
  BirthPlace birthPlace;
  Citizenship citizenship;
  Country citizenshipCountry;
  String slug;
  String jersey;
  Flag flag;
  Position position;
  List<dynamic> injuries;
  Statistics statistics;
  Status status;
  Groups seasons;
  Groups leagues;
  Groups events;
  Groups defaultLeague;
  bool profiled;
  Groups defaultTeam;
  Country birthCountry;
  Groups transactions;

  factory AthleteCS.fromJson(Map<String, dynamic> json) =>
      AthleteCS(
        id: json["id"] == null ? null : json["id"],
        uid: json["uid"] == null ? null : json["uid"],
        guid: json["guid"] == null ? null : json["guid"],
        firstName: json["firstName"] == null ? null : json["firstName"],
        middleName: json["middleName"] == null ? null : json["middleName"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        fullName: json["fullName"] == null ? null : json["fullName"],
        displayName: json["displayName"] == null ? null : json["displayName"],
        shortName: json["shortName"] == null ? null : json["shortName"],
        weight: json["weight"] == null ? null : json["weight"].toInt(),
        displayWeight: json["displayWeight"] == null
            ? null
            : json["displayWeight"],
        height: json["height"] == null ? null : json["height"].toInt(),
        displayHeight: json["displayHeight"] == null
            ? null
            : json["displayHeight"],
        age: json["age"] == null ? null : json["age"],
        dateOfBirth: json["dateOfBirth"] == null ? null : json["dateOfBirth"],
        gender: json["gender"] == null ? null : genderValues
            .map[json["gender"]],
        links: json["links"] == null ? null : List<Link>.from(
            json["links"].map((x) => Link.fromJson(x))),
        birthPlace: json["birthPlace"] == null ? null : BirthPlace.fromJson(
            json["birthPlace"]),
        citizenship: json["citizenship"] == null ? null : citizenshipValues
            .map[json["citizenship"]],
        citizenshipCountry: json["citizenshipCountry"] == null ? null : Country
            .fromJson(json["citizenshipCountry"]),
        slug: json["slug"] == null ? null : json["slug"],
        jersey: json["jersey"] == null ? null : json["jersey"],
        flag: json["flag"] == null ? null : Flag.fromJson(json["flag"]),
        position: json["position"] == null ? null : Position.fromJson(
            json["position"]),
        injuries: json["injuries"] == null ? null : List<dynamic>.from(
            json["injuries"].map((x) => x)),
        statistics: json["statistics"] == null ? null : Statistics.fromJson(
            json["statistics"]),
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        seasons: json["seasons"] == null ? null : Groups.fromJson(
            json["seasons"]),
        leagues: json["leagues"] == null ? null : Groups.fromJson(
            json["leagues"]),
        events: json["events"] == null ? null : Groups.fromJson(json["events"]),
        defaultLeague: json["defaultLeague"] == null ? null : Groups.fromJson(
            json["defaultLeague"]),
        profiled: json["profiled"] == null ? null : json["profiled"],
        defaultTeam: json["defaultTeam"] == null ? null : Groups.fromJson(
            json["defaultTeam"]),
        birthCountry: json["birthCountry"] == null ? null : Country.fromJson(
            json["birthCountry"]),
        transactions: json["transactions"] == null ? null : Groups.fromJson(
            json["transactions"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "uid": uid == null ? null : uid,
        "guid": guid == null ? null : guid,
        "firstName": firstName == null ? null : firstName,
        "middleName": middleName == null ? null : middleName,
        "lastName": lastName == null ? null : lastName,
        "fullName": fullName == null ? null : fullName,
        "displayName": displayName == null ? null : displayName,
        "shortName": shortName == null ? null : shortName,
        "weight": weight == null ? null : weight,
        "displayWeight": displayWeight == null ? null : displayWeight,
        "height": height == null ? null : height,
        "displayHeight": displayHeight == null ? null : displayHeight,
        "age": age == null ? null : age,
        "dateOfBirth": dateOfBirth == null ? null : dateOfBirth,
        "gender": gender == null ? null : genderValues.reverse[gender],
        "links": links == null ? null : List<dynamic>.from(
            links.map((x) => x.toJson())),
        "birthPlace": birthPlace == null ? null : birthPlace.toJson(),
        "citizenship": citizenship == null ? null : citizenshipValues
            .reverse[citizenship],
        "citizenshipCountry": citizenshipCountry == null
            ? null
            : citizenshipCountry.toJson(),
        "slug": slug == null ? null : slug,
        "jersey": jersey == null ? null : jersey,
        "flag": flag == null ? null : flag.toJson(),
        "position": position == null ? null : position.toJson(),
        "injuries": injuries == null ? null : List<dynamic>.from(
            injuries.map((x) => x)),
        "statistics": statistics == null ? null : statistics.toJson(),
        "status": status == null ? null : status.toJson(),
        "seasons": seasons == null ? null : seasons.toJson(),
        "leagues": leagues == null ? null : leagues.toJson(),
        "events": events == null ? null : events.toJson(),
        "defaultLeague": defaultLeague == null ? null : defaultLeague.toJson(),
        "profiled": profiled == null ? null : profiled,
        "defaultTeam": defaultTeam == null ? null : defaultTeam.toJson(),
        "birthCountry": birthCountry == null ? null : birthCountry.toJson(),
        "transactions": transactions == null ? null : transactions.toJson(),
      };
}

class Country {
  Country({
    this.alternateId,
    this.abbreviation,
  });

  String alternateId;
  BirthCountryAbbreviation abbreviation;

  factory Country.fromJson(Map<String, dynamic> json) =>
      Country(
        alternateId: json["alternateId"] == null ? null : json["alternateId"],
        abbreviation: json["abbreviation"] == null
            ? null
            : birthCountryAbbreviationValues.map[json["abbreviation"]],
      );

  Map<String, dynamic> toJson() =>
      {
        "alternateId": alternateId == null ? null : alternateId,
        "abbreviation": abbreviation == null
            ? null
            : birthCountryAbbreviationValues.reverse[abbreviation],
      };
}

enum BirthCountryAbbreviation { ESP, POR }

final birthCountryAbbreviationValues = EnumValues({
  "ESP": BirthCountryAbbreviation.ESP,
  "POR": BirthCountryAbbreviation.POR
});

class BirthPlace {
  BirthPlace({
    this.country,
  });

  String country;

  factory BirthPlace.fromJson(Map<String, dynamic> json) =>
      BirthPlace(
        country: json["country"] == null ? null : json["country"],
      );

  Map<String, dynamic> toJson() =>
      {
        "country": country == null ? null : citizenshipValues.reverse[country],
      };
}

enum Citizenship { ESPAA, PORTUGAL }

final citizenshipValues = EnumValues({
  "España": Citizenship.ESPAA,
  "Portugal": Citizenship.PORTUGAL
});

class Groups {
  Groups({
    this.ref,
  });

  String ref;

  factory Groups.fromJson(Map<String, dynamic> json) =>
      Groups(
        ref: json["\u0024ref"] == null ? null : json["\u0024ref"],
      );

  Map<String, dynamic> toJson() =>
      {
        "\u0024ref": ref == null ? null : ref,
      };
}

class Flag {
  Flag({
    this.href,
    this.alt,
    this.rel,
  });

  String href;
  Citizenship alt;
  List<FlagRel> rel;

  factory Flag.fromJson(Map<String, dynamic> json) =>
      Flag(
        href: json["href"] == null ? null : json["href"],
        alt: json["alt"] == null ? null : citizenshipValues.map[json["alt"]],
        rel: json["rel"] == null ? null : List<FlagRel>.from(
            json["rel"].map((x) => flagRelValues.map[x])),
      );

  Map<String, dynamic> toJson() =>
      {
        "href": href == null ? null : href,
        "alt": alt == null ? null : citizenshipValues.reverse[alt],
        "rel": rel == null ? null : List<dynamic>.from(
            rel.map((x) => flagRelValues.reverse[x])),
      };
}

enum FlagRel { COUNTRY_FLAG }

final flagRelValues = EnumValues({
  "country-flag": FlagRel.COUNTRY_FLAG
});

enum Gender { MALE }

final genderValues = EnumValues({
  "MALE": Gender.MALE
});

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
  Text_V text;
  Text_V shortText;
  bool isExternal;
  bool isPremium;

  factory Link.fromJson(Map<String, dynamic> json) =>
      Link(
        language: json["language"] == null ? null : languageValues
            .map[json["language"]],
        rel: json["rel"] == null ? null : List<LinkRel>.from(
            json["rel"].map((x) => linkRelValues.map[x])),
        href: json["href"] == null ? null : json["href"],
        text: json["text"] == null ? null : textValues.map[json["text"]],
        shortText: json["shortText"] == null ? null : textValues
            .map[json["shortText"]],
        isExternal: json["isExternal"] == null ? null : json["isExternal"],
        isPremium: json["isPremium"] == null ? null : json["isPremium"],
      );

  Map<String, dynamic> toJson() =>
      {
        "language": language == null ? null : languageValues.reverse[language],
        "rel": rel == null ? null : List<dynamic>.from(
            rel.map((x) => linkRelValues.reverse[x])),
        "href": href == null ? null : href,
        "text": text == null ? null : textValues.reverse[text],
        "shortText": shortText == null ? null : textValues.reverse[shortText],
        "isExternal": isExternal == null ? null : isExternal,
        "isPremium": isPremium == null ? null : isPremium,
      };
}

enum Language { ES }

final languageValues = EnumValues({
  "es": Language.ES
});

enum LinkRel {
  PLAYERCARD,
  DESKTOP,
  ATHLETE,
  STATS,
  SPLITS,
  GAMELOG,
  NEWS,
  BIO,
  OVERVIEW,
  TRANSFERS,
  MOBILE
}

final linkRelValues = EnumValues({
  "athlete": LinkRel.ATHLETE,
  "bio": LinkRel.BIO,
  "desktop": LinkRel.DESKTOP,
  "gamelog": LinkRel.GAMELOG,
  "mobile": LinkRel.MOBILE,
  "news": LinkRel.NEWS,
  "overview": LinkRel.OVERVIEW,
  "playercard": LinkRel.PLAYERCARD,
  "splits": LinkRel.SPLITS,
  "stats": LinkRel.STATS,
  "transfers": LinkRel.TRANSFERS
});

enum Text_V {
  PERFIL_JUGADOR,
  ESTADSTICAS,
  SPLITS,
  PARTIDOS,
  NOTICIAS,
  BIO,
  PERFIL_DE_JUGADOR,
  TRANSFERS
}

final textValues = EnumValues({
  "Bio": Text_V.BIO,
  "Estadísticas": Text_V.ESTADSTICAS,
  "Noticias": Text_V.NOTICIAS,
  "Partidos": Text_V.PARTIDOS,
  "Perfil de Jugador": Text_V.PERFIL_DE_JUGADOR,
  "Perfil jugador": Text_V.PERFIL_JUGADOR,
  "Splits": Text_V.SPLITS,
  "Transfers": Text_V.TRANSFERS
});

class Position {
  Position({
    this.id,
    this.name,
    this.displayName,
    this.abbreviation,
    this.leaf,
  });

  String id;
  PositionName name;
  String displayName;
  PositionAbbreviation abbreviation;
  bool leaf;

  factory Position.fromJson(Map<String, dynamic> json) =>
      Position(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : positionNameValues
            .map[json["name"]],
        displayName: json["displayName"] == null ? null : json["displayName"],
        abbreviation: json["abbreviation"] == null
            ? null
            : positionAbbreviationValues.map[json["abbreviation"]],
        leaf: json["leaf"] == null ? null : json["leaf"],
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "name": name == null ? null : positionNameValues.reverse[name],
        "displayName": displayName == null ? null : positionDisplayNameValues
            .reverse[displayName],
        "abbreviation": abbreviation == null ? null : positionAbbreviationValues
            .reverse[abbreviation],
        "leaf": leaf == null ? null : leaf,
      };
}

enum PositionAbbreviation { G, D, M, A }

final positionAbbreviationValues = EnumValues({
  "A": PositionAbbreviation.A,
  "D": PositionAbbreviation.D,
  "G": PositionAbbreviation.G,
  "M": PositionAbbreviation.M
});

enum PositionDisplayName { ARQUERO, DEFENSOR, MEDIOCAMPISTA, ATACANTE }

final positionDisplayNameValues = EnumValues({
  "Arquero": PositionDisplayName.ARQUERO,
  "Atacante": PositionDisplayName.ATACANTE,
  "Defensor": PositionDisplayName.DEFENSOR,
  "Mediocampista": PositionDisplayName.MEDIOCAMPISTA
});

enum PositionName { GOALKEEPER, DEFENDER, MIDFIELDER, FORWARD }

final positionNameValues = EnumValues({
  "Defender": PositionName.DEFENDER,
  "Forward": PositionName.FORWARD,
  "Goalkeeper": PositionName.GOALKEEPER,
  "Midfielder": PositionName.MIDFIELDER
});

class Statistics {
  Statistics({
    this.splits,
  });

  Status splits;

  factory Statistics.fromJson(Map<String, dynamic> json) =>
      Statistics(
        splits: json["splits"] == null ? null : Status.fromJson(json["splits"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "splits": splits == null ? null : splits.toJson(),
      };
}

class Status {
  Status({
    this.id,
    this.name,
    this.abbreviation,
    this.type,
    this.categories,
  });

  String id;
  NameEnum name;
  NameEnum abbreviation;
  Type type;
  List<Category> categories;

  factory Status.fromJson(Map<String, dynamic> json) =>
      Status(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : nameEnumValues.map[json["name"]],
        abbreviation: json["abbreviation"] == null ? null : nameEnumValues
            .map[json["abbreviation"]],
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        categories: json["categories"] == null ? null : List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "name": name == null ? null : nameEnumValues.reverse[name],
        "abbreviation": abbreviation == null ? null : nameEnumValues
            .reverse[abbreviation],
        "type": type == null ? null : typeValues.reverse[type],
        "categories": categories == null ? null : List<dynamic>.from(
            categories.map((x) => x.toJson())),
      };
}

enum NameEnum { TOTAL, ACTIVO }

final nameEnumValues = EnumValues({
  "Activo": NameEnum.ACTIVO,
  "Total": NameEnum.TOTAL
});

class Category {
  Category({
    this.name,
    this.displayName,
    this.shortDisplayName,
    this.abbreviation,
    this.summary,
    this.stats,
  });

  CategoryName name;
  CategoryDisplayName displayName;
  CategoryShortDisplayName shortDisplayName;
  CategoryAbbreviation abbreviation;
  String summary;
  List<Stat> stats;

  factory Category.fromJson(Map<String, dynamic> json) =>
      Category(
        name: json["name"] == null ? null : categoryNameValues
            .map[json["name"]],
        displayName: json["displayName"] == null
            ? null
            : categoryDisplayNameValues.map[json["displayName"]],
        shortDisplayName: json["shortDisplayName"] == null
            ? null
            : categoryShortDisplayNameValues.map[json["shortDisplayName"]],
        abbreviation: json["abbreviation"] == null
            ? null
            : categoryAbbreviationValues.map[json["abbreviation"]],
        summary: json["summary"] == null ? null : json["summary"],
        stats: json["stats"] == null ? null : List<Stat>.from(
            json["stats"].map((x) => Stat.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "name": name == null ? null : categoryNameValues.reverse[name],
        "displayName": displayName == null ? null : categoryDisplayNameValues
            .reverse[displayName],
        "shortDisplayName": shortDisplayName == null
            ? null
            : categoryShortDisplayNameValues.reverse[shortDisplayName],
        "abbreviation": abbreviation == null ? null : categoryAbbreviationValues
            .reverse[abbreviation],
        "summary": summary == null ? null : summary,
        "stats": stats == null ? null : List<dynamic>.from(
            stats.map((x) => x.toJson())),
      };
}

enum CategoryAbbreviation { GEN, OFF, GK }

final categoryAbbreviationValues = EnumValues({
  "gen": CategoryAbbreviation.GEN,
  "gk": CategoryAbbreviation.GK,
  "off": CategoryAbbreviation.OFF
});

enum CategoryDisplayName { GENERAL, OFENSIVA, GOAL_KEEPING }

final categoryDisplayNameValues = EnumValues({
  "General": CategoryDisplayName.GENERAL,
  "Goal Keeping": CategoryDisplayName.GOAL_KEEPING,
  "Ofensiva": CategoryDisplayName.OFENSIVA
});

enum CategoryName { GENERAL, OFFENSIVE, GOAL_KEEPING }

final categoryNameValues = EnumValues({
  "general": CategoryName.GENERAL,
  "goalKeeping": CategoryName.GOAL_KEEPING,
  "offensive": CategoryName.OFFENSIVE
});

enum CategoryShortDisplayName { GENERAL, OFENSIVO, KEEPER }

final categoryShortDisplayNameValues = EnumValues({
  "General": CategoryShortDisplayName.GENERAL,
  "Keeper": CategoryShortDisplayName.KEEPER,
  "Ofensivo": CategoryShortDisplayName.OFENSIVO
});

class Stat {
  Stat({
    this.name,
    this.displayName,
    this.shortDisplayName,
    this.description,
    this.abbreviation,
    this.value,
    this.displayValue,
  });

  StatName name;
  String displayName;
  StatShortDisplayName shortDisplayName;
  String description;
  StatAbbreviation abbreviation;
  int value;
  String displayValue;

  factory Stat.fromJson(Map<String, dynamic> json) =>
      Stat(
        name: json["name"] == null ? null : statNameValues.map[json["name"]],
        displayName: json["displayName"] == null ? null : json["displayName"],
        shortDisplayName: json["shortDisplayName"] == null
            ? null
            : statShortDisplayNameValues.map[json["shortDisplayName"]],
        description: json["description"] == null ? null : json["description"],
        abbreviation: json["abbreviation"] == null
            ? null
            : statAbbreviationValues.map[json["abbreviation"]],
        value: json["value"] == null ? null : json["value"].toInt(),
        displayValue: json["displayValue"] == null
            ? null
            : json["displayValue"],
      );

  Map<String, dynamic> toJson() =>
      {
        "name": name == null ? null : statNameValues.reverse[name],
        "displayName": displayName == null ? null : statDisplayNameValues
            .reverse[displayName],
        "shortDisplayName": shortDisplayName == null
            ? null
            : statShortDisplayNameValues.reverse[shortDisplayName],
        "description": description == null ? null : description,
        "abbreviation": abbreviation == null ? null : statAbbreviationValues
            .reverse[abbreviation],
        "value": value == null ? null : value,
        "displayValue": displayValue == null ? null : displayValue,
      };
}

enum StatAbbreviation { FC, FS, TR, TA, EC, AP, SUB, A, FL, TM, TT, G, SHF, GA }

final statAbbreviationValues = EnumValues({
  "A": StatAbbreviation.A,
  "Ap": StatAbbreviation.AP,
  "EC": StatAbbreviation.EC,
  "FC": StatAbbreviation.FC,
  "FL": StatAbbreviation.FL,
  "FS": StatAbbreviation.FS,
  "G": StatAbbreviation.G,
  "GA": StatAbbreviation.GA,
  "SHF": StatAbbreviation.SHF,
  "SUB": StatAbbreviation.SUB,
  "TA": StatAbbreviation.TA,
  "TM": StatAbbreviation.TM,
  "TR": StatAbbreviation.TR,
  "TT": StatAbbreviation.TT
});

enum StatDisplayName {
  FALTAS_COMETIDAS,
  FALTAS_SUFRIDAS,
  TARJETAS_ROJAS,
  TARJETAS_AMARILLAS,
  GOLES_EN_CONTRA,
  APARICIONES,
  APARICIONES_COMO_SUSTITUTO,
  ASISTENCIAS,
  FUERA_DE_LUGAR,
  TIROS_A_META,
  TIROS,
  TOTAL_DE_GOLES,
  ATAJADAS,
  SHOTS_FACED,
  GOLES_CONCEDIDOS
}

final statDisplayNameValues = EnumValues({
  "Apariciones": StatDisplayName.APARICIONES,
  "Apariciones como Sustituto": StatDisplayName.APARICIONES_COMO_SUSTITUTO,
  "Asistencias": StatDisplayName.ASISTENCIAS,
  "Atajadas": StatDisplayName.ATAJADAS,
  "Faltas cometidas": StatDisplayName.FALTAS_COMETIDAS,
  "Faltas sufridas": StatDisplayName.FALTAS_SUFRIDAS,
  "Fuera de lugar": StatDisplayName.FUERA_DE_LUGAR,
  "Goles Concedidos": StatDisplayName.GOLES_CONCEDIDOS,
  "Goles en contra": StatDisplayName.GOLES_EN_CONTRA,
  "Shots Faced": StatDisplayName.SHOTS_FACED,
  "Tarjetas amarillas": StatDisplayName.TARJETAS_AMARILLAS,
  "Tarjetas Rojas": StatDisplayName.TARJETAS_ROJAS,
  "Tiros": StatDisplayName.TIROS,
  "Tiros a meta": StatDisplayName.TIROS_A_META,
  "Total de goles": StatDisplayName.TOTAL_DE_GOLES
});

enum StatName {
  FOULS_COMMITTED,
  FOULS_SUFFERED,
  RED_CARDS,
  YELLOW_CARDS,
  OWN_GOALS,
  APPEARANCES,
  SUB_INS,
  GOAL_ASSISTS,
  OFFSIDES,
  SHOTS_ON_TARGET,
  TOTAL_SHOTS,
  TOTAL_GOALS,
  SAVES,
  SHOTS_FACED,
  GOALS_CONCEDED
}

final statNameValues = EnumValues({
  "appearances": StatName.APPEARANCES,
  "foulsCommitted": StatName.FOULS_COMMITTED,
  "foulsSuffered": StatName.FOULS_SUFFERED,
  "goalsConceded": StatName.GOALS_CONCEDED,
  "goalAssists": StatName.GOAL_ASSISTS,
  "offsides": StatName.OFFSIDES,
  "ownGoals": StatName.OWN_GOALS,
  "redCards": StatName.RED_CARDS,
  "saves": StatName.SAVES,
  "shotsFaced": StatName.SHOTS_FACED,
  "shotsOnTarget": StatName.SHOTS_ON_TARGET,
  "subIns": StatName.SUB_INS,
  "totalGoals": StatName.TOTAL_GOALS,
  "totalShots": StatName.TOTAL_SHOTS,
  "yellowCards": StatName.YELLOW_CARDS
});

enum StatShortDisplayName {
  FC,
  FS,
  TR,
  TA,
  EC,
  AP,
  SUB,
  A,
  OF,
  ST,
  SH,
  G,
  SV,
  SHF,
  GA
}

final statShortDisplayNameValues = EnumValues({
  "A": StatShortDisplayName.A,
  "Ap": StatShortDisplayName.AP,
  "EC": StatShortDisplayName.EC,
  "FC": StatShortDisplayName.FC,
  "FS": StatShortDisplayName.FS,
  "G": StatShortDisplayName.G,
  "GA": StatShortDisplayName.GA,
  "OF": StatShortDisplayName.OF,
  "SH": StatShortDisplayName.SH,
  "SHF": StatShortDisplayName.SHF,
  "ST": StatShortDisplayName.ST,
  "Sub": StatShortDisplayName.SUB,
  "SV": StatShortDisplayName.SV,
  "TA": StatShortDisplayName.TA,
  "TR": StatShortDisplayName.TR
});

enum Type { TOTAL, ACTIVE }

final typeValues = EnumValues({
  "active": Type.ACTIVE,
  "total": Type.TOTAL
});

class Season {
  Season({
    this.year,
    this.type,
    this.name,
  });

  int year;
  int type;
  String name;

  factory Season.fromJson(Map<String, dynamic> json) =>
      Season(
        year: json["year"] == null ? null : json["year"],
        type: json["type"] == null ? null : json["type"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() =>
      {
        "year": year == null ? null : year,
        "type": type == null ? null : type,
        "name": name == null ? null : name,
      };
}

class Team {
  Team({
    this.id,
    this.abbreviation,
    this.location,
    this.name,
    this.displayName,
    this.clubhouse,
    this.color,
    this.recordSummary,
    this.seasonSummary,
    this.standingSummary,
    this.isNational,
    this.groups,
  });

  String id;
  String abbreviation;
  String location;
  String name;
  String displayName;
  String clubhouse;
  String color;
  String recordSummary;
  String seasonSummary;
  String standingSummary;
  bool isNational;
  Groups groups;

  factory Team.fromJson(Map<String, dynamic> json) =>
      Team(
        id: json["id"] == null ? null : json["id"],
        abbreviation: json["abbreviation"] == null
            ? null
            : json["abbreviation"],
        location: json["location"] == null ? null : json["location"],
        name: json["name"] == null ? null : json["name"],
        displayName: json["displayName"] == null ? null : json["displayName"],
        clubhouse: json["clubhouse"] == null ? null : json["clubhouse"],
        color: json["color"] == null ? null : json["color"],
        recordSummary: json["recordSummary"] == null
            ? null
            : json["recordSummary"],
        seasonSummary: json["seasonSummary"] == null
            ? null
            : json["seasonSummary"],
        standingSummary: json["standingSummary"] == null
            ? null
            : json["standingSummary"],
        isNational: json["isNational"] == null ? null : json["isNational"],
        groups: json["groups"] == null ? null : Groups.fromJson(json["groups"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "abbreviation": abbreviation == null ? null : abbreviation,
        "location": location == null ? null : location,
        "name": name == null ? null : name,
        "displayName": displayName == null ? null : displayName,
        "clubhouse": clubhouse == null ? null : clubhouse,
        "color": color == null ? null : color,
        "recordSummary": recordSummary == null ? null : recordSummary,
        "seasonSummary": seasonSummary == null ? null : seasonSummary,
        "standingSummary": standingSummary == null ? null : standingSummary,
        "isNational": isNational == null ? null : isNational,
        "groups": groups == null ? null : groups.toJson(),
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
