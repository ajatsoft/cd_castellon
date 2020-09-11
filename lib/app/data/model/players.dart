// To parse this JSON data, do
//
//     final jugadores = jugadoresFromJson(jsonString);

import 'dart:convert';

Jugadores jugadoresFromJson(String str) => Jugadores.fromJson(json.decode(str));

String jugadoresToJson(Jugadores data) => json.encode(data.toJson());

class Jugadores {
  Jugadores({
    this.timestamp,
    this.status,
    this.season,
    this.athletes,
    this.team,
  });

  final DateTime timestamp;
  final String status;
  final Season season;
  final List<AthleteCS> athletes;
  final Team team;

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

  final String id;
  final String uid;
  final String guid;
  final String firstName;
  final String middleName;
  final String lastName;
  final String fullName;
  final String displayName;
  final String shortName;
  final int weight;
  final String displayWeight;
  final int height;
  final String displayHeight;
  final int age;
  final String dateOfBirth;
  final Gender gender;
  final List<Link> links;
  final BirthPlace birthPlace;
  final Citizenship citizenship;
  final Country citizenshipCountry;
  final String slug;
  final String jersey;
  final Flag flag;
  final Position position;
  final List<dynamic> injuries;
  final Status status;
  final Groups seasons;
  final Groups leagues;
  final Groups events;
  final Groups defaultLeague;
  final bool profiled;
  final Groups defaultTeam;
  final Country birthCountry;
  final Groups transactions;

  factory AthleteCS.fromJson(Map<String, dynamic> json) => AthleteCS(
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
        displayWeight:
            json["displayWeight"] == null ? null : json["displayWeight"],
        height: json["height"] == null ? null : json["height"].toInt(),
        displayHeight:
            json["displayHeight"] == null ? null : json["displayHeight"],
        age: json["age"] == null ? null : json["age"],
        dateOfBirth: json["dateOfBirth"] == null ? null : json["dateOfBirth"],
        gender:
            json["gender"] == null ? null : genderValues.map[json["gender"]],
        links: json["links"] == null
            ? null
            : List<Link>.from(json["links"].map((x) => Link.fromJson(x))),
        birthPlace: json["birthPlace"] == null
            ? null
            : BirthPlace.fromJson(json["birthPlace"]),
        citizenship: json["citizenship"] == null
            ? null
            : citizenshipValues.map[json["citizenship"]],
        citizenshipCountry: json["citizenshipCountry"] == null
            ? null
            : Country.fromJson(json["citizenshipCountry"]),
        slug: json["slug"] == null ? null : json["slug"],
        jersey: json["jersey"] == null ? null : json["jersey"],
        flag: json["flag"] == null ? null : Flag.fromJson(json["flag"]),
        position: json["position"] == null
            ? null
            : Position.fromJson(json["position"]),
        injuries: json["injuries"] == null
            ? null
            : List<dynamic>.from(json["injuries"].map((x) => x)),
        status: json["status"] == null ? null : Status.fromJson(json["status"]),
        seasons:
            json["seasons"] == null ? null : Groups.fromJson(json["seasons"]),
        leagues:
            json["leagues"] == null ? null : Groups.fromJson(json["leagues"]),
        events: json["events"] == null ? null : Groups.fromJson(json["events"]),
        defaultLeague: json["defaultLeague"] == null
            ? null
            : Groups.fromJson(json["defaultLeague"]),
        profiled: json["profiled"] == null ? null : json["profiled"],
        defaultTeam: json["defaultTeam"] == null
            ? null
            : Groups.fromJson(json["defaultTeam"]),
        birthCountry: json["birthCountry"] == null
            ? null
            : Country.fromJson(json["birthCountry"]),
        transactions: json["transactions"] == null
            ? null
            : Groups.fromJson(json["transactions"]),
      );

  Map<String, dynamic> toJson() => {
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
        "links": links == null
            ? null
            : List<dynamic>.from(links.map((x) => x.toJson())),
        "birthPlace": birthPlace == null ? null : birthPlace.toJson(),
        "citizenship":
            citizenship == null ? null : citizenshipValues.reverse[citizenship],
        "citizenshipCountry":
            citizenshipCountry == null ? null : citizenshipCountry.toJson(),
        "slug": slug == null ? null : slug,
        "jersey": jersey == null ? null : jersey,
        "flag": flag == null ? null : flag.toJson(),
        "position": position == null ? null : position.toJson(),
        "injuries": injuries == null
            ? null
            : List<dynamic>.from(injuries.map((x) => x)),
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

  final String alternateId;
  final BirthCountryAbbreviation abbreviation;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        alternateId: json["alternateId"] == null ? null : json["alternateId"],
        abbreviation: json["abbreviation"] == null
            ? null
            : birthCountryAbbreviationValues.map[json["abbreviation"]],
      );

