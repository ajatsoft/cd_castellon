// To parse this JSON data, do
//
//     final partidoHomeModel = partidoHomeModelFromJson(jsonString);

import 'dart:convert';

PartidoHomeModel partidoHomeModelFromJson(String str) => PartidoHomeModel.fromJson(json.decode(str));

String partidoHomeModelToJson(PartidoHomeModel data) => json.encode(data.toJson());

class PartidoHomeModel {
  PartidoHomeModel({
    this.team,
  });

  PartidoHomeModelTeam team;

  factory PartidoHomeModel.fromJson(Map<String, dynamic> json) => PartidoHomeModel(
    team: json["team"] == null ? null : PartidoHomeModelTeam.fromJson(json["team"]),
  );

  Map<String, dynamic> toJson() => {
    "team": team == null ? null : team.toJson(),
  };
}

class PartidoHomeModelTeam {
  PartidoHomeModelTeam({
    this.id,
    this.uid,
    this.slug,
    this.location,
    this.name,
    this.abbreviation,
    this.displayName,
    this.shortDisplayName,
    this.color,
    this.alternateColor,
    this.isActive,
    this.record,
    this.groups,
    this.links,
    this.nextEvent,
    this.standingSummary,
  });

  String id;
  String uid;
  String slug;
  String location;
  String name;
  String abbreviation;
  String displayName;
  String shortDisplayName;
  String color;
  String alternateColor;
  bool isActive;
  Record record;
  Groups groups;
  List<NextEventLink> links;
  List<NextEvent> nextEvent;
  String standingSummary;

  factory PartidoHomeModelTeam.fromJson(Map<String, dynamic> json) => PartidoHomeModelTeam(
    id: json["id"] == null ? null : json["id"],
    uid: json["uid"] == null ? null : json["uid"],
    slug: json["slug"] == null ? null : json["slug"],
    location: json["location"] == null ? null : json["location"],
    name: json["name"] == null ? null : json["name"],
    abbreviation: json["abbreviation"] == null ? null : json["abbreviation"],
    displayName: json["displayName"] == null ? null : json["displayName"],
    shortDisplayName: json["shortDisplayName"] == null ? null : json["shortDisplayName"],
    color: json["color"] == null ? null : json["color"],
    alternateColor: json["alternateColor"] == null ? null : json["alternateColor"],
    isActive: json["isActive"] == null ? null : json["isActive"],
    record: json["record"] == null ? null : Record.fromJson(json["record"]),
    groups: json["groups"] == null ? null : Groups.fromJson(json["groups"]),
    links: json["links"] == null ? null : List<NextEventLink>.from(json["links"].map((x) => NextEventLink.fromJson(x))),
    nextEvent: json["nextEvent"] == null ? null : List<NextEvent>.from(json["nextEvent"].map((x) => NextEvent.fromJson(x))),
    standingSummary: json["standingSummary"] == null ? null : json["standingSummary"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "uid": uid == null ? null : uid,
    "slug": slug == null ? null : slug,
    "location": location == null ? null : location,
    "name": name == null ? null : name,
    "abbreviation": abbreviation == null ? null : abbreviation,
    "displayName": displayName == null ? null : displayName,
    "shortDisplayName": shortDisplayName == null ? null : shortDisplayName,
    "color": color == null ? null : color,
    "alternateColor": alternateColor == null ? null : alternateColor,
    "isActive": isActive == null ? null : isActive,
    "record": record == null ? null : record.toJson(),
    "groups": groups == null ? null : groups.toJson(),
    "links": links == null ? null : List<dynamic>.from(links.map((x) => x.toJson())),
    "nextEvent": nextEvent == null ? null : List<dynamic>.from(nextEvent.map((x) => x.toJson())),
    "standingSummary": standingSummary == null ? null : standingSummary,
  };
}

class Groups {
  Groups({
    this.id,
  });

  String id;