  Map<String, dynamic> toJson() => {
        "alternateId": alternateId == null ? null : alternateId,
        "abbreviation": abbreviation == null
            ? null
            : birthCountryAbbreviationValues.reverse[abbreviation],
      };
}

enum BirthCountryAbbreviation { ESP, POR }

final birthCountryAbbreviationValues = EnumValues(
    {"ESP": BirthCountryAbbreviation.ESP, "POR": BirthCountryAbbreviation.POR});

class BirthPlace {
  BirthPlace({
    this.country,
  });

  final Citizenship country;

  factory BirthPlace.fromJson(Map<String, dynamic> json) => BirthPlace(
        country: json["country"] == null
            ? null
            : citizenshipValues.map[json["country"]],
      );

  Map<String, dynamic> toJson() => {
        "country": country == null ? null : citizenshipValues.reverse[country],
      };
}

enum Citizenship { ESPAA, PORTUGAL }

final citizenshipValues =
    EnumValues({"España": Citizenship.ESPAA, "Portugal": Citizenship.PORTUGAL});

class Groups {
  Groups({
    this.ref,
  });

  final String ref;

  factory Groups.fromJson(Map<String, dynamic> json) => Groups(
        ref: json["\u0024ref"] == null ? null : json["\u0024ref"],
      );

  Map<String, dynamic> toJson() => {
        "\u0024ref": ref == null ? null : ref,
      };
}

class Flag {
  Flag({
    this.href,
    this.alt,
    this.rel,
  });

  final String href;
  final Citizenship alt;
  final List<FlagRel> rel;

  factory Flag.fromJson(Map<String, dynamic> json) => Flag(
        href: json["href"] == null ? null : json["href"],
        alt: json["alt"] == null ? null : citizenshipValues.map[json["alt"]],
        rel: json["rel"] == null
            ? null
            : List<FlagRel>.from(json["rel"].map((x) => flagRelValues.map[x])),
      );

  Map<String, dynamic> toJson() => {
        "href": href == null ? null : href,
        "alt": alt == null ? null : citizenshipValues.reverse[alt],
        "rel": rel == null
            ? null
            : List<dynamic>.from(rel.map((x) => flagRelValues.reverse[x])),
      };
}

enum FlagRel { COUNTRY_FLAG }

final flagRelValues = EnumValues({"country-flag": FlagRel.COUNTRY_FLAG});

enum Gender { MALE }

final genderValues = EnumValues({"MALE": Gender.MALE});

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

  final Language language;
  final List<LinkRel> rel;
  final String href;
  final Text text;
  final Text shortText;
  final bool isExternal;
  final bool isPremium;

  factory Link.fromJson(Map<String, dynamic> json) => Link(
        language: json["language"] == null
            ? null
            : languageValues.map[json["language"]],
        rel: json["rel"] == null
            ? null
            : List<LinkRel>.from(json["rel"].map((x) => linkRelValues.map[x])),
        href: json["href"] == null ? null : json["href"],
        text: json["text"] == null ? null : textValues.map[json["text"]],
        shortText: json["shortText"] == null
            ? null
            : textValues.map[json["shortText"]],
        isExternal: json["isExternal"] == null ? null : json["isExternal"],
        isPremium: json["isPremium"] == null ? null : json["isPremium"],
      );

  Map<String, dynamic> toJson() => {
        "language": language == null ? null : languageValues.reverse[language],
        "rel": rel == null
            ? null
            : List<dynamic>.from(rel.map((x) => linkRelValues.reverse[x])),
        "href": href == null ? null : href,
        "text": text == null ? null : textValues.reverse[text],
        "shortText": shortText == null ? null : textValues.reverse[shortText],
        "isExternal": isExternal == null ? null : isExternal,
        "isPremium": isPremium == null ? null : isPremium,
      };
}

enum Language { ES }

final languageValues = EnumValues({"es": Language.ES});

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