  factory Groups.fromJson(Map<String, dynamic> json) => Groups(
    id: json["id"] == null ? null : json["id"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
  };
}

class NextEventLink {
  NextEventLink({
    this.language,
    this.rel,
    this.href,
    this.text,
    this.shortText,
    this.isExternal,
    this.isPremium,
  });

  Language language;
  List<String> rel;
  String href;
  String text;
  String shortText;
  bool isExternal;
  bool isPremium;

  factory NextEventLink.fromJson(Map<String, dynamic> json) => NextEventLink(
    language: json["language"] == null ? null : languageValues.map[json["language"]],
    rel: json["rel"] == null ? null : List<String>.from(json["rel"].map((x) => x)),
    href: json["href"] == null ? null : json["href"],
    text: json["text"] == null ? null : json["text"],
    shortText: json["shortText"] == null ? null : json["shortText"],
    isExternal: json["isExternal"] == null ? null : json["isExternal"],
    isPremium: json["isPremium"] == null ? null : json["isPremium"],
  );

  Map<String, dynamic> toJson() => {
    "language": language == null ? null : languageValues.reverse[language],
    "rel": rel == null ? null : List<dynamic>.from(rel.map((x) => x)),
    "href": href == null ? null : href,
    "text": text == null ? null : text,
    "shortText": shortText == null ? null : shortText,
    "isExternal": isExternal == null ? null : isExternal,
    "isPremium": isPremium == null ? null : isPremium,
  };
}

enum Language { EN_US }

final languageValues = EnumValues({
  "en-US": Language.EN_US
});

class NextEvent {
  NextEvent({
    this.id,
    this.date,
    this.name,
    this.shortName,
    this.season,
    this.seasonType,
    this.timeValid,
    this.competitions,
    this.links,
    this.league,
  });

  String id;
  String date;
  String name;
  String shortName;
  Season season;
  SeasonType seasonType;
  bool timeValid;
  List<CompetitionHome> competitions;
  List<NextEventLink> links;
  League league;