enum Text {
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
  "Bio": Text.BIO,
  "Estadísticas": Text.ESTADSTICAS,
  "Noticias": Text.NOTICIAS,
  "Partidos": Text.PARTIDOS,
  "Perfil de Jugador": Text.PERFIL_DE_JUGADOR,
  "Perfil jugador": Text.PERFIL_JUGADOR,
  "Splits": Text.SPLITS,
  "Transfers": Text.TRANSFERS
});

class Position {
  Position({
    this.id,
    this.name,
    this.displayName,
    this.abbreviation,
    this.leaf,
  });

  final String id;
  final Name name;
  final DisplayName displayName;
  final PositionAbbreviation abbreviation;
  final bool leaf;

  factory Position.fromJson(Map<String, dynamic> json) => Position(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : nameValues.map[json["name"]],
        displayName: json["displayName"] == null
            ? null
            : displayNameValues.map[json["displayName"]],
        abbreviation: json["abbreviation"] == null
            ? null
            : positionAbbreviationValues.map[json["abbreviation"]],
        leaf: json["leaf"] == null ? null : json["leaf"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : nameValues.reverse[name],
        "displayName":
            displayName == null ? null : displayNameValues.reverse[displayName],
        "abbreviation": abbreviation == null
            ? null
            : positionAbbreviationValues.reverse[abbreviation],
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

enum DisplayName { ARQUERO, DEFENSOR, MEDIOCAMPISTA, ATACANTE }

final displayNameValues = EnumValues({
  "Arquero": DisplayName.ARQUERO,
  "Atacante": DisplayName.ATACANTE,
  "Defensor": DisplayName.DEFENSOR,
  "Mediocampista": DisplayName.MEDIOCAMPISTA
});

enum Name { GOALKEEPER, DEFENDER, MIDFIELDER, FORWARD }

final nameValues = EnumValues({
  "Defender": Name.DEFENDER,
  "Forward": Name.FORWARD,
  "Goalkeeper": Name.GOALKEEPER,
  "Midfielder": Name.MIDFIELDER
});

class Status {
  Status({
    this.id,
    this.name,
    this.type,
    this.abbreviation,
  });

  final String id;
  final NameEnum name;
  final Type type;
  final NameEnum abbreviation;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : nameEnumValues.map[json["name"]],
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        abbreviation: json["abbreviation"] == null
            ? null
            : nameEnumValues.map[json["abbreviation"]],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : nameEnumValues.reverse[name],
        "type": type == null ? null : typeValues.reverse[type],
        "abbreviation":
            abbreviation == null ? null : nameEnumValues.reverse[abbreviation],
      };
}

enum NameEnum { ACTIVO }

final nameEnumValues = EnumValues({"Activo": NameEnum.ACTIVO});

enum Type { ACTIVE }

final typeValues = EnumValues({"active": Type.ACTIVE});

class Season {
  Season({
    this.year,
    this.type,
    this.name,
  });

  final int year;
  final int type;
  final String name;

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        year: json["year"] == null ? null : json["year"],
        type: json["type"] == null ? null : json["type"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
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

  final String id;
  final String abbreviation;
  final String location;
  final String name;
  final String displayName;
  final String clubhouse;
  final String color;
  final String recordSummary;
  final String seasonSummary;
  final String standingSummary;
  final bool isNational;
  final Groups groups;

  factory Team.fromJson(Map<String, dynamic> json) => Team(
        id: json["id"] == null ? null : json["id"],
        abbreviation:
            json["abbreviation"] == null ? null : json["abbreviation"],
        location: json["location"] == null ? null : json["location"],
        name: json["name"] == null ? null : json["name"],
        displayName: json["displayName"] == null ? null : json["displayName"],
        clubhouse: json["clubhouse"] == null ? null : json["clubhouse"],
        color: json["color"] == null ? null : json["color"],
        recordSummary:
            json["recordSummary"] == null ? null : json["recordSummary"],
        seasonSummary:
            json["seasonSummary"] == null ? null : json["seasonSummary"],
        standingSummary:
            json["standingSummary"] == null ? null : json["standingSummary"],
        isNational: json["isNational"] == null ? null : json["isNational"],
        groups: json["groups"] == null ? null : Groups.fromJson(json["groups"]),
      );

  Map<String, dynamic> toJson() => {
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