  factory NextEvent.fromJson(Map<String, dynamic> json) => NextEvent(
    id: json["id"] == null ? null : json["id"],
    date: json["date"] == null ? null : json["date"],
    name: json["name"] == null ? null : json["name"],
    shortName: json["shortName"] == null ? null : json["shortName"],
    season: json["season"] == null ? null : Season.fromJson(json["season"]),
    seasonType: json["seasonType"] == null ? null : SeasonType.fromJson(json["seasonType"]),
    timeValid: json["timeValid"] == null ? null : json["timeValid"],
    competitions: json["competitions"] == null ? null : List<CompetitionHome>.from(json["competitions"].map((x) => CompetitionHome.fromJson(x))),
    links: json["links"] == null ? null : List<NextEventLink>.from(json["links"].map((x) => NextEventLink.fromJson(x))),
    league: json["league"] == null ? null : League.fromJson(json["league"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "date": date == null ? null : date,
    "name": name == null ? null : name,
    "shortName": shortName == null ? null : shortName,
    "season": season == null ? null : season.toJson(),
    "seasonType": seasonType == null ? null : seasonType.toJson(),
    "timeValid": timeValid == null ? null : timeValid,
    "competitions": competitions == null ? null : List<dynamic>.from(competitions.map((x) => x.toJson())),
    "links": links == null ? null : List<dynamic>.from(links.map((x) => x.toJson())),
    "league": league == null ? null : league.toJson(),
  };
}

class CompetitionHome {
  CompetitionHome({
    this.id,
    this.date,
    this.attendance,
    this.timeValid,
    this.neutralSite,
    this.boxscoreAvailable,
    this.ticketsAvailable,
    this.venue,
    this.competitors,
    this.notes,
    this.broadcasts,
    this.status,
  });

  String id;
  String date;
  int attendance;
  bool timeValid;
  bool neutralSite;
  bool boxscoreAvailable;
  bool ticketsAvailable;
  Venue venue;
  List<Competitor> competitors;
  List<dynamic> notes;
  List<dynamic> broadcasts;
  Status status;

  factory CompetitionHome.fromJson(Map<String, dynamic> json) => CompetitionHome(
    id: json["id"] == null ? null : json["id"],
    date: json["date"] == null ? null : json["date"],
    attendance: json["attendance"] == null ? null : json["attendance"],
    timeValid: json["timeValid"] == null ? null : json["timeValid"],
    neutralSite: json["neutralSite"] == null ? null : json["neutralSite"],
    boxscoreAvailable: json["boxscoreAvailable"] == null ? null : json["boxscoreAvailable"],
    ticketsAvailable: json["ticketsAvailable"] == null ? null : json["ticketsAvailable"],
    venue: json["venue"] == null ? null : Venue.fromJson(json["venue"]),
    competitors: json["competitors"] == null ? null : List<Competitor>.from(json["competitors"].map((x) => Competitor.fromJson(x))),
    notes: json["notes"] == null ? null : List<dynamic>.from(json["notes"].map((x) => x)),
    broadcasts: json["broadcasts"] == null ? null : List<dynamic>.from(json["broadcasts"].map((x) => x)),
    status: json["status"] == null ? null : Status.fromJson(json["status"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "date": date == null ? null : date,
    "attendance": attendance == null ? null : attendance,
    "timeValid": timeValid == null ? null : timeValid,
    "neutralSite": neutralSite == null ? null : neutralSite,
    "boxscoreAvailable": boxscoreAvailable == null ? null : boxscoreAvailable,
    "ticketsAvailable": ticketsAvailable == null ? null : ticketsAvailable,
    "venue": venue == null ? null : venue.toJson(),
    "competitors": competitors == null ? null : List<dynamic>.from(competitors.map((x) => x.toJson())),
    "notes": notes == null ? null : List<dynamic>.from(notes.map((x) => x)),
    "broadcasts": broadcasts == null ? null : List<dynamic>.from(broadcasts.map((x) => x)),
    "status": status == null ? null : status.toJson(),
  };
}

class Competitor {
  Competitor({
    this.id,
    this.type,
    this.order,
    this.homeAway,
    this.winner,
    this.team,
  });

  String id;
  String type;
  int order;
  String homeAway;
  bool winner;
  CompetitorTeamPH team;

  factory Competitor.fromJson(Map<String, dynamic> json) => Competitor(
    id: json["id"] == null ? null : json["id"],
    type: json["type"] == null ? null : json["type"],
    order: json["order"] == null ? null : json["order"],
    homeAway: json["homeAway"] == null ? null : json["homeAway"],
    winner: json["winner"] == null ? null : json["winner"],
    team: json["team"] == null ? null : CompetitorTeamPH.fromJson(json["team"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "type": type == null ? null : type,
    "order": order == null ? null : order,
    "homeAway": homeAway == null ? null : homeAway,
    "winner": winner == null ? null : winner,
    "team": team == null ? null : team.toJson(),
  };
}

class CompetitorTeamPH {
  CompetitorTeamPH({
    this.id,
    this.location,
    this.abbreviation,
    this.displayName,
    this.shortDisplayName,
    this.logos,
    this.links,
  });

  String id;
  String location;
  String abbreviation;
  String displayName;
  String shortDisplayName;
  List<Logo> logos;
  List<PurpleLink> links;

  factory CompetitorTeamPH.fromJson(Map<String, dynamic> json) => CompetitorTeamPH(
    id: json["id"] == null ? null : json["id"],
    location: json["location"] == null ? null : json["location"],
    abbreviation: json["abbreviation"] == null ? null : json["abbreviation"],
    displayName: json["displayName"] == null ? null : json["displayName"],
    shortDisplayName: json["shortDisplayName"] == null ? null : json["shortDisplayName"],
    logos: json["logos"] == null ? null : List<Logo>.from(json["logos"].map((x) => Logo.fromJson(x))),
    links: json["links"] == null ? null : List<PurpleLink>.from(json["links"].map((x) => PurpleLink.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "location": location == null ? null : location,
    "abbreviation": abbreviation == null ? null : abbreviation,
    "displayName": displayName == null ? null : displayName,
    "shortDisplayName": shortDisplayName == null ? null : shortDisplayName,
    "logos": logos == null ? null : List<dynamic>.from(logos.map((x) => x.toJson())),
    "links": links == null ? null : List<dynamic>.from(links.map((x) => x.toJson())),
  };
}

class PurpleLink {
  PurpleLink({
    this.rel,
    this.href,
    this.text,
  });

  List<String> rel;
  String href;
  String text;

  factory PurpleLink.fromJson(Map<String, dynamic> json) => PurpleLink(
    rel: json["rel"] == null ? null : List<String>.from(json["rel"].map((x) => x)),
    href: json["href"] == null ? null : json["href"],
    text: json["text"] == null ? null : json["text"],
  );

  Map<String, dynamic> toJson() => {
    "rel": rel == null ? null : List<dynamic>.from(rel.map((x) => x)),
    "href": href == null ? null : href,
    "text": text == null ? null : text,
  };
}

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
  List<String> rel;

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
    href: json["href"] == null ? null : json["href"],
    width: json["width"] == null ? null : json["width"],
    height: json["height"] == null ? null : json["height"],
    alt: json["alt"] == null ? null : json["alt"],
    rel: json["rel"] == null ? null : List<String>.from(json["rel"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    "href": href == null ? null : href,
    "width": width == null ? null : width,
    "height": height == null ? null : height,
    "alt": alt == null ? null : alt,
    "rel": rel == null ? null : List<dynamic>.from(rel.map((x) => x)),
  };
}

class Status {
  Status({
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
  Type type;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    clock: json["clock"] == null ? null : json["clock"].toInt(),
    addedClock: json["addedClock"] == null ? null : json["addedClock"].toInt(),
    displayClock: json["displayClock"] == null ? null : json["displayClock"],
    period: json["period"] == null ? null : json["period"],
    type: json["type"] == null ? null : Type.fromJson(json["type"]),
  );

  Map<String, dynamic> toJson() => {
    "clock": clock == null ? null : clock,
    "addedClock": addedClock == null ? null : addedClock,
    "displayClock": displayClock == null ? null : displayClock,
    "period": period == null ? null : period,
    "type": type == null ? null : type.toJson(),
  };
}

class Type {
  Type({
    this.id,
    this.name,
    this.state,
    this.completed,
    this.description,
    this.detail,
    this.shortDetail,
  });

  String id;
  String name;
  String state;
  bool completed;
  String description;
  String detail;
  String shortDetail;

  factory Type.fromJson(Map<String, dynamic> json) => Type(
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    state: json["state"] == null ? null : json["state"],
    completed: json["completed"] == null ? null : json["completed"],
    description: json["description"] == null ? null : json["description"],
    detail: json["detail"] == null ? null : json["detail"],
    shortDetail: json["shortDetail"] == null ? null : json["shortDetail"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "name": name == null ? null : name,
    "state": state == null ? null : state,
    "completed": completed == null ? null : completed,
    "description": description == null ? null : description,
    "detail": detail == null ? null : detail,
    "shortDetail": shortDetail == null ? null : shortDetail,
  };
}

class Venue {
  Venue({
    this.fullName,
    this.address,
  });

  String fullName;
  Address address;

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    fullName: json["fullName"] == null ? null : json["fullName"],
    address: json["address"] == null ? null : Address.fromJson(json["address"]),
  );

  Map<String, dynamic> toJson() => {
    "fullName": fullName == null ? null : fullName,
    "address": address == null ? null : address.toJson(),
  };
}

class Address {
  Address();

  factory Address.fromJson(Map<String, dynamic> json) => Address(
  );

  Map<String, dynamic> toJson() => {
  };
}

class League {
  League({
    this.id,
    this.alternateId,
    this.name,
    this.abbreviation,
    this.shortName,
    this.midsizeName,
    this.slug,
    this.isTournament,
  });

  String id;
  String alternateId;
  String name;
  String abbreviation;
  String shortName;
  String midsizeName;
  String slug;
  bool isTournament;

  factory League.fromJson(Map<String, dynamic> json) => League(
    id: json["id"] == null ? null : json["id"],
    alternateId: json["alternateId"] == null ? null : json["alternateId"],
    name: json["name"] == null ? null : json["name"],
    abbreviation: json["abbreviation"] == null ? null : json["abbreviation"],
    shortName: json["shortName"] == null ? null : json["shortName"],
    midsizeName: json["midsizeName"] == null ? null : json["midsizeName"],
    slug: json["slug"] == null ? null : json["slug"],
    isTournament: json["isTournament"] == null ? null : json["isTournament"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "alternateId": alternateId == null ? null : alternateId,
    "name": name == null ? null : name,
    "abbreviation": abbreviation == null ? null : abbreviation,
    "shortName": shortName == null ? null : shortName,
    "midsizeName": midsizeName == null ? null : midsizeName,
    "slug": slug == null ? null : slug,
    "isTournament": isTournament == null ? null : isTournament,
  };
}

class Season {
  Season({
    this.year,
    this.displayName,
  });

  int year;
  String displayName;

  factory Season.fromJson(Map<String, dynamic> json) => Season(
    year: json["year"] == null ? null : json["year"],
    displayName: json["displayName"] == null ? null : json["displayName"],
  );

  Map<String, dynamic> toJson() => {
    "year": year == null ? null : year,
    "displayName": displayName == null ? null : displayName,
  };
}

class SeasonType {
  SeasonType({
    this.id,
    this.type,
    this.name,
    this.abbreviation,
  });

  String id;
  int type;
  String name;
  String abbreviation;

  factory SeasonType.fromJson(Map<String, dynamic> json) => SeasonType(
    id: json["id"] == null ? null : json["id"],
    type: json["type"] == null ? null : json["type"],
    name: json["name"] == null ? null : json["name"],
    abbreviation: json["abbreviation"] == null ? null : json["abbreviation"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "type": type == null ? null : type,
    "name": name == null ? null : name,
    "abbreviation": abbreviation == null ? null : abbreviation,
  };
}

class Record {
  Record({
    this.items,
  });

  List<Item> items;

  factory Record.fromJson(Map<String, dynamic> json) => Record(
    items: json["items"] == null ? null : List<Item>.from(json["items"].map((x) => Item.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "items": items == null ? null : List<dynamic>.from(items.map((x) => x.toJson())),
  };
}

class Item {
  Item({
    this.description,
    this.type,
    this.summary,
    this.stats,
  });

  String description;
  String type;
  String summary;
  List<Stat> stats;

  factory Item.fromJson(Map<String, dynamic> json) => Item(
    description: json["description"] == null ? null : json["description"],
    type: json["type"] == null ? null : json["type"],
    summary: json["summary"] == null ? null : json["summary"],
    stats: json["stats"] == null ? null : List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "description": description == null ? null : description,
    "type": type == null ? null : type,
    "summary": summary == null ? null : summary,
    "stats": stats == null ? null : List<dynamic>.from(stats.map((x) => x.toJson())),
  };
}

class Stat {
  Stat({
    this.name,
    this.value,
  });

  String name;
  int value;

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
    name: json["name"] == null ? null : json["name"],
    value: json["value"] == null ? null : json["value"].toInt(),
  );

  Map<String, dynamic> toJson() => {
    "name": name == null ? null : name,
    "value": value == null ? null : value,
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
