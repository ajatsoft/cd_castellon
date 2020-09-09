// To parse this JSON data, do
//
//     final partidoDataDetail = partidoDataDetailFromJson(jsonString);

import 'dart:convert';

PartidoDataDetail partidoDataDetailFromJson(String str) => PartidoDataDetail.fromJson(json.decode(str));

String partidoDataDetailToJson(PartidoDataDetail data) => json.encode(data.toJson());

class PartidoDataDetail {
  PartidoDataDetail({
    this.boxscore,
    this.gameInfo,
    this.headToHeadGames,
    this.broadcasts,
    this.odds,
    this.hasOdds,
    this.rosters,
    this.news,
    this.header,
    this.videos,
    this.keyEvents,
    this.standings,
  });

  Boxscore boxscore;
  GameInfo gameInfo;
  List<HeadToHeadGame> headToHeadGames;
  List<dynamic> broadcasts;
  List<Odd> odds;
  bool hasOdds;
  List<PartidoDataDetailRoster> rosters;
  News news;
  Header header;
  List<dynamic> videos;
  List<KeyEvent> keyEvents;
  PartidoDataDetailStandings standings;

  factory PartidoDataDetail.fromJson(Map<String, dynamic> json) => PartidoDataDetail(
    boxscore: Boxscore.fromJson(json["boxscore"]),
    gameInfo: GameInfo.fromJson(json["gameInfo"]),
    headToHeadGames: List<HeadToHeadGame>.from(json["headToHeadGames"].map((x) => HeadToHeadGame.fromJson(x))),
    broadcasts: List<dynamic>.from(json["broadcasts"].map((x) => x)),
    odds: json["odds"] == null ? null : List<Odd>.from(json["odds"].map((x) => Odd.fromJson(x))),
    hasOdds: json["hasOdds"],
    rosters: List<PartidoDataDetailRoster>.from(json["rosters"].map((x) => PartidoDataDetailRoster.fromJson(x))),
    news: News.fromJson(json["news"]),
    header: Header.fromJson(json["header"]),
    videos: json["videos"] == null ? null :List<dynamic>.from(json["videos"].map((x) => x)),
    keyEvents: json["keyEvents"] == null ? null : List<KeyEvent>.from(json["keyEvents"].map((x) => KeyEvent.fromJson(x))),
    standings: PartidoDataDetailStandings.fromJson(json["standings"]),
  );

  Map<String, dynamic> toJson() => {
    "boxscore": boxscore.toJson(),
    "gameInfo": gameInfo.toJson(),
    "headToHeadGames": List<dynamic>.from(headToHeadGames.map((x) => x.toJson())),
    "broadcasts": List<dynamic>.from(broadcasts.map((x) => x)),
    "odds": List<dynamic>.from(odds.map((x) => x.toJson())),
    "hasOdds": hasOdds,
    "rosters": List<dynamic>.from(rosters.map((x) => x.toJson())),
    "news": news.toJson(),
    "header": header.toJson(),
    "videos": List<dynamic>.from(videos.map((x) => x)),
    "keyEvents": List<dynamic>.from(keyEvents.map((x) => x.toJson())),
    "standings": standings.toJson(),
  };
}

class Boxscore {
  Boxscore({
    this.form,
    this.teams,
  });

  List<HeadToHeadGame> form;
  List<TeamElement> teams;

  factory Boxscore.fromJson(Map<String, dynamic> json) => Boxscore(
    form: List<HeadToHeadGame>.from(json["form"].map((x) => HeadToHeadGame.fromJson(x))),
    teams: List<TeamElement>.from(json["teams"].map((x) => TeamElement.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "form": List<dynamic>.from(form.map((x) => x.toJson())),
    "teams": List<dynamic>.from(teams.map((x) => x.toJson())),
  };
}

class HeadToHeadGame {
  HeadToHeadGame({
    this.team,
    this.events,
  });

  OpponentClass team;
  List<Evento> events;

  factory HeadToHeadGame.fromJson(Map<String, dynamic> json) => HeadToHeadGame(
    team: OpponentClass.fromJson(json["team"]),
    events: List<Evento>.from(json["events"].map((x) => Evento.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "team": team.toJson(),
    "events": List<dynamic>.from(events.map((x) => x.toJson())),
  };
}

class Evento {
  Evento({
    this.id,
    this.links,
    this.atVs,
    this.gameDate,
    this.score,
    this.homeTeamId,
    this.awayTeamId,
    this.homeTeamScore,
    this.awayTeamScore,
    this.homeAggregateScore,
    this.awayAggregateScore,
    this.homeShootoutScore,
    this.awayShootoutScore,
    this.gameResult,
    this.leagueName,
    this.leagueAbbreviation,
    this.opponent,
    this.opponentLogo,
  });

  String id;
  List<FullViewLinkElement> links;
  AtVs atVs;
  String gameDate;
  String score;
  String homeTeamId;
  String awayTeamId;
  String homeTeamScore;
  String awayTeamScore;
  String homeAggregateScore;
  String awayAggregateScore;
  String homeShootoutScore;
  String awayShootoutScore;
  GameResult gameResult;
  LeagueNameEnum leagueName;
  LeagueAbbreviationEnum leagueAbbreviation;
  OpponentClass opponent;
  String opponentLogo;

  factory Evento.fromJson(Map<String, dynamic> json) => Evento(
    id: json["id"],
    links: List<FullViewLinkElement>.from(json["links"].map((x) => FullViewLinkElement.fromJson(x))),
    atVs: atVsValues.map[json["atVs"]],
    gameDate: json["gameDate"],
    score: json["score"],
    homeTeamId: json["homeTeamId"],
    awayTeamId: json["awayTeamId"],
    homeTeamScore: json["homeTeamScore"],
    awayTeamScore: json["awayTeamScore"],
    homeAggregateScore: json["homeAggregateScore"],
    awayAggregateScore: json["awayAggregateScore"],
    homeShootoutScore: json["homeShootoutScore"],
    awayShootoutScore: json["awayShootoutScore"],
    gameResult: gameResultValues.map[json["gameResult"]],
    leagueName: leagueNameEnumValues.map[json["leagueName"]],
    leagueAbbreviation: leagueAbbreviationEnumValues.map[json["leagueAbbreviation"]],
    opponent: OpponentClass.fromJson(json["opponent"]),
    opponentLogo: json["opponentLogo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "atVs": atVsValues.reverse[atVs],
    "gameDate": gameDate,
    "score": score,
    "homeTeamId": homeTeamId,
    "awayTeamId": awayTeamId,
    "homeTeamScore": homeTeamScore,
    "awayTeamScore": awayTeamScore,
    "homeAggregateScore": homeAggregateScore,
    "awayAggregateScore": awayAggregateScore,
    "homeShootoutScore": homeShootoutScore,
    "awayShootoutScore": awayShootoutScore,
    "gameResult": gameResultValues.reverse[gameResult],
    "leagueName": leagueNameEnumValues.reverse[leagueName],
    "leagueAbbreviation": leagueAbbreviationEnumValues.reverse[leagueAbbreviation],
    "opponent": opponent.toJson(),
    "opponentLogo": opponentLogo,
  };
}

enum AtVs { EMPTY, VS }

final atVsValues = EnumValues({
  "@": AtVs.EMPTY,
  "vs": AtVs.VS
});

enum GameResult { D, W, L }

final gameResultValues = EnumValues({
  "D": GameResult.D,
  "L": GameResult.L,
  "W": GameResult.W
});

enum LeagueAbbreviationEnum { SEG }

final leagueAbbreviationEnumValues = EnumValues({
  "Seg": LeagueAbbreviationEnum.SEG
});

enum LeagueNameEnum { SPANISH_SEGUNDA_DIVISIN }

final leagueNameEnumValues = EnumValues({
  "Spanish Segunda División": LeagueNameEnum.SPANISH_SEGUNDA_DIVISIN
});

class FullViewLinkElement {
  FullViewLinkElement({
    this.href,
    this.text,
  });

  String href;
  FullViewLinkText text;

  factory FullViewLinkElement.fromJson(Map<String, dynamic> json) => FullViewLinkElement(
    href: json["href"],
    text: fullViewLinkTextValues.map[json["text"]],
  );

  Map<String, dynamic> toJson() => {
    "href": href,
    "text": fullViewLinkTextValues.reverse[text],
  };
}

enum FullViewLinkText { SUMMARY, CLUBHOUSE, FIXTURES, TABLE }

final fullViewLinkTextValues = EnumValues({
  "Clubhouse": FullViewLinkText.CLUBHOUSE,
  "Fixtures": FullViewLinkText.FIXTURES,
  "Summary": FullViewLinkText.SUMMARY,
  "Table": FullViewLinkText.TABLE
});

class OpponentClass {
  OpponentClass({
    this.id,
    this.uid,
    this.displayName,
    this.abbreviation,
    this.links,
    this.logo,
  });

  String id;
  String uid;
  String displayName;
  String abbreviation;
  List<FullViewLinkElement> links;
  String logo;

  factory OpponentClass.fromJson(Map<String, dynamic> json) => OpponentClass(
    id: json["id"],
    uid: json["uid"],
    displayName: json["displayName"],
    abbreviation: json["abbreviation"],
    links: List<FullViewLinkElement>.from(json["links"].map((x) => FullViewLinkElement.fromJson(x))),
    logo: json["logo"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "displayName": displayName,
    "abbreviation": abbreviation,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "logo": logo,
  };
}

class TeamElement {
  TeamElement({
    this.team,
  });

  CompetitorTeam team;

  factory TeamElement.fromJson(Map<String, dynamic> json) => TeamElement(
    team: CompetitorTeam.fromJson(json["team"]),
  );

  Map<String, dynamic> toJson() => {
    "team": team.toJson(),
  };
}

class CompetitorTeam {
  CompetitorTeam({
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
    this.logo,
    this.logos,
    this.links,
    this.form,
  });

  String id;
  String uid;
  String slug;
  DisplayName location;
  DisplayName name;
  String abbreviation;
  DisplayName displayName;
  DisplayName shortDisplayName;
  String color;
  String alternateColor;
  String logo;
  List<Logo> logos;
  List<LeagueLink> links;
  String form;

  factory CompetitorTeam.fromJson(Map<String, dynamic> json) => CompetitorTeam(
    id: json["id"],
    uid: json["uid"],
    slug: json["slug"] == null ? null : json["slug"],
    location: displayNameValues.map[json["location"]],
    name: displayNameValues.map[json["name"]],
    abbreviation: json["abbreviation"],
    displayName: displayNameValues.map[json["displayName"]],
    shortDisplayName: displayNameValues.map[json["shortDisplayName"]],
    color: json["color"],
    alternateColor: json["alternateColor"],
    logo: json["logo"] == null ? null : json["logo"],
    logos: json["logos"] == null ? null : List<Logo>.from(json["logos"].map((x) => Logo.fromJson(x))),
    links: json["links"] == null ? null : List<LeagueLink>.from(json["links"].map((x) => LeagueLink.fromJson(x))),
    form: json["form"] == null ? null : json["form"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "slug": slug == null ? null : slug,
    "location": displayNameValues.reverse[location],
    "name": displayNameValues.reverse[name],
    "abbreviation": abbreviation,
    "displayName": displayNameValues.reverse[displayName],
    "shortDisplayName": displayNameValues.reverse[shortDisplayName],
    "color": color,
    "alternateColor": alternateColor,
    "logo": logo == null ? null : logo,
    "logos": logos == null ? null : List<dynamic>.from(logos.map((x) => x.toJson())),
    "links": links == null ? null : List<dynamic>.from(links.map((x) => x.toJson())),
    "form": form == null ? null : form,
  };
}

enum DisplayName { GRANADA, TENERIFE }

final displayNameValues = EnumValues({
  "Granada": DisplayName.GRANADA,
  "Tenerife": DisplayName.TENERIFE
});

class LeagueLink {
  LeagueLink({
    this.rel,
    this.href,
    this.text,
  });

  List<String> rel;
  String href;
  String text;

  factory LeagueLink.fromJson(Map<String, dynamic> json) => LeagueLink(
    rel: List<String>.from(json["rel"].map((x) => x)),
    href: json["href"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "rel": List<dynamic>.from(rel.map((x) => x)),
    "href": href,
    "text": text,
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
  List<BoxscoreSource> rel;

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
    href: json["href"],
    width: json["width"],
    height: json["height"],
    alt: json["alt"],
    rel: List<BoxscoreSource>.from(json["rel"].map((x) => boxscoreSourceValues.map[x])),
  );

  Map<String, dynamic> toJson() => {
    "href": href,
    "width": width,
    "height": height,
    "alt": alt,
    "rel": List<dynamic>.from(rel.map((x) => boxscoreSourceValues.reverse[x])),
  };
}

enum BoxscoreSource { FULL, DEFAULT, DARK }

final boxscoreSourceValues = EnumValues({
  "dark": BoxscoreSource.DARK,
  "default": BoxscoreSource.DEFAULT,
  "full": BoxscoreSource.FULL
});

class GameInfo {
  GameInfo({
    // this.venue,
    this.attendance,
  });

  Venue venue;
  int attendance;

  factory GameInfo.fromJson(Map<String, dynamic> json) => GameInfo(
    // venue: Venue.fromJson(json["venue"]),
    attendance: json["attendance"],
  );

  Map<String, dynamic> toJson() => {
    "venue": venue.toJson(),
    "attendance": attendance,
  };
}

class Venue {
  Venue({
    // this.id,
    this.fullName,
    this.shortName,
    this.address,
    this.capacity,
    this.images,
  });

  // String id;
  String fullName;
  String shortName;
  Address address;
  int capacity;
  List<dynamic> images;

  factory Venue.fromJson(Map<String, dynamic> json) => Venue(
    // id: json["id"] == null ? null : json["id"],
    // fullName: json["fullName"],
    // shortName: json["shortName"],
    // address: Address.fromJson(json["address"]),
    // capacity: json["capacity"],
    // images: List<dynamic>.from(json["images"].map((x) => x)),
  );

  Map<String, dynamic> toJson() => {
    // "id": id,
    "fullName": fullName,
    "shortName": shortName,
    "address": address.toJson(),
    "capacity": capacity,
    "images": List<dynamic>.from(images.map((x) => x)),
  };
}

class Address {
  Address();

  factory Address.fromJson(Map<String, dynamic> json) => Address(
  );

  Map<String, dynamic> toJson() => {
  };
}

class Header {
  Header({
    this.id,
    this.uid,
    this.season,
    this.timeValid,
    this.competitions,
    this.links,
    this.league,
  });

  String id;
  String uid;
  Season season;
  bool timeValid;
  List<Competition> competitions;
  List<HeaderLink> links;
  HeaderLeague league;

  factory Header.fromJson(Map<String, dynamic> json) => Header(
    id: json["id"],
    uid: json["uid"],
    season: Season.fromJson(json["season"]),
    timeValid: json["timeValid"],
    competitions: List<Competition>.from(json["competitions"].map((x) => Competition.fromJson(x))),
    links: List<HeaderLink>.from(json["links"].map((x) => HeaderLink.fromJson(x))),
    league: HeaderLeague.fromJson(json["league"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "season": season.toJson(),
    "timeValid": timeValid,
    "competitions": List<dynamic>.from(competitions.map((x) => x.toJson())),
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
    "league": league.toJson(),
  };
}

class Competition {
  Competition({
    this.id,
    this.uid,
    this.date,
    this.neutralSite,
    this.conferenceCompetition,
    this.boxscoreAvailable,
    this.commentaryAvailable,
    this.liveAvailable,
    this.onWatchEspn,
    this.recent,
    this.boxscoreSource,
    this.playByPlaySource,
    this.competitors,
    this.notes,
    this.status,
    this.broadcasts,
    this.details,
  });

  String id;
  String uid;
  String date;
  bool neutralSite;
  bool conferenceCompetition;
  bool boxscoreAvailable;
  bool commentaryAvailable;
  bool liveAvailable;
  bool onWatchEspn;
  bool recent;
  BoxscoreSource boxscoreSource;
  BoxscoreSource playByPlaySource;
  List<Participante> competitors;
  List<dynamic> notes;
  Status status;
  List<dynamic> broadcasts;
  List<Detail> details;

  factory Competition.fromJson(Map<String, dynamic> json) => Competition(
    id: json["id"],
    uid: json["uid"],
    date: json["date"],
    neutralSite: json["neutralSite"],
    conferenceCompetition: json["conferenceCompetition"],
    boxscoreAvailable: json["boxscoreAvailable"],
    commentaryAvailable: json["commentaryAvailable"],
    liveAvailable: json["liveAvailable"],
    onWatchEspn: json["onWatchESPN"],
    recent: json["recent"],
    boxscoreSource: boxscoreSourceValues.map[json["boxscoreSource"]],
    playByPlaySource: boxscoreSourceValues.map[json["playByPlaySource"]],
    competitors: List<Participante>.from(json["competitors"].map((x) => Participante.fromJson(x))),
    notes: List<dynamic>.from(json["notes"].map((x) => x)),
    status: Status.fromJson(json["status"]),
    broadcasts: List<dynamic>.from(json["broadcasts"].map((x) => x)),
    details: json["details"] == null ? null : List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "date": date,
    "neutralSite": neutralSite,
    "conferenceCompetition": conferenceCompetition,
    "boxscoreAvailable": boxscoreAvailable,
    "commentaryAvailable": commentaryAvailable,
    "liveAvailable": liveAvailable,
    "onWatchESPN": onWatchEspn,
    "recent": recent,
    "boxscoreSource": boxscoreSourceValues.reverse[boxscoreSource],
    "playByPlaySource": boxscoreSourceValues.reverse[playByPlaySource],
    "competitors": List<dynamic>.from(competitors.map((x) => x.toJson())),
    "notes": List<dynamic>.from(notes.map((x) => x)),
    "status": status.toJson(),
    "broadcasts": List<dynamic>.from(broadcasts.map((x) => x)),
    "details": List<dynamic>.from(details.map((x) => x.toJson())),
  };
}

class Participante {
  Participante({
    this.id,
    this.uid,
    this.order,
    this.homeAway,
    this.winner,
    this.team,
    this.score,
    this.linescores,
    this.record,
    this.possession,
  });

  String id;
  String uid;
  int order;
  HomeAway homeAway;
  bool winner;
  CompetitorTeam team;
  String score;
  List<Linescore> linescores;
  List<Record> record;
  bool possession;

  factory Participante.fromJson(Map<String, dynamic> json) => Participante(
    id: json["id"],
    uid: json["uid"],
    order: json["order"],
    homeAway: homeAwayValues.map[json["homeAway"]],
    winner: json["winner"],
    team: CompetitorTeam.fromJson(json["team"]),
    score: json["score"] == null ? null : json["score"],
    linescores: json["linescores"] == null ? null : List<Linescore>.from(json["linescores"].map((x) => Linescore.fromJson(x))),
    record: List<Record>.from(json["record"].map((x) => Record.fromJson(x))),
    possession: json["possession"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "order": order,
    "homeAway": homeAwayValues.reverse[homeAway],
    "winner": winner,
    "team": team.toJson(),
    "score": score,
    "linescores": List<dynamic>.from(linescores.map((x) => x.toJson())),
    "record": List<dynamic>.from(record.map((x) => x.toJson())),
    "possession": possession,
  };
}

enum HomeAway { SUMMARY, DESKTOP, EVENT, STATS, LINEUPS, INDEX, LEAGUE, HOME, BETS, BET_365, AWAY, DRAW, PLAYERCARD, ATHLETE, SPLITS, GAMELOG, NEWS, BIO, OVERVIEW, TRANSFERS, MOBILE }

final homeAwayValues = EnumValues({
  "athlete": HomeAway.ATHLETE,
  "away": HomeAway.AWAY,
  "bets": HomeAway.BETS,
  "bet-365": HomeAway.BET_365,
  "bio": HomeAway.BIO,
  "desktop": HomeAway.DESKTOP,
  "draw": HomeAway.DRAW,
  "event": HomeAway.EVENT,
  "gamelog": HomeAway.GAMELOG,
  "home": HomeAway.HOME,
  "index": HomeAway.INDEX,
  "league": HomeAway.LEAGUE,
  "lineups": HomeAway.LINEUPS,
  "mobile": HomeAway.MOBILE,
  "news": HomeAway.NEWS,
  "overview": HomeAway.OVERVIEW,
  "playercard": HomeAway.PLAYERCARD,
  "splits": HomeAway.SPLITS,
  "stats": HomeAway.STATS,
  "summary": HomeAway.SUMMARY,
  "transfers": HomeAway.TRANSFERS
});

class Linescore {
  Linescore({
    this.displayValue,
  });

  String displayValue;

  factory Linescore.fromJson(Map<String, dynamic> json) => Linescore(
    displayValue: json["displayValue"],
  );

  Map<String, dynamic> toJson() => {
    "displayValue": displayValue,
  };
}

class Record {
  Record({
    this.type,
    this.summary,
    this.displayValue,
  });

  RecordType type;
  String summary;
  String displayValue;

  factory Record.fromJson(Map<String, dynamic> json) => Record(
    type: recordTypeValues.map[json["type"]],
    summary: json["summary"],
    displayValue: json["displayValue"],
  );

  Map<String, dynamic> toJson() => {
    "type": recordTypeValues.reverse[type],
    "summary": summary,
    "displayValue": displayValue,
  };
}

enum RecordType { GAMESPLAYED, POINTS, RANK, POINTDIFFERENTIAL, TOTAL }

final recordTypeValues = EnumValues({
  "gamesplayed": RecordType.GAMESPLAYED,
  "pointdifferential": RecordType.POINTDIFFERENTIAL,
  "points": RecordType.POINTS,
  "rank": RecordType.RANK,
  "total": RecordType.TOTAL
});

class Detail {
  Detail({
    this.clock,
    this.scoringPlay,
    this.team,
    this.participants,
    this.addedClock,
    this.redCard,
    this.penaltyKick,
    this.ownGoal,
  });

  Clock clock;
  bool scoringPlay;
  DetailTeam team;
  List<DetailParticipant> participants;
  Clock addedClock;
  bool redCard;
  bool penaltyKick;
  bool ownGoal;

  factory Detail.fromJson(Map<String, dynamic> json) => Detail(
    clock: Clock.fromJson(json["clock"]),
    scoringPlay: json["scoringPlay"],
    team: DetailTeam.fromJson(json["team"]),
    participants: List<DetailParticipant>.from(json["participants"].map((x) => DetailParticipant.fromJson(x))),
    addedClock: Clock.fromJson(json["addedClock"]),
    redCard: json["redCard"],
    penaltyKick: json["penaltyKick"],
    ownGoal: json["ownGoal"],
  );

  Map<String, dynamic> toJson() => {
    "clock": clock.toJson(),
    "scoringPlay": scoringPlay,
    "team": team.toJson(),
    "participants": List<dynamic>.from(participants.map((x) => x.toJson())),
    "addedClock": addedClock.toJson(),
    "redCard": redCard,
    "penaltyKick": penaltyKick,
    "ownGoal": ownGoal,
  };
}

class Clock {
  Clock({
    this.value,
    this.displayValue,
  });

  int value;
  String displayValue;

  factory Clock.fromJson(Map<String, dynamic> json) => Clock(
    value: json["value"].toInt(),
    displayValue: json["displayValue"],
  );

  Map<String, dynamic> toJson() => {
    "value": value,
    "displayValue": displayValue,
  };
}

class DetailParticipant {
  DetailParticipant({
    this.athlete,
  });

  PurpleAthlete athlete;

  factory DetailParticipant.fromJson(Map<String, dynamic> json) => DetailParticipant(
    athlete: PurpleAthlete.fromJson(json["athlete"]),
  );

  Map<String, dynamic> toJson() => {
    "athlete": athlete.toJson(),
  };
}

class PurpleAthlete {
  PurpleAthlete({
    this.id,
    this.displayName,
    this.links,
  });

  String id;
  String displayName;
  List<LeagueLink> links;

  factory PurpleAthlete.fromJson(Map<String, dynamic> json) => PurpleAthlete(
    id: json["id"],
    displayName: json["displayName"],
    links: List<LeagueLink>.from(json["links"].map((x) => LeagueLink.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "displayName": displayName,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
  };
}

class DetailTeam {
  DetailTeam({
    this.id,
    this.uid,
    this.location,
    this.name,
    this.abbreviation,
    this.displayName,
  });

  String id;
  String uid;
  DisplayName location;
  DisplayName name;
  String abbreviation;
  DisplayName displayName;

  factory DetailTeam.fromJson(Map<String, dynamic> json) => DetailTeam(
    id: json["id"],
    uid: json["uid"],
    location: displayNameValues.map[json["location"]],
    name: displayNameValues.map[json["name"]],
    abbreviation: json["abbreviation"],
    displayName: displayNameValues.map[json["displayName"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "location": displayNameValues.reverse[location],
    "name": displayNameValues.reverse[name],
    "abbreviation": abbreviation,
    "displayName": displayNameValues.reverse[displayName],
  };
}

class Status {
  Status({
    this.type,
  });

  StatusType type;

  factory Status.fromJson(Map<String, dynamic> json) => Status(
    type: StatusType.fromJson(json["type"]),
  );

  Map<String, dynamic> toJson() => {
    "type": type.toJson(),
  };
}

class StatusType {
  StatusType({
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

  factory StatusType.fromJson(Map<String, dynamic> json) => StatusType(
    id: json["id"],
    name: json["name"],
    state: json["state"],
    completed: json["completed"],
    description: json["description"],
    detail: json["detail"],
    shortDetail: json["shortDetail"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "name": name,
    "state": state,
    "completed": completed,
    "description": description,
    "detail": detail,
    "shortDetail": shortDetail,
  };
}

class HeaderLeague {
  HeaderLeague({
    this.id,
    this.uid,
    this.name,
    this.abbreviation,
    this.midsizeName,
    this.slug,
    this.isTournament,
    this.links,
  });

  String id;
  String uid;
  LeagueNameEnum name;
  LeagueAbbreviationEnum abbreviation;
  String midsizeName;
  String slug;
  bool isTournament;
  List<LeagueLink> links;

  factory HeaderLeague.fromJson(Map<String, dynamic> json) => HeaderLeague(
    id: json["id"],
    uid: json["uid"],
    name: leagueNameEnumValues.map[json["name"]],
    abbreviation: leagueAbbreviationEnumValues.map[json["abbreviation"]],
    midsizeName: json["midsizeName"],
    slug: json["slug"],
    isTournament: json["isTournament"],
    links: List<LeagueLink>.from(json["links"].map((x) => LeagueLink.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "name": leagueNameEnumValues.reverse[name],
    "abbreviation": leagueAbbreviationEnumValues.reverse[abbreviation],
    "midsizeName": midsizeName,
    "slug": slug,
    "isTournament": isTournament,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
  };
}

class HeaderLink {
  HeaderLink({
    this.rel,
    this.href,
    this.text,
    this.shortText,
    this.isExternal,
    this.isPremium,
    this.language,
  });

  List<HomeAway> rel;
  String href;
  ShortTextEnum text;
  ShortTextEnum shortText;
  bool isExternal;
  bool isPremium;
  Language language;

  factory HeaderLink.fromJson(Map<String, dynamic> json) => HeaderLink(
    rel: List<HomeAway>.from(json["rel"].map((x) => homeAwayValues.map[x])),
    href: json["href"],
    text: shortTextEnumValues.map[json["text"]],
    shortText: shortTextEnumValues.map[json["shortText"]],
    isExternal: json["isExternal"],
    isPremium: json["isPremium"],
    language: json["language"] == null ? null : languageValues.map[json["language"]],
  );

  Map<String, dynamic> toJson() => {
    "rel": List<dynamic>.from(rel.map((x) => homeAwayValues.reverse[x])),
    "href": href,
    "text": shortTextEnumValues.reverse[text],
    "shortText": shortTextEnumValues.reverse[shortText],
    "isExternal": isExternal,
    "isPremium": isPremium,
    "language": language == null ? null : languageValues.reverse[language],
  };
}

enum Language { EN, EN_US }

final languageValues = EnumValues({
  "en": Language.EN,
  "en-US": Language.EN_US
});

enum ShortTextEnum { SUMMARY, STATISTICS, LINE_UPS, ALL_NEWS, HOME_BET, AWAY_BET, DRAW_BET, PLAYER_CARD, STATS, SPLITS, MATCHES, NEWS, BIO, OVERVIEW, TRANSFERS, ALL_SEGUNDA_DIVISIN_NEWS }

final shortTextEnumValues = EnumValues({
  "All News": ShortTextEnum.ALL_NEWS,
  "All Segunda División News": ShortTextEnum.ALL_SEGUNDA_DIVISIN_NEWS,
  "Away Bet": ShortTextEnum.AWAY_BET,
  "Bio": ShortTextEnum.BIO,
  "Draw Bet": ShortTextEnum.DRAW_BET,
  "Home Bet": ShortTextEnum.HOME_BET,
  "Line-Ups": ShortTextEnum.LINE_UPS,
  "Matches": ShortTextEnum.MATCHES,
  "News": ShortTextEnum.NEWS,
  "Overview": ShortTextEnum.OVERVIEW,
  "Player Card": ShortTextEnum.PLAYER_CARD,
  "Splits": ShortTextEnum.SPLITS,
  "Statistics": ShortTextEnum.STATISTICS,
  "Stats": ShortTextEnum.STATS,
  "Summary": ShortTextEnum.SUMMARY,
  "Transfers": ShortTextEnum.TRANSFERS
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

  factory Season.fromJson(Map<String, dynamic> json) => Season(
    year: json["year"],
    type: json["type"],
    name: json["name"],
  );

  Map<String, dynamic> toJson() => {
    "year": year,
    "type": type,
    "name": name,
  };
}

class KeyEvent {
  KeyEvent({
    this.id,
    this.type,
    this.text,
    this.shortText,
    this.period,
    this.clock,
    this.scoringPlay,
    this.team,
    this.participants,
    this.source,
    this.shootout,
  });

  String id;
  KeyEventType type;
  String text;
  String shortText;
  Period period;
  Clock clock;
  bool scoringPlay;
  KeyEventTeam team;
  List<KeyEventParticipant> participants;
  Source source;
  bool shootout;

  factory KeyEvent.fromJson(Map<String, dynamic> json) => KeyEvent(
    id: json["id"],
    type: KeyEventType.fromJson(json["type"]),
    text: json["text"],
    shortText: json["shortText"],
    period: Period.fromJson(json["period"]),
    clock: Clock.fromJson(json["clock"]),
    scoringPlay: json["scoringPlay"],
    team: KeyEventTeam.fromJson(json["team"]),
    participants: List<KeyEventParticipant>.from(json["participants"].map((x) => KeyEventParticipant.fromJson(x))),
    source: Source.fromJson(json["source"]),
    shootout: json["shootout"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "type": type.toJson(),
    "text": text,
    "shortText": shortText,
    "period": period.toJson(),
    "clock": clock.toJson(),
    "scoringPlay": scoringPlay,
    "team": team.toJson(),
    "participants": List<dynamic>.from(participants.map((x) => x.toJson())),
    "source": source.toJson(),
    "shootout": shootout,
  };
}

class KeyEventParticipant {
  KeyEventParticipant({
    this.athlete,
  });

  FluffyAthlete athlete;

  factory KeyEventParticipant.fromJson(Map<String, dynamic> json) => KeyEventParticipant(
    athlete: FluffyAthlete.fromJson(json["athlete"]),
  );

  Map<String, dynamic> toJson() => {
    "athlete": athlete.toJson(),
  };
}

class FluffyAthlete {
  FluffyAthlete({
    this.displayName,
  });

  String displayName;

  factory FluffyAthlete.fromJson(Map<String, dynamic> json) => FluffyAthlete(
    displayName: json["displayName"],
  );

  Map<String, dynamic> toJson() => {
    "displayName": displayName,
  };
}

class Period {
  Period({
    this.number,
  });

  int number;

  factory Period.fromJson(Map<String, dynamic> json) => Period(
    number: json["number"],
  );

  Map<String, dynamic> toJson() => {
    "number": number,
  };
}

class Source {
  Source({
    this.id,
    this.description,
  });

  String id;
  SourceDescription description;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    id: json["id"],
    description: sourceDescriptionValues.map[json["description"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "description": sourceDescriptionValues.reverse[description],
  };
}

enum SourceDescription { SA_ENVOY }

final sourceDescriptionValues = EnumValues({
  "SA.ENVOY": SourceDescription.SA_ENVOY
});

class KeyEventTeam {
  KeyEventTeam({
    this.id,
    this.displayName,
  });

  String id;
  DisplayName displayName;

  factory KeyEventTeam.fromJson(Map<String, dynamic> json) => KeyEventTeam(
    id: json["id"],
    displayName: displayNameValues.map[json["displayName"]],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "displayName": displayNameValues.reverse[displayName],
  };
}

class KeyEventType {
  KeyEventType({
    this.id,
    this.text,
  });

  String id;
  String text;

  factory KeyEventType.fromJson(Map<String, dynamic> json) => KeyEventType(
    id: json["id"],
    text: json["text"],
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "text": typeTextValues.reverse[text],
  };
}

enum TypeText { GOAL, YELLOW_CARD, SUBSTITUTION }

final typeTextValues = EnumValues({
  "Goal": TypeText.GOAL,
  "Substitution": TypeText.SUBSTITUTION,
  "Yellow Card": TypeText.YELLOW_CARD
});

class News {
  News({
    this.header,
    this.link,
    this.articles,
  });

  String header;
  HeaderLink link;
  List<Article> articles;

  factory News.fromJson(Map<String, dynamic> json) => News(
    header: json["header"],
    link: HeaderLink.fromJson(json["link"]),
    articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "header": header,
    "link": link.toJson(),
    "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
  };
}

class Article {
  Article({
    this.images,
    this.description,
    // this.links,
    this.categories,
    this.headline,
  });

  List<Imagen> images;
  String description;
  // ArticleLinks links;
  List<Category> categories;
  String headline;

  factory Article.fromJson(Map<String, dynamic> json) => Article(
    images: List<Imagen>.from(json["images"].map((x) => Imagen.fromJson(x))),
    description: json["description"],
    // links: ArticleLinks.fromJson(json["links"]),
    categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
    headline: json["headline"],
  );

  Map<String, dynamic> toJson() => {
    "images": List<dynamic>.from(images.map((x) => x.toJson())),
    "description": description,
    // "links": links.toJson(),
    "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
    "headline": headline,
  };
}

class Category {
  Category({
    this.id,
    this.description,
    this.type,
    this.sportId,
    this.teamId,
    // this.team,
    this.uid,
    this.createDate,
    this.leagueId,
    this.league,
    this.guid,
    this.athleteId,
    this.athlete,
    this.topicId,
  });

  int id;
  String description;
  CategoryType type;
  int sportId;
  int teamId;
  // CategoryTeam team;
  String uid;
  DateTime createDate;
  int leagueId;
  CategoryLeague league;
  String guid;
  int athleteId;
  CategoryAthlete athlete;
  int topicId;

  factory Category.fromJson(Map<String, dynamic> json) => Category(
    id: json["id"] == null ? null : json["id"],
    description: json["description"] == null ? null : json["description"],
    type: categoryTypeValues.map[json["type"]],
    sportId: json["sportId"] == null ? null : json["sportId"],
    teamId: json["teamId"] == null ? null : json["teamId"],
    // team: json["team"] == null ? null : CategoryTeam.fromJson(json["team"]),
    uid: json["uid"] == null ? null : json["uid"],
    createDate: json["createDate"] == null ? null : DateTime.parse(json["createDate"]),
    leagueId: json["leagueId"] == null ? null : json["leagueId"],
    league: json["league"] == null ? null : CategoryLeague.fromJson(json["league"]),
    guid: json["guid"] == null ? null : json["guid"],
    athleteId: json["athleteId"] == null ? null : json["athleteId"],
    athlete: json["athlete"] == null ? null : CategoryAthlete.fromJson(json["athlete"]),
    topicId: json["topicId"] == null ? null : json["topicId"],
  );

  Map<String, dynamic> toJson() => {
    "id": id == null ? null : id,
    "description": description == null ? null : description,
    "type": categoryTypeValues.reverse[type],
    "sportId": sportId == null ? null : sportId,
    "teamId": teamId == null ? null : teamId,
    // "team": team == null ? null : team.toJson(),
    "uid": uid == null ? null : uid,
    "createDate": createDate == null ? null : createDate.toIso8601String(),
    "leagueId": leagueId == null ? null : leagueId,
    "league": league == null ? null : league.toJson(),
    "guid": guid == null ? null : guid,
    "athleteId": athleteId == null ? null : athleteId,
    "athlete": athlete == null ? null : athlete.toJson(),
    "topicId": topicId == null ? null : topicId,
  };
}

class CategoryAthlete {
  CategoryAthlete({
    this.id,
    this.description,
    // this.links,
  });

  int id;
  String description;
  // AthleteLinks links;

  factory CategoryAthlete.fromJson(Map<String, dynamic> json) => CategoryAthlete(
    id: json["id"],
    description: json["description"],
    // links: AthleteLinks.fromJson(json["links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "description": description,
    // "links": links.toJson(),
  };
}

// class AthleteLinks {
//   AthleteLinks({
//     this.api,
//     this.web,
//     this.mobile,
//   });
//
//   PurpleApi api;
//   PurpleApi web;
//   PurpleApi mobile;
//
//   factory AthleteLinks.fromJson(Map<String, dynamic> json) => AthleteLinks(
//     api: PurpleApi.fromJson(json["api"]),
//     web: PurpleApi.fromJson(json["web"]),
//     mobile: PurpleApi.fromJson(json["mobile"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "api": api.toJson(),
//     "web": web.toJson(),
//     "mobile": mobile.toJson(),
//   };
// }

// class PurpleApi {
//   PurpleApi({
//     this.athletes,
//   });
//
//   // Mobile athletes;
//
//   factory PurpleApi.fromJson(Map<String, dynamic> json) => PurpleApi(
//     athletes: Mobile.fromJson(json["athletes"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "athletes": athletes.toJson(),
//   };
// }

// class Mobile {
//   Mobile({
//     this.href,
//   });
//
//   String href;
//
//   factory Mobile.fromJson(Map<String, dynamic> json) => Mobile(
//     href: json["href"] == null ? null : json["href"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "href": href,
//   };
// }

class CategoryLeague {
  CategoryLeague({
    this.id,
    this.abbreviation,
    this.description,
    // this.links,
  });

  int id;
  String abbreviation;
  String description;
  // LeagueLinks links;

  factory CategoryLeague.fromJson(Map<String, dynamic> json) => CategoryLeague(
    id: json["id"],
    abbreviation: json["abbreviation"],
    description: json["description"],
    // links: LeagueLinks.fromJson(json["links"]),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "abbreviation": abbreviation,
    "description": description,
    // "links": links.toJson(),
  };
}

// class LeagueLinks {
//   LeagueLinks({
//     this.api,
//     this.web,
//     this.mobile,
//   });
//
//   FluffyApi api;
//   FluffyApi web;
//   FluffyApi mobile;
//
//   factory LeagueLinks.fromJson(Map<String, dynamic> json) => LeagueLinks(
//     api: FluffyApi.fromJson(json["api"]),
//     web: FluffyApi.fromJson(json["web"]),
//     mobile: FluffyApi.fromJson(json["mobile"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "api": api.toJson(),
//     "web": web.toJson(),
//     "mobile": mobile.toJson(),
//   };
// }

// class FluffyApi {
//   FluffyApi({
//     this.leagues,
//   });
//
//   Mobile leagues;
//
//   factory FluffyApi.fromJson(Map<String, dynamic> json) => FluffyApi(
//     leagues: Mobile.fromJson(json["leagues"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "leagues": leagues.toJson(),
//   };
// }

// class CategoryTeam {
//   CategoryTeam({
//     this.id,
//     this.description,
//     this.links,
//   });
//
//   int id;
//   String description;
//   TeamLinks links;
//
//   factory CategoryTeam.fromJson(Map<String, dynamic> json) => CategoryTeam(
//     id: json["id"],
//     description: json["description"],
//     links: TeamLinks.fromJson(json["links"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "description": description,
//     "links": links.toJson(),
//   };
// }

// class TeamLinks {
//   TeamLinks({
//     this.api,
//     this.web,
//     this.mobile,
//   });
//
//   TentacledApi api;
//   TentacledApi web;
//   TentacledApi mobile;
//
//   factory TeamLinks.fromJson(Map<String, dynamic> json) => TeamLinks(
//     api: TentacledApi.fromJson(json["api"]),
//     web: TentacledApi.fromJson(json["web"]),
//     mobile: TentacledApi.fromJson(json["mobile"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "api": api.toJson(),
//     "web": web.toJson(),
//     "mobile": mobile.toJson(),
//   };
// }

// class TentacledApi {
//   TentacledApi({
//     this.teams,
//   });
//
//   // Mobile teams;
//
//   factory TentacledApi.fromJson(Map<String, dynamic> json) => TentacledApi(
//     teams: Mobile.fromJson(json["teams"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "teams": teams.toJson(),
//   };
// }

enum CategoryType { TEAM, LEAGUE, GUID, ATHLETE, TOPIC }

final categoryTypeValues = EnumValues({
  "athlete": CategoryType.ATHLETE,
  "guid": CategoryType.GUID,
  "league": CategoryType.LEAGUE,
  "team": CategoryType.TEAM,
  "topic": CategoryType.TOPIC
});

class Imagen {
  Imagen({
    this.name,
    this.width,
    this.caption,
    this.id,
    this.credit,
    this.type,
    this.url,
    this.height,
    this.alt,
  });

  String name;
  int width;
  String caption;
  int id;
  String credit;
  String type;
  String url;
  int height;
  String alt;

  factory Imagen.fromJson(Map<String, dynamic> json) => Imagen(
    name: json["name"],
    width: json["width"],
    caption: json["caption"] == null ? null : json["caption"],
    id: json["id"] == null ? null : json["id"],
    credit: json["credit"] == null ? null : json["credit"],
    type: json["type"],
    url: json["url"],
    height: json["height"],
    alt: json["alt"] == null ? null : json["alt"],
  );

  Map<String, dynamic> toJson() => {
    "name": name,
    "width": width,
    "caption": caption == null ? null : caption,
    "id": id == null ? null : id,
    "credit": credit == null ? null : credit,
    "type": type,
    "url": url,
    "height": height,
    "alt": alt == null ? null : alt,
  };
}

// class ArticleLinks {
//   ArticleLinks({
//     this.api,
//     this.web,
//     this.mobile,
//   });
//
//   StickyApi api;
//   Web web;
//   Mobile mobile;
//
//   factory ArticleLinks.fromJson(Map<String, dynamic> json) => ArticleLinks(
//     api: StickyApi.fromJson(json["api"]),
//     web: Web.fromJson(json["web"]),
//     mobile: Mobile.fromJson(json["mobile"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "api": api.toJson(),
//     "web": web.toJson(),
//     "mobile": mobile.toJson(),
//   };
// }
//
// class StickyApi {
//   StickyApi({
//     this.news,
//     this.self,
//   });
//
//   Mobile news;
//   Mobile self;
//
//   factory StickyApi.fromJson(Map<String, dynamic> json) => StickyApi(
//     news: Mobile.fromJson(json["news"]),
//     self: Mobile.fromJson(json["self"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "news": news.toJson(),
//     "self": self.toJson(),
//   };
// }

class Web {
  Web({
    this.href,
    this.short,
  });

  String href;
  Address short;

  factory Web.fromJson(Map<String, dynamic> json) => Web(
    href: json["href"],
    short: Address.fromJson(json["short"]),
  );

  Map<String, dynamic> toJson() => {
    "href": href,
    "short": short.toJson(),
  };
}

class Odd {
  Odd({
    this.provider,
    this.awayTeamOdds,
    this.homeTeamOdds,
    this.bettingOdds,
    this.links,
  });

  Provider provider;
  TeamOdds awayTeamOdds;
  TeamOdds homeTeamOdds;
  BettingOdds bettingOdds;
  List<HeaderLink> links;

  factory Odd.fromJson(Map<String, dynamic> json) => Odd(
    provider: Provider.fromJson(json["provider"]),
    awayTeamOdds: TeamOdds.fromJson(json["awayTeamOdds"]),
    homeTeamOdds: TeamOdds.fromJson(json["homeTeamOdds"]),
    bettingOdds: BettingOdds.fromJson(json["bettingOdds"]),
    links: List<HeaderLink>.from(json["links"].map((x) => HeaderLink.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "provider": provider.toJson(),
    "awayTeamOdds": awayTeamOdds.toJson(),
    "homeTeamOdds": homeTeamOdds.toJson(),
    "bettingOdds": bettingOdds.toJson(),
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
  };
}

class TeamOdds {
  TeamOdds({
    this.team,
    this.odds,
  });

  AwayTeamClass team;
  Odds odds;

  factory TeamOdds.fromJson(Map<String, dynamic> json) => TeamOdds(
    team: AwayTeamClass.fromJson(json["team"]),
    odds: Odds.fromJson(json["odds"]),
  );

  Map<String, dynamic> toJson() => {
    "team": team.toJson(),
    "odds": odds.toJson(),
  };
}

class Odds {
  Odds({
    this.summary,
    this.value,
    this.handicap,
  });

  String summary;
  double value;
  int handicap;

  factory Odds.fromJson(Map<String, dynamic> json) => Odds(
    summary: json["summary"],
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
    this.ref,
  });

  String ref;

  factory AwayTeamClass.fromJson(Map<String, dynamic> json) => AwayTeamClass(
    ref: json["\u0024ref"],
  );

  Map<String, dynamic> toJson() => {
    "\u0024ref": ref,
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
  Address playerOdds;

  factory BettingOdds.fromJson(Map<String, dynamic> json) => BettingOdds(
    homeTeam: AwayTeamClass.fromJson(json["homeTeam"]),
    awayTeam: AwayTeamClass.fromJson(json["awayTeam"]),
    teamOdds: TeamOddsClass.fromJson(json["teamOdds"]),
    playerOdds: Address.fromJson(json["playerOdds"]),
  );

  Map<String, dynamic> toJson() => {
    "homeTeam": homeTeam.toJson(),
    "awayTeam": awayTeam.toJson(),
    "teamOdds": teamOdds.toJson(),
    "playerOdds": playerOdds.toJson(),
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

class PartidoDataDetailRoster {
  PartidoDataDetailRoster({
    this.homeAway,
    this.winner,
    this.team,
    this.roster,
  });

  HomeAway homeAway;
  bool winner;
  RosterTeam team;
  List<RosterRoster> roster;

  factory PartidoDataDetailRoster.fromJson(Map<String, dynamic> json) => PartidoDataDetailRoster(
    homeAway: homeAwayValues.map[json["homeAway"]],
    winner: json["winner"],
    team: RosterTeam.fromJson(json["team"]),
    roster: json["roster"] == null ? null : List<RosterRoster>.from(json["roster"].map((x) => RosterRoster.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "homeAway": homeAwayValues.reverse[homeAway],
    "winner": winner,
    "team": team.toJson(),
    "roster": List<dynamic>.from(roster.map((x) => x.toJson())),
  };
}

class RosterRoster {
  RosterRoster({
    this.active,
    this.starter,
    this.jersey,
    this.athlete,
    this.position,
    this.subbedIn,
    this.subbedOut,
    this.media,
    this.plays,
    this.subbedOutFor,
    this.subbedInFor,
  });

  bool active;
  bool starter;
  String jersey;
  RosterAthlete athlete;
  Position position;
  bool subbedIn;
  bool subbedOut;
  Address media;
  List<Play> plays;
  SubbedFor subbedOutFor;
  SubbedFor subbedInFor;

  factory RosterRoster.fromJson(Map<String, dynamic> json) => RosterRoster(
    active: json["active"],
    starter: json["starter"],
    jersey: json["jersey"],
    athlete: RosterAthlete.fromJson(json["athlete"]),
    position: Position.fromJson(json["position"]),
    subbedIn: json["subbedIn"],
    subbedOut: json["subbedOut"],
    media: Address.fromJson(json["media"]),
    plays: json["plays"] == null ? null : List<Play>.from(json["plays"].map((x) => Play.fromJson(x))),
    subbedOutFor: json["subbedOutFor"] == null ? null : SubbedFor.fromJson(json["subbedOutFor"]),
    subbedInFor: json["subbedInFor"] == null ? null : SubbedFor.fromJson(json["subbedInFor"]),
  );

  Map<String, dynamic> toJson() => {
    "active": active,
    "starter": starter,
    "jersey": jersey,
    "athlete": athlete.toJson(),
    "position": position.toJson(),
    "subbedIn": subbedIn,
    "subbedOut": subbedOut,
    "media": media.toJson(),
    "plays": plays == null ? null : List<dynamic>.from(plays.map((x) => x.toJson())),
    "subbedOutFor": subbedOutFor == null ? null : subbedOutFor.toJson(),
    "subbedInFor": subbedInFor == null ? null : subbedInFor.toJson(),
  };
}

class RosterAthlete {
  RosterAthlete({
    this.id,
    this.uid,
    this.guid,
    this.lastName,
    this.fullName,
    this.displayName,
    this.links,
  });

  String id;
  String uid;
  String guid;
  String lastName;
  String fullName;
  String displayName;
  List<HeaderLink> links;

  factory RosterAthlete.fromJson(Map<String, dynamic> json) => RosterAthlete(
    id: json["id"],
    uid: json["uid"],
    guid: json["guid"],
    lastName: json["lastName"],
    fullName: json["fullName"],
    displayName: json["displayName"],
    links: List<HeaderLink>.from(json["links"].map((x) => HeaderLink.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "uid": uid,
    "guid": guid,
    "lastName": lastName,
    "fullName": fullName,
    "displayName": displayName,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
  };
}

class Play {
  Play({
    this.clock,
    this.scoringPlay,
    this.substitution,
    this.redCard,
    this.yellowCard,
    this.penaltyKick,
    this.ownGoal,
    this.didScore,
  });

  Linescore clock;
  bool scoringPlay;
  bool substitution;
  bool redCard;
  bool yellowCard;
  bool penaltyKick;
  bool ownGoal;
  bool didScore;

  factory Play.fromJson(Map<String, dynamic> json) => Play(
    clock: Linescore.fromJson(json["clock"]),
    scoringPlay: json["scoringPlay"] == null ? null :json["scoringPlay"],
    substitution: json["substitution"] == null ? null : json["substitution"],
    redCard: json["redCard"] == null ? null :json["redCard"],
    yellowCard: json["yellowCard"] == null ? null :json["yellowCard"],
    penaltyKick: json["penaltyKick"] == null ? null :json["penaltyKick"],
    ownGoal: json["ownGoal"] == null ? null :json["ownGoal"],
    didScore: json["didScore"] == null ? null :json["didScore"] == null ? null : json["didScore"],
  );

  Map<String, dynamic> toJson() => {
    "clock": clock.toJson(),
    "scoringPlay": scoringPlay,
    "substitution": substitution,
    "redCard": redCard,
    "yellowCard": yellowCard,
    "penaltyKick": penaltyKick,
    "ownGoal": ownGoal,
    "didScore": didScore == null ? null : didScore,
  };
}

class Position {
  Position({
    this.name,
    this.displayName,
    this.abbreviation,
  });

  DisplayNameEnum name;
  DisplayNameEnum displayName;
  String abbreviation;

  factory Position.fromJson(Map<String, dynamic> json) => Position(
    name: displayNameEnumValues.map[json["name"]],
    displayName: displayNameEnumValues.map[json["displayName"]],
    abbreviation: json["abbreviation"],
  );

  Map<String, dynamic> toJson() => {
    "name": displayNameEnumValues.reverse[name],
    "displayName": displayNameEnumValues.reverse[displayName],
    "abbreviation": positionAbbreviationValues.reverse[abbreviation],
  };
}

enum PositionAbbreviation { G, D, M, F, SUB }

final positionAbbreviationValues = EnumValues({
  "D": PositionAbbreviation.D,
  "F": PositionAbbreviation.F,
  "G": PositionAbbreviation.G,
  "M": PositionAbbreviation.M,
  "SUB": PositionAbbreviation.SUB
});

enum DisplayNameEnum { GOALKEEPER, DEFENDER, MIDFIELDER, FORWARD, SUBSTITUTE }

final displayNameEnumValues = EnumValues({
  "Defender": DisplayNameEnum.DEFENDER,
  "Forward": DisplayNameEnum.FORWARD,
  "Goalkeeper": DisplayNameEnum.GOALKEEPER,
  "Midfielder": DisplayNameEnum.MIDFIELDER,
  "Substitute": DisplayNameEnum.SUBSTITUTE
});

class SubbedFor {
  SubbedFor({
    this.jersey,
    this.athlete,
  });

  String jersey;
  SubbedInForAthlete athlete;

  factory SubbedFor.fromJson(Map<String, dynamic> json) => SubbedFor(
    jersey: json["jersey"],
    athlete: SubbedInForAthlete.fromJson(json["athlete"]),
  );

  Map<String, dynamic> toJson() => {
    "jersey": jersey,
    "athlete": athlete.toJson(),
  };
}

class SubbedInForAthlete {
  SubbedInForAthlete({
    this.id,
    this.displayName,
    this.links,
  });

  String id;
  String displayName;
  List<HeaderLink> links;

  factory SubbedInForAthlete.fromJson(Map<String, dynamic> json) => SubbedInForAthlete(
    id: json["id"],
    displayName: json["displayName"],
    links: List<HeaderLink>.from(json["links"].map((x) => HeaderLink.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "displayName": displayName,
    "links": List<dynamic>.from(links.map((x) => x.toJson())),
  };
}

class RosterTeam {
  RosterTeam({
    this.id,
    this.abbreviation,
    this.displayName,
    this.color,
    this.alternateColor,
    this.logos,
  });

  String id;
  String abbreviation;
  String displayName;
  String color;
  String alternateColor;
  List<Logo> logos;

  factory RosterTeam.fromJson(Map<String, dynamic> json) => RosterTeam(
    id: json["id"],
    abbreviation: json["abbreviation"],
    displayName: json["displayName"],
    color: json["color"],
    alternateColor: json["alternateColor"],
    logos: json["logos"] == null ? null : List<Logo>.from(json["logos"].map((x) => Logo.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "id": id,
    "abbreviation": abbreviation,
    "displayName": displayName,
    "color": color,
    "alternateColor": alternateColor,
    "logos": List<dynamic>.from(logos.map((x) => x.toJson())),
  };
}

class PartidoDataDetailStandings {
  PartidoDataDetailStandings({
    this.fullViewLink,
    this.groups,
  });

  FullViewLinkElement fullViewLink;
  List<Group> groups;

  factory PartidoDataDetailStandings.fromJson(Map<String, dynamic> json) => PartidoDataDetailStandings(
    fullViewLink: FullViewLinkElement.fromJson(json["fullViewLink"]),
    groups: List<Group>.from(json["groups"].map((x) => Group.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "fullViewLink": fullViewLink.toJson(),
    "groups": List<dynamic>.from(groups.map((x) => x.toJson())),
  };
}

class Group {
  Group({
    this.standings,
    this.header,
    this.href,
  });

  GroupStandings standings;
  String header;
  String href;

  factory Group.fromJson(Map<String, dynamic> json) => Group(
    standings: GroupStandings.fromJson(json["standings"]),
    header: json["header"],
    href: json["href"],
  );

  Map<String, dynamic> toJson() => {
    "standings": standings.toJson(),
    "header": header,
    "href": href,
  };
}

class GroupStandings {
  GroupStandings({
    this.entries,
  });

  List<Entry> entries;

  factory GroupStandings.fromJson(Map<String, dynamic> json) => GroupStandings(
    entries: List<Entry>.from(json["entries"].map((x) => Entry.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "entries": List<dynamic>.from(entries.map((x) => x.toJson())),
  };
}

class Entry {
  Entry({
    this.team,
    this.link,
    this.id,
    this.uid,
    this.stats,
    this.logo,
  });

  String team;
  String link;
  String id;
  String uid;
  List<Stat> stats;
  List<Logo> logo;

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
    team: json["team"],
    link: json["link"],
    id: json["id"],
    uid: json["uid"],
    stats: List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
    logo: json["logo"] == null ? null : List<Logo>.from(json["logo"].map((x) => Logo.fromJson(x))),
  );

  Map<String, dynamic> toJson() => {
    "team": team,
    "link": link,
    "id": id,
    "uid": uid,
    "stats": List<dynamic>.from(stats.map((x) => x.toJson())),
    "logo": logo == null ? null : List<dynamic>.from(logo.map((x) => x.toJson())),
  };
}

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

  StatName name;
  StatDescription displayName;
  ShortDisplayName shortDisplayName;
  StatDescription description;
  StatAbbreviation abbreviation;
  RecordType type;
  int value;
  String displayValue;
  String id;
  Summary summary;

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
    name: statNameValues.map[json["name"]],
    displayName: statDescriptionValues.map[json["displayName"]],
    shortDisplayName: shortDisplayNameValues.map[json["shortDisplayName"]],
    description: statDescriptionValues.map[json["description"]],
    abbreviation: statAbbreviationValues.map[json["abbreviation"]],
    type: recordTypeValues.map[json["type"]],
    value: json["value"] == null ? null : json["value"].toInt(),
    displayValue: json["displayValue"],
    id: json["id"] == null ? null : json["id"],
    summary: json["summary"] == null ? null : summaryValues.map[json["summary"]],
  );

  Map<String, dynamic> toJson() => {
    "name": statNameValues.reverse[name],
    "displayName": statDescriptionValues.reverse[displayName],
    "shortDisplayName": shortDisplayNameValues.reverse[shortDisplayName],
    "description": statDescriptionValues.reverse[description],
    "abbreviation": statAbbreviationValues.reverse[abbreviation],
    "type": recordTypeValues.reverse[type],
    "value": value == null ? null : value,
    "displayValue": displayValue,
    "id": id == null ? null : id,
    "summary": summary == null ? null : summaryValues.reverse[summary],
  };
}

enum StatAbbreviation { GP, P, R, GD, TOTAL }

final statAbbreviationValues = EnumValues({
  "GD": StatAbbreviation.GD,
  "GP": StatAbbreviation.GP,
  "P": StatAbbreviation.P,
  "R": StatAbbreviation.R,
  "Total": StatAbbreviation.TOTAL
});

enum StatDescription { GAMES_PLAYED, POINTS, RANK, GOAL_DIFFERENCE, OVERALL_RECORD, OVERALL }

final statDescriptionValues = EnumValues({
  "Games Played": StatDescription.GAMES_PLAYED,
  "Goal Difference": StatDescription.GOAL_DIFFERENCE,
  "Overall": StatDescription.OVERALL,
  "Overall Record": StatDescription.OVERALL_RECORD,
  "Points": StatDescription.POINTS,
  "Rank": StatDescription.RANK
});

enum StatName { GAMES_PLAYED, POINTS, RANK, POINT_DIFFERENTIAL, ALL_SPLITS }

final statNameValues = EnumValues({
  "All Splits": StatName.ALL_SPLITS,
  "gamesPlayed": StatName.GAMES_PLAYED,
  "points": StatName.POINTS,
  "pointDifferential": StatName.POINT_DIFFERENTIAL,
  "rank": StatName.RANK
});

enum ShortDisplayName { GP, P, RANK, GD, OVER }

final shortDisplayNameValues = EnumValues({
  "GD": ShortDisplayName.GD,
  "GP": ShortDisplayName.GP,
  "OVER": ShortDisplayName.OVER,
  "P": ShortDisplayName.P,
  "Rank": ShortDisplayName.RANK
});

enum Summary { THE_000 }

final summaryValues = EnumValues({
  "0-0-0": Summary.THE_000
});

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










// // To parse this JSON data, do
// //
// //     final partidoDataDetail = partidoDataDetailFromJson(jsonString);
//
// import 'dart:convert';
//
// PartidoDataDetail partidoDataDetailFromJson(String str) => PartidoDataDetail.fromJson(json.decode(str));
//
// String partidoDataDetailToJson(PartidoDataDetail data) => json.encode(data.toJson());
//
// class PartidoDataDetail {
//   PartidoDataDetail({
//     this.boxscore,
//     this.gameInfo,
//     this.headToHeadGames,
//     this.broadcasts,
//     this.hasOdds,
//     this.rosters,
//     this.news,
//     this.keyEvents,
//     this.header,
//     this.videos,
//     this.standings,
//   });
//
//   Boxscore boxscore;
//   GameInfo gameInfo;
//   List<HeadToHeadGame> headToHeadGames;
//   List<dynamic> broadcasts;
//   bool hasOdds;
//   List<PartidoDataDetailRoster> rosters;
//   News news;
//   List<KeyEvent> keyEvents;
//   Header header;
//   List<dynamic> videos;
//   PartidoDataDetailStandings standings;
//
//   factory PartidoDataDetail.fromJson(Map<String, dynamic> json) => PartidoDataDetail(
//     boxscore: Boxscore.fromJson(json["boxscore"]),
//     gameInfo: GameInfo.fromJson(json["gameInfo"]),
//     headToHeadGames: List<HeadToHeadGame>.from(json["headToHeadGames"].map((x) => HeadToHeadGame.fromJson(x))),
//     broadcasts: List<dynamic>.from(json["broadcasts"].map((x) => x)),
//     hasOdds: json["hasOdds"],
//     rosters: List<PartidoDataDetailRoster>.from(json["rosters"].map((x) => PartidoDataDetailRoster.fromJson(x))),
//     news: News.fromJson(json["news"]),
//     keyEvents: json["keyEvents"] == null ? null : List<KeyEvent>.from(json["keyEvents"].map((x) => KeyEvent.fromJson(x))),
//     header: Header.fromJson(json["header"]),
//     videos: json["videos"] == null ? null :List<dynamic>.from(json["videos"].map((x) => x)),
//     standings: PartidoDataDetailStandings.fromJson(json["standings"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "boxscore": boxscore.toJson(),
//     "gameInfo": gameInfo.toJson(),
//     "headToHeadGames": List<dynamic>.from(headToHeadGames.map((x) => x.toJson())),
//     "broadcasts": List<dynamic>.from(broadcasts.map((x) => x)),
//     "hasOdds": hasOdds,
//     "rosters": List<dynamic>.from(rosters.map((x) => x.toJson())),
//     "news": news.toJson(),
//     "keyEvents": List<dynamic>.from(keyEvents.map((x) => x.toJson())),
//     "header": header.toJson(),
//     "videos": List<dynamic>.from(videos.map((x) => x)),
//     "standings": standings.toJson(),
//   };
// }
//
// class Boxscore {
//   Boxscore({
//     this.form,
//     this.teams,
//   });
//
//   List<HeadToHeadGame> form;
//   List<TeamElement> teams;
//
//   factory Boxscore.fromJson(Map<String, dynamic> json) => Boxscore(
//     form: List<HeadToHeadGame>.from(json["form"].map((x) => HeadToHeadGame.fromJson(x))),
//     teams: List<TeamElement>.from(json["teams"].map((x) => TeamElement.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "form": List<dynamic>.from(form.map((x) => x.toJson())),
//     "teams": List<dynamic>.from(teams.map((x) => x.toJson())),
//   };
// }
//
// class HeadToHeadGame {
//   HeadToHeadGame({
//     this.team,
//     this.events,
//   });
//
//   OpponentClass team;
//   List<Evento> events;
//
//   factory HeadToHeadGame.fromJson(Map<String, dynamic> json) => HeadToHeadGame(
//     team: OpponentClass.fromJson(json["team"]),
//     events: List<Evento>.from(json["events"].map((x) => Evento.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "team": team.toJson(),
//     "events": List<dynamic>.from(events.map((x) => x.toJson())),
//   };
// }
//
// class Evento {
//   Evento({
//     this.id,
//     this.links,
//     this.atVs,
//     this.gameDate,
//     this.score,
//     this.homeTeamId,
//     this.awayTeamId,
//     this.homeTeamScore,
//     this.awayTeamScore,
//     this.homeAggregateScore,
//     this.awayAggregateScore,
//     this.homeShootoutScore,
//     this.awayShootoutScore,
//     this.gameResult,
//     this.matchNote,
//     this.leagueName,
//     this.leagueAbbreviation,
//     this.opponent,
//     this.opponentLogo,
//   });
//
//   String id;
//   List<FullViewLinkElement> links;
//   AtVs atVs;
//   String gameDate;
//   String score;
//   String homeTeamId;
//   String awayTeamId;
//   String homeTeamScore;
//   String awayTeamScore;
//   String homeAggregateScore;
//   String awayAggregateScore;
//   String homeShootoutScore;
//   String awayShootoutScore;
//   GameResult gameResult;
//   MatchNote matchNote;
//   LeagueNameEnum leagueName;
//   LeagueAbbreviationEnum leagueAbbreviation;
//   OpponentClass opponent;
//   String opponentLogo;
//
//   factory Evento.fromJson(Map<String, dynamic> json) => Evento(
//     id: json["id"],
//     links: List<FullViewLinkElement>.from(json["links"].map((x) => FullViewLinkElement.fromJson(x))),
//     atVs: atVsValues.map[json["atVs"]],
//     gameDate: json["gameDate"],
//     score: json["score"],
//     homeTeamId: json["homeTeamId"],
//     awayTeamId: json["awayTeamId"],
//     homeTeamScore: json["homeTeamScore"],
//     awayTeamScore: json["awayTeamScore"],
//     homeAggregateScore: json["homeAggregateScore"],
//     awayAggregateScore: json["awayAggregateScore"],
//     homeShootoutScore: json["homeShootoutScore"],
//     awayShootoutScore: json["awayShootoutScore"],
//     gameResult: gameResultValues.map[json["gameResult"]],
//     matchNote: json["matchNote"] == null ? null : matchNoteValues.map[json["matchNote"]],
//     leagueName: leagueNameEnumValues.map[json["leagueName"]],
//     leagueAbbreviation: leagueAbbreviationEnumValues.map[json["leagueAbbreviation"]],
//     opponent: OpponentClass.fromJson(json["opponent"]),
//     opponentLogo: json["opponentLogo"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//     "atVs": atVsValues.reverse[atVs],
//     "gameDate": gameDate,
//     "score": score,
//     "homeTeamId": homeTeamId,
//     "awayTeamId": awayTeamId,
//     "homeTeamScore": homeTeamScore,
//     "awayTeamScore": awayTeamScore,
//     "homeAggregateScore": homeAggregateScore,
//     "awayAggregateScore": awayAggregateScore,
//     "homeShootoutScore": homeShootoutScore,
//     "awayShootoutScore": awayShootoutScore,
//     "gameResult": gameResultValues.reverse[gameResult],
//     "matchNote": matchNote == null ? null : matchNoteValues.reverse[matchNote],
//     "leagueName": leagueNameEnumValues.reverse[leagueName],
//     "leagueAbbreviation": leagueAbbreviationEnumValues.reverse[leagueAbbreviation],
//     "opponent": opponent.toJson(),
//     "opponentLogo": opponentLogo,
//   };
// }
//
// enum AtVs { EMPTY, VS }
//
// final atVsValues = EnumValues({
//   "@": AtVs.EMPTY,
//   "vs": AtVs.VS
// });
//
// enum GameResult { W, D, L }
//
// final gameResultValues = EnumValues({
//   "D": GameResult.D,
//   "L": GameResult.L,
//   "W": GameResult.W
// });
//
// enum LeagueAbbreviationEnum { SEG }
//
// final leagueAbbreviationEnumValues = EnumValues({
//   "Seg": LeagueAbbreviationEnum.SEG
// });
//
// enum LeagueNameEnum { SPANISH_SEGUNDA_DIVISIN }
//
// final leagueNameEnumValues = EnumValues({
//   "Spanish Segunda División": LeagueNameEnum.SPANISH_SEGUNDA_DIVISIN
// });
//
// class FullViewLinkElement {
//   FullViewLinkElement({
//     this.href,
//     this.text,
//   });
//
//   String href;
//   FullViewLinkText text;
//
//   factory FullViewLinkElement.fromJson(Map<String, dynamic> json) => FullViewLinkElement(
//     href: json["href"],
//     text: fullViewLinkTextValues.map[json["text"]],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "href": href,
//     "text": fullViewLinkTextValues.reverse[text],
//   };
// }
//
// enum FullViewLinkText { SUMMARY, CLUBHOUSE, FIXTURES, TABLE }
//
// final fullViewLinkTextValues = EnumValues({
//   "Clubhouse": FullViewLinkText.CLUBHOUSE,
//   "Fixtures": FullViewLinkText.FIXTURES,
//   "Summary": FullViewLinkText.SUMMARY,
//   "Table": FullViewLinkText.TABLE
// });
//
// enum MatchNote { BEHIND_CLOSED_DOORS }
//
// final matchNoteValues = EnumValues({
//   "Behind Closed Doors": MatchNote.BEHIND_CLOSED_DOORS
// });
//
// class OpponentClass {
//   OpponentClass({
//     this.id,
//     this.uid,
//     this.displayName,
//     this.abbreviation,
//     this.links,
//     this.logo,
//   });
//
//   String id;
//   String uid;
//   String displayName;
//   String abbreviation;
//   List<FullViewLinkElement> links;
//   String logo;
//
//   factory OpponentClass.fromJson(Map<String, dynamic> json) => OpponentClass(
//     id: json["id"],
//     uid: json["uid"],
//     displayName: json["displayName"],
//     abbreviation: json["abbreviation"],
//     links: List<FullViewLinkElement>.from(json["links"].map((x) => FullViewLinkElement.fromJson(x))),
//     logo: json["logo"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "uid": uid,
//     "displayName": displayName,
//     "abbreviation": abbreviation,
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//     "logo": logo,
//   };
// }
//
// class TeamElement {
//   TeamElement({
//     this.team,
//   });
//
//   CompetitorTeam team;
//
//   factory TeamElement.fromJson(Map<String, dynamic> json) => TeamElement(
//     team: CompetitorTeam.fromJson(json["team"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "team": team.toJson(),
//   };
// }
//
// class CompetitorTeam {
//   CompetitorTeam({
//     this.id,
//     this.uid,
//     this.slug,
//     this.location,
//     this.name,
//     this.abbreviation,
//     this.displayName,
//     this.shortDisplayName,
//     this.color,
//     this.alternateColor,
//     this.logo,
//   });
//
//   String id;
//   String uid;
//   String slug;
//   DisplayName location;
//   DisplayName name;
//   String abbreviation;
//   DisplayName displayName;
//   DisplayName shortDisplayName;
//   String color;
//   String alternateColor;
//   String logo;
//
//   factory CompetitorTeam.fromJson(Map<String, dynamic> json) => CompetitorTeam(
//     id: json["id"],
//     uid: json["uid"],
//     slug: json["slug"],
//     location: displayNameValues.map[json["location"]],
//     name: displayNameValues.map[json["name"]],
//     abbreviation: json["abbreviation"],
//     displayName: displayNameValues.map[json["displayName"]],
//     shortDisplayName: displayNameValues.map[json["shortDisplayName"]],
//     color: json["color"],
//     alternateColor: json["alternateColor"],
//     logo: json["logo"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "uid": uid,
//     "slug": slug,
//     "location": displayNameValues.reverse[location],
//     "name": displayNameValues.reverse[name],
//     "abbreviation": abbreviation,
//     "displayName": displayNameValues.reverse[displayName],
//     "shortDisplayName": displayNameValues.reverse[shortDisplayName],
//     "color": color,
//     "alternateColor": alternateColor,
//     "logo": logo,
//   };
// }
//
// enum DisplayName { LUGO, GIRONA }
//
// final displayNameValues = EnumValues({
//   "Girona": DisplayName.GIRONA,
//   "Lugo": DisplayName.LUGO
// });
//
// class GameInfo {
//   GameInfo({
//     this.attendance,
//   });
//
//   int attendance;
//
//   factory GameInfo.fromJson(Map<String, dynamic> json) => GameInfo(
//     attendance: json["attendance"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "attendance": attendance,
//   };
// }
//
// class Header {
//   Header({
//     this.id,
//     this.uid,
//     this.season,
//     this.timeValid,
//     this.competitions,
//     this.links,
//     this.league,
//   });
//
//   String id;
//   String uid;
//   Season season;
//   bool timeValid;
//   List<Competition> competitions;
//   List<HeaderLink> links;
//   HeaderLeague league;
//
//   factory Header.fromJson(Map<String, dynamic> json) => Header(
//     id: json["id"],
//     uid: json["uid"],
//     season: Season.fromJson(json["season"]),
//     timeValid: json["timeValid"],
//     competitions: List<Competition>.from(json["competitions"].map((x) => Competition.fromJson(x))),
//     links: List<HeaderLink>.from(json["links"].map((x) => HeaderLink.fromJson(x))),
//     league: HeaderLeague.fromJson(json["league"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "uid": uid,
//     "season": season.toJson(),
//     "timeValid": timeValid,
//     "competitions": List<dynamic>.from(competitions.map((x) => x.toJson())),
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//     "league": league.toJson(),
//   };
// }
//
// class Competition {
//   Competition({
//     this.id,
//     this.uid,
//     this.date,
//     this.neutralSite,
//     this.conferenceCompetition,
//     this.boxscoreAvailable,
//     this.commentaryAvailable,
//     this.liveAvailable,
//     this.onWatchEspn,
//     this.recent,
//     this.boxscoreSource,
//     this.playByPlaySource,
//     this.competitors,
//     this.notes,
//     this.status,
//     this.broadcasts,
//     this.details,
//   });
//
//   String id;
//   String uid;
//   String date;
//   bool neutralSite;
//   bool conferenceCompetition;
//   bool boxscoreAvailable;
//   bool commentaryAvailable;
//   bool liveAvailable;
//   bool onWatchEspn;
//   bool recent;
//   BoxscoreSource boxscoreSource;
//   BoxscoreSource playByPlaySource;
//   List<Participante> competitors;
//   List<Note> notes;
//   Status status;
//   List<dynamic> broadcasts;
//   List<Detail> details;
//
//   factory Competition.fromJson(Map<String, dynamic> json) => Competition(
//     id: json["id"],
//     uid: json["uid"],
//     date: json["date"],
//     neutralSite: json["neutralSite"],
//     conferenceCompetition: json["conferenceCompetition"],
//     boxscoreAvailable: json["boxscoreAvailable"],
//     commentaryAvailable: json["commentaryAvailable"],
//     liveAvailable: json["liveAvailable"],
//     onWatchEspn: json["onWatchESPN"],
//     recent: json["recent"],
//     boxscoreSource: boxscoreSourceValues.map[json["boxscoreSource"]],
//     playByPlaySource: boxscoreSourceValues.map[json["playByPlaySource"]],
//     competitors: List<Participante>.from(json["competitors"].map((x) => Participante.fromJson(x))),
//     notes: List<Note>.from(json["notes"].map((x) => Note.fromJson(x))),
//     status: Status.fromJson(json["status"]),
//     broadcasts: List<dynamic>.from(json["broadcasts"].map((x) => x)),
//     details: json["details"] == null ? null :  List<Detail>.from(json["details"].map((x) => Detail.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "uid": uid,
//     "date": date,
//     "neutralSite": neutralSite,
//     "conferenceCompetition": conferenceCompetition,
//     "boxscoreAvailable": boxscoreAvailable,
//     "commentaryAvailable": commentaryAvailable,
//     "liveAvailable": liveAvailable,
//     "onWatchESPN": onWatchEspn,
//     "recent": recent,
//     "boxscoreSource": boxscoreSourceValues.reverse[boxscoreSource],
//     "playByPlaySource": boxscoreSourceValues.reverse[playByPlaySource],
//     "competitors": List<dynamic>.from(competitors.map((x) => x.toJson())),
//     "notes": List<dynamic>.from(notes.map((x) => x.toJson())),
//     "status": status.toJson(),
//     "broadcasts": List<dynamic>.from(broadcasts.map((x) => x)),
//     "details": List<dynamic>.from(details.map((x) => x.toJson())),
//   };
// }
//
// enum BoxscoreSource { FULL, DEFAULT, DARK }
//
// final boxscoreSourceValues = EnumValues({
//   "dark": BoxscoreSource.DARK,
//   "default": BoxscoreSource.DEFAULT,
//   "full": BoxscoreSource.FULL
// });
//
// class Participante {
//   Participante({
//     this.id,
//     this.uid,
//     this.order,
//     this.homeAway,
//     this.winner,
//     this.team,
//     this.score,
//     this.linescores,
//     this.record,
//     this.possession,
//   });
//
//   String id;
//   String uid;
//   int order;
//   String homeAway;
//   bool winner;
//   CompetitorTeam team;
//   String score;
//   List<Linescore> linescores;
//   List<Record> record;
//   bool possession;
//
//   factory Participante.fromJson(Map<String, dynamic> json) => Participante(
//     id: json["id"],
//     uid: json["uid"],
//     order: json["order"],
//     homeAway: json["homeAway"],
//     winner: json["winner"],
//     team: CompetitorTeam.fromJson(json["team"]),
//     score: json["score"],
//     linescores: json["linescores"] == null ? null : List<Linescore>.from(json["linescores"].map((x) => Linescore.fromJson(x))),
//     record: List<Record>.from(json["record"].map((x) => Record.fromJson(x))),
//     possession: json["possession"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "uid": uid,
//     "order": order,
//     "homeAway": homeAway,
//     "winner": winner,
//     "team": team.toJson(),
//     "score": score,
//     "linescores": List<dynamic>.from(linescores.map((x) => x.toJson())),
//     "record": List<dynamic>.from(record.map((x) => x.toJson())),
//     "possession": possession,
//   };
// }
//
// class Linescore {
//   Linescore({
//     this.displayValue,
//   });
//
//   String displayValue;
//
//   factory Linescore.fromJson(Map<String, dynamic> json) => Linescore(
//     displayValue: json["displayValue"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "displayValue": displayValue,
//   };
// }
//
// class Record {
//   Record({
//     this.type,
//     this.summary,
//     this.displayValue,
//   });
//
//   RecordType type;
//   String summary;
//   String displayValue;
//
//   factory Record.fromJson(Map<String, dynamic> json) => Record(
//     type: recordTypeValues.map[json["type"]],
//     summary: json["summary"],
//     displayValue: json["displayValue"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "type": recordTypeValues.reverse[type],
//     "summary": summary,
//     "displayValue": displayValue,
//   };
// }
//
// enum RecordType { GAMESPLAYED, POINTS, RANK, POINTDIFFERENTIAL, TOTAL }
//
// final recordTypeValues = EnumValues({
//   "gamesplayed": RecordType.GAMESPLAYED,
//   "pointdifferential": RecordType.POINTDIFFERENTIAL,
//   "points": RecordType.POINTS,
//   "rank": RecordType.RANK,
//   "total": RecordType.TOTAL
// });
//
// class CompetitorTeam {
//   CompetitorTeam({
//     this.id,
//     this.uid,
//     this.location,
//     this.name,
//     this.abbreviation,
//     this.displayName,
//     this.shortDisplayName,
//     this.color,
//     this.alternateColor,
//     this.logos,
//     this.links,
//     this.form,
//     this.nickname,
//   });
//
//   String id;
//   String uid;
//   String location;
//   String name;
//   String abbreviation;
//   String displayName;
//   String shortDisplayName;
//   String color;
//   String alternateColor;
//   List<Logo> logos;
//   List<LeagueLink> links;
//   String form;
//   String nickname;
//
//   factory CompetitorTeam.fromJson(Map<String, dynamic> json) => CompetitorTeam(
//     id: json["id"],
//     uid: json["uid"],
//     location: json["location"],
//     name: json["name"],
//     abbreviation: json["abbreviation"],
//     displayName: json["displayName"],
//     shortDisplayName: json["shortDisplayName"],
//     color: json["color"],
//     alternateColor: json["alternateColor"],
//     logos: json["logos"] == null ? null : List<Logo>.from(json["logos"].map((x) => Logo.fromJson(x))),
//     links: List<LeagueLink>.from(json["links"].map((x) => LeagueLink.fromJson(x))),
//     form: json["form"],
//     nickname: json["nickname"] == null ? null : json["nickname"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "uid": uid,
//     "location": displayNameValues.reverse[location],
//     "name": displayNameValues.reverse[name],
//     "abbreviation": abbreviation,
//     "displayName": displayNameValues.reverse[displayName],
//     "shortDisplayName": displayNameValues.reverse[shortDisplayName],
//     "color": color,
//     "alternateColor": alternateColor,
//     "logos": List<dynamic>.from(logos.map((x) => x.toJson())),
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//     "form": form,
//     "nickname": nickname == null ? null : displayNameValues.reverse[nickname],
//   };
// }
//
// class LeagueLink {
//   LeagueLink({
//     this.rel,
//     this.href,
//     this.text,
//   });
//
//   List<String> rel;
//   String href;
//   String text;
//
//   factory LeagueLink.fromJson(Map<String, dynamic> json) => LeagueLink(
//     rel: List<String>.from(json["rel"].map((x) => x)),
//     href: json["href"],
//     text: json["text"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "rel": List<dynamic>.from(rel.map((x) => x)),
//     "href": href,
//     "text": text,
//   };
// }
//
// class Logo {
//   Logo({
//     this.href,
//     this.width,
//     this.height,
//     this.alt,
//     this.rel,
//   });
//
//   String href;
//   int width;
//   int height;
//   String alt;
//   List<BoxscoreSource> rel;
//
//   factory Logo.fromJson(Map<String, dynamic> json) => Logo(
//     href: json["href"],
//     width: json["width"],
//     height: json["height"],
//     alt: json["alt"],
//     rel: List<BoxscoreSource>.from(json["rel"].map((x) => boxscoreSourceValues.map[x])),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "href": href,
//     "width": width,
//     "height": height,
//     "alt": alt,
//     "rel": List<dynamic>.from(rel.map((x) => boxscoreSourceValues.reverse[x])),
//   };
// }
//
// class Detail {
//   Detail({
//     this.clock,
//     this.scoringPlay,
//     this.team,
//     this.participants,
//     this.addedClock,
//     this.redCard,
//     this.penaltyKick,
//     this.ownGoal,
//   });
//
//   Clock clock;
//   bool scoringPlay;
//   DetailTeam team;
//   List<DetailParticipant> participants;
//   Clock addedClock;
//   bool redCard;
//   bool penaltyKick;
//   bool ownGoal;
//
//   factory Detail.fromJson(Map<String, dynamic> json) => Detail(
//     clock: Clock.fromJson(json["clock"]),
//     scoringPlay: json["scoringPlay"],
//     team: DetailTeam.fromJson(json["team"]),
//     participants: List<DetailParticipant>.from(json["participants"].map((x) => DetailParticipant.fromJson(x))),
//     addedClock: Clock.fromJson(json["addedClock"]),
//     redCard: json["redCard"],
//     penaltyKick: json["penaltyKick"],
//     ownGoal: json["ownGoal"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "clock": clock.toJson(),
//     "scoringPlay": scoringPlay,
//     "team": team.toJson(),
//     "participants": List<dynamic>.from(participants.map((x) => x.toJson())),
//     "addedClock": addedClock.toJson(),
//     "redCard": redCard,
//     "penaltyKick": penaltyKick,
//     "ownGoal": ownGoal,
//   };
// }
//
// class Clock {
//   Clock({
//     this.value,
//     this.displayValue,
//   });
//
//   int value;
//   String displayValue;
//
//   factory Clock.fromJson(Map<String, dynamic> json) => Clock(
//     value: json["value"].toInt(),
//     displayValue: json["displayValue"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "value": value,
//     "displayValue": displayValue,
//   };
// }
//
// class DetailParticipant {
//   DetailParticipant({
//     this.athlete,
//   });
//
//   PurpleAthlete athlete;
//
//   factory DetailParticipant.fromJson(Map<String, dynamic> json) => DetailParticipant(
//     athlete: PurpleAthlete.fromJson(json["athlete"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "athlete": athlete.toJson(),
//   };
// }
//
// class PurpleAthlete {
//   PurpleAthlete({
//     this.id,
//     this.displayName,
//     this.links,
//   });
//
//   String id;
//   String displayName;
//   List<LeagueLink> links;
//
//   factory PurpleAthlete.fromJson(Map<String, dynamic> json) => PurpleAthlete(
//     id: json["id"],
//     displayName: json["displayName"],
//     links: List<LeagueLink>.from(json["links"].map((x) => LeagueLink.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "displayName": displayName,
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//   };
// }
//
// class DetailTeam {
//   DetailTeam({
//     this.id,
//     this.uid,
//     this.location,
//     this.name,
//     this.abbreviation,
//     this.displayName,
//     this.nickname,
//   });
//
//   String id;
//   String uid;
//   DisplayName location;
//   DisplayName name;
//   String abbreviation;
//   DisplayName displayName;
//   DisplayName nickname;
//
//   factory DetailTeam.fromJson(Map<String, dynamic> json) => DetailTeam(
//     id: json["id"],
//     uid: json["uid"],
//     location: displayNameValues.map[json["location"]],
//     name: displayNameValues.map[json["name"]],
//     abbreviation: json["abbreviation"],
//     displayName: displayNameValues.map[json["displayName"]],
//     nickname: json["nickname"] == null ? null : displayNameValues.map[json["nickname"]],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "uid": uid,
//     "location": displayNameValues.reverse[location],
//     "name": displayNameValues.reverse[name],
//     "abbreviation": abbreviation,
//     "displayName": displayNameValues.reverse[displayName],
//     "nickname": nickname == null ? null : displayNameValues.reverse[nickname],
//   };
// }
//
// class Note {
//   Note({
//     this.type,
//     this.date,
//     this.text,
//     this.source,
//   });
//
//   String type;
//   String date;
//   MatchNote text;
//   String source;
//
//   factory Note.fromJson(Map<String, dynamic> json) => Note(
//     type: json["type"],
//     date: json["date"],
//     text: matchNoteValues.map[json["text"]],
//     source: json["source"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "type": type,
//     "date": date,
//     "text": matchNoteValues.reverse[text],
//     "source": source,
//   };
// }
//
// class Status {
//   Status({
//     this.type,
//   });
//
//   StatusType type;
//
//   factory Status.fromJson(Map<String, dynamic> json) => Status(
//     type: StatusType.fromJson(json["type"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "type": type.toJson(),
//   };
// }
//
// class StatusType {
//   StatusType({
//     this.id,
//     this.name,
//     this.state,
//     this.completed,
//     this.description,
//     this.detail,
//     this.shortDetail,
//   });
//
//   String id;
//   String name;
//   String state;
//   bool completed;
//   String description;
//   String detail;
//   String shortDetail;
//
//   factory StatusType.fromJson(Map<String, dynamic> json) => StatusType(
//     id: json["id"],
//     name: json["name"],
//     state: json["state"],
//     completed: json["completed"],
//     description: json["description"],
//     detail: json["detail"],
//     shortDetail: json["shortDetail"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "name": name,
//     "state": state,
//     "completed": completed,
//     "description": description,
//     "detail": detail,
//     "shortDetail": shortDetail,
//   };
// }
//
// class HeaderLeague {
//   HeaderLeague({
//     this.id,
//     this.uid,
//     this.name,
//     this.abbreviation,
//     this.midsizeName,
//     this.slug,
//     this.isTournament,
//     this.links,
//   });
//
//   String id;
//   String uid;
//   LeagueNameEnum name;
//   LeagueAbbreviationEnum abbreviation;
//   String midsizeName;
//   String slug;
//   bool isTournament;
//   List<LeagueLink> links;
//
//   factory HeaderLeague.fromJson(Map<String, dynamic> json) => HeaderLeague(
//     id: json["id"],
//     uid: json["uid"],
//     name: leagueNameEnumValues.map[json["name"]],
//     abbreviation: leagueAbbreviationEnumValues.map[json["abbreviation"]],
//     midsizeName: json["midsizeName"],
//     slug: json["slug"],
//     isTournament: json["isTournament"],
//     links: List<LeagueLink>.from(json["links"].map((x) => LeagueLink.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "uid": uid,
//     "name": leagueNameEnumValues.reverse[name],
//     "abbreviation": leagueAbbreviationEnumValues.reverse[abbreviation],
//     "midsizeName": midsizeName,
//     "slug": slug,
//     "isTournament": isTournament,
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//   };
// }
//
// class HeaderLink {
//   HeaderLink({
//     this.rel,
//     this.href,
//     this.text,
//     this.shortText,
//     this.isExternal,
//     this.isPremium,
//     this.language,
//   });
//
//   List<Rel> rel;
//   String href;
//   ShortTextEnum text;
//   ShortTextEnum shortText;
//   bool isExternal;
//   bool isPremium;
//   Language language;
//
//   factory HeaderLink.fromJson(Map<String, dynamic> json) => HeaderLink(
//     rel: List<Rel>.from(json["rel"].map((x) => relValues.map[x])),
//     href: json["href"],
//     text: shortTextEnumValues.map[json["text"]],
//     shortText: shortTextEnumValues.map[json["shortText"]],
//     isExternal: json["isExternal"],
//     isPremium: json["isPremium"],
//     language: json["language"] == null ? null : languageValues.map[json["language"]],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "rel": List<dynamic>.from(rel.map((x) => relValues.reverse[x])),
//     "href": href,
//     "text": shortTextEnumValues.reverse[text],
//     "shortText": shortTextEnumValues.reverse[shortText],
//     "isExternal": isExternal,
//     "isPremium": isPremium,
//     "language": language == null ? null : languageValues.reverse[language],
//   };
// }
//
// enum Language { EN, EN_US }
//
// final languageValues = EnumValues({
//   "en": Language.EN,
//   "en-US": Language.EN_US
// });
//
// enum Rel { SUMMARY, DESKTOP, EVENT, STATS, LINEUPS, INDEX, LEAGUE, PLAYERCARD, ATHLETE, SPLITS, GAMELOG, NEWS, BIO, OVERVIEW, TRANSFERS, MOBILE }
//
// final relValues = EnumValues({
//   "athlete": Rel.ATHLETE,
//   "bio": Rel.BIO,
//   "desktop": Rel.DESKTOP,
//   "event": Rel.EVENT,
//   "gamelog": Rel.GAMELOG,
//   "index": Rel.INDEX,
//   "league": Rel.LEAGUE,
//   "lineups": Rel.LINEUPS,
//   "mobile": Rel.MOBILE,
//   "news": Rel.NEWS,
//   "overview": Rel.OVERVIEW,
//   "playercard": Rel.PLAYERCARD,
//   "splits": Rel.SPLITS,
//   "stats": Rel.STATS,
//   "summary": Rel.SUMMARY,
//   "transfers": Rel.TRANSFERS
// });
//
// enum ShortTextEnum { SUMMARY, STATISTICS, LINE_UPS, ALL_NEWS, PLAYER_CARD, STATS, SPLITS, MATCHES, NEWS, BIO, OVERVIEW, TRANSFERS, ALL_SEGUNDA_DIVISIN_NEWS }
//
// final shortTextEnumValues = EnumValues({
//   "All News": ShortTextEnum.ALL_NEWS,
//   "All Segunda División News": ShortTextEnum.ALL_SEGUNDA_DIVISIN_NEWS,
//   "Bio": ShortTextEnum.BIO,
//   "Line-Ups": ShortTextEnum.LINE_UPS,
//   "Matches": ShortTextEnum.MATCHES,
//   "News": ShortTextEnum.NEWS,
//   "Overview": ShortTextEnum.OVERVIEW,
//   "Player Card": ShortTextEnum.PLAYER_CARD,
//   "Splits": ShortTextEnum.SPLITS,
//   "Statistics": ShortTextEnum.STATISTICS,
//   "Stats": ShortTextEnum.STATS,
//   "Summary": ShortTextEnum.SUMMARY,
//   "Transfers": ShortTextEnum.TRANSFERS
// });
//
// class Season {
//   Season({
//     this.year,
//     this.type,
//     this.name,
//   });
//
//   int year;
//   int type;
//   String name;
//
//   factory Season.fromJson(Map<String, dynamic> json) => Season(
//     year: json["year"],
//     type: json["type"],
//     name: json["name"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "year": year,
//     "type": type,
//     "name": name,
//   };
// }
//
// class KeyEvent {
//   KeyEvent({
//     this.id,
//     this.type,
//     this.text,
//     this.shortText,
//     this.period,
//     this.clock,
//     this.scoringPlay,
//     this.team,
//     this.participants,
//     this.source,
//     this.shootout,
//   });
//
//   String id;
//   KeyEventType type;
//   String text;
//   String shortText;
//   Period period;
//   Clock clock;
//   bool scoringPlay;
//   KeyEventTeam team;
//   List<KeyEventParticipant> participants;
//   Source source;
//   bool shootout;
//
//   factory KeyEvent.fromJson(Map<String, dynamic> json) => KeyEvent(
//     id: json["id"],
//     type: KeyEventType.fromJson(json["type"]),
//     text: json["text"],
//     shortText: json["shortText"],
//     period: Period.fromJson(json["period"]),
//     clock: Clock.fromJson(json["clock"]),
//     scoringPlay: json["scoringPlay"],
//     team: KeyEventTeam.fromJson(json["team"]),
//     participants: List<KeyEventParticipant>.from(json["participants"].map((x) => KeyEventParticipant.fromJson(x))),
//     source: Source.fromJson(json["source"]),
//     shootout: json["shootout"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "type": type.toJson(),
//     "text": text,
//     "shortText": shortText,
//     "period": period.toJson(),
//     "clock": clock.toJson(),
//     "scoringPlay": scoringPlay,
//     "team": team.toJson(),
//     "participants": List<dynamic>.from(participants.map((x) => x.toJson())),
//     "source": source.toJson(),
//     "shootout": shootout,
//   };
// }
//
// class KeyEventParticipant {
//   KeyEventParticipant({
//     this.athlete,
//   });
//
//   FluffyAthlete athlete;
//
//   factory KeyEventParticipant.fromJson(Map<String, dynamic> json) => KeyEventParticipant(
//     athlete: FluffyAthlete.fromJson(json["athlete"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "athlete": athlete.toJson(),
//   };
// }
//
// class FluffyAthlete {
//   FluffyAthlete({
//     this.displayName,
//   });
//
//   String displayName;
//
//   factory FluffyAthlete.fromJson(Map<String, dynamic> json) => FluffyAthlete(
//     displayName: json["displayName"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "displayName": displayName,
//   };
// }
//
// class Period {
//   Period({
//     this.number,
//   });
//
//   int number;
//
//   factory Period.fromJson(Map<String, dynamic> json) => Period(
//     number: json["number"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "number": number,
//   };
// }
//
// class Source {
//   Source({
//     this.id,
//     this.description,
//   });
//
//   String id;
//   SourceDescription description;
//
//   factory Source.fromJson(Map<String, dynamic> json) => Source(
//     id: json["id"],
//     description: sourceDescriptionValues.map[json["description"]],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "description": sourceDescriptionValues.reverse[description],
//   };
// }
//
// enum SourceDescription { SA_ENVOY }
//
// final sourceDescriptionValues = EnumValues({
//   "SA.ENVOY": SourceDescription.SA_ENVOY
// });
//
// class KeyEventTeam {
//   KeyEventTeam({
//     this.id,
//     this.displayName,
//   });
//
//   String id;
//   DisplayName displayName;
//
//   factory KeyEventTeam.fromJson(Map<String, dynamic> json) => KeyEventTeam(
//     id: json["id"],
//     displayName: displayNameValues.map[json["displayName"]],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "displayName": displayNameValues.reverse[displayName],
//   };
// }
//
// class KeyEventType {
//   KeyEventType({
//     this.id,
//     this.text,
//   });
//
//   String id;
//   TypeText text;
//
//   factory KeyEventType.fromJson(Map<String, dynamic> json) => KeyEventType(
//     id: json["id"],
//     text: typeTextValues.map[json["text"]],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "text": typeTextValues.reverse[text],
//   };
// }
//
// enum TypeText { GOAL, YELLOW_CARD, PENALTY_SCORED, SUBSTITUTION }
//
// final typeTextValues = EnumValues({
//   "Goal": TypeText.GOAL,
//   "Penalty - Scored": TypeText.PENALTY_SCORED,
//   "Substitution": TypeText.SUBSTITUTION,
//   "Yellow Card": TypeText.YELLOW_CARD
// });
//
// class News {
//   News({
//     this.header,
//     this.link,
//     this.articles,
//   });
//
//   String header;
//   HeaderLink link;
//   List<Article> articles;
//
//   factory News.fromJson(Map<String, dynamic> json) => News(
//     header: json["header"],
//     link: HeaderLink.fromJson(json["link"]),
//     articles: List<Article>.from(json["articles"].map((x) => Article.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "header": header,
//     "link": link.toJson(),
//     "articles": List<dynamic>.from(articles.map((x) => x.toJson())),
//   };
// }
//
// class Article {
//   Article({
//     this.images,
//     this.description,
//     this.links,
//     this.categories,
//     this.headline,
//   });
//
//   List<Imagen> images;
//   String description;
//   ArticleLinks links;
//   List<Category> categories;
//   String headline;
//
//   factory Article.fromJson(Map<String, dynamic> json) => Article(
//     images: List<Imagen>.from(json["images"].map((x) => Imagen.fromJson(x))),
//     description: json["description"],
//     links: ArticleLinks.fromJson(json["links"]),
//     categories: List<Category>.from(json["categories"].map((x) => Category.fromJson(x))),
//     headline: json["headline"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "images": List<dynamic>.from(images.map((x) => x.toJson())),
//     "description": description,
//     "links": links.toJson(),
//     "categories": List<dynamic>.from(categories.map((x) => x.toJson())),
//     "headline": headline,
//   };
// }
//
// class Category {
//   Category({
//     this.id,
//     this.description,
//     this.type,
//     this.sportId,
//     this.teamId,
//     this.team,
//     this.uid,
//     this.createDate,
//     this.leagueId,
//     this.league,
//     this.guid,
//     this.athleteId,
//     this.athlete,
//     this.topicId,
//   });
//
//   int id;
//   String description;
//   CategoryType type;
//   int sportId;
//   int teamId;
//   CategoryTeam team;
//   String uid;
//   DateTime createDate;
//   int leagueId;
//   CategoryLeague league;
//   String guid;
//   int athleteId;
//   CategoryAthlete athlete;
//   int topicId;
//
//   factory Category.fromJson(Map<String, dynamic> json) => Category(
//     id: json["id"] == null ? null : json["id"],
//     description: json["description"] == null ? null : json["description"],
//     type: categoryTypeValues.map[json["type"]],
//     sportId: json["sportId"] == null ? null : json["sportId"],
//     teamId: json["teamId"] == null ? null : json["teamId"],
//     team: json["team"] == null ? null : CategoryTeam.fromJson(json["team"]),
//     uid: json["uid"] == null ? null : json["uid"],
//     createDate: json["createDate"] == null ? null : DateTime.parse(json["createDate"]),
//     leagueId: json["leagueId"] == null ? null : json["leagueId"],
//     league: json["league"] == null ? null : CategoryLeague.fromJson(json["league"]),
//     guid: json["guid"] == null ? null : json["guid"],
//     athleteId: json["athleteId"] == null ? null : json["athleteId"],
//     athlete: json["athlete"] == null ? null : CategoryAthlete.fromJson(json["athlete"]),
//     topicId: json["topicId"] == null ? null : json["topicId"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id == null ? null : id,
//     "description": description == null ? null : description,
//     "type": categoryTypeValues.reverse[type],
//     "sportId": sportId == null ? null : sportId,
//     "teamId": teamId == null ? null : teamId,
//     "team": team == null ? null : team.toJson(),
//     "uid": uid == null ? null : uid,
//     "createDate": createDate == null ? null : createDate.toIso8601String(),
//     "leagueId": leagueId == null ? null : leagueId,
//     "league": league == null ? null : league.toJson(),
//     "guid": guid == null ? null : guid,
//     "athleteId": athleteId == null ? null : athleteId,
//     "athlete": athlete == null ? null : athlete.toJson(),
//     "topicId": topicId == null ? null : topicId,
//   };
// }
//
// class CategoryAthlete {
//   CategoryAthlete({
//     this.id,
//     this.description,
//     this.links,
//   });
//
//   int id;
//   String description;
//   AthleteLinks links;
//
//   factory CategoryAthlete.fromJson(Map<String, dynamic> json) => CategoryAthlete(
//     id: json["id"],
//     description: json["description"],
//     links: AthleteLinks.fromJson(json["links"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "description": description,
//     "links": links.toJson(),
//   };
// }
//
// class AthleteLinks {
//   AthleteLinks({
//     this.api,
//     this.web,
//     this.mobile,
//   });
//
//   PurpleApi api;
//   PurpleApi web;
//   PurpleApi mobile;
//
//   factory AthleteLinks.fromJson(Map<String, dynamic> json) => AthleteLinks(
//     api: PurpleApi.fromJson(json["api"]),
//     web: PurpleApi.fromJson(json["web"]),
//     mobile: PurpleApi.fromJson(json["mobile"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "api": api.toJson(),
//     "web": web.toJson(),
//     "mobile": mobile.toJson(),
//   };
// }
//
// class PurpleApi {
//   PurpleApi({
//     this.athletes,
//   });
//
//   Mobile athletes;
//
//   factory PurpleApi.fromJson(Map<String, dynamic> json) => PurpleApi(
//     athletes: Mobile.fromJson(json["athletes"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "athletes": athletes.toJson(),
//   };
// }
//
// class Mobile {
//   Mobile({
//     this.href,
//   });
//
//   String href;
//
//   factory Mobile.fromJson(Map<String, dynamic> json) => Mobile(
//     href: json["href"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "href": href,
//   };
// }
//
// class CategoryLeague {
//   CategoryLeague({
//     this.id,
//     this.abbreviation,
//     this.description,
//     this.links,
//   });
//
//   int id;
//   String abbreviation;
//   String description;
//   LeagueLinks links;
//
//   factory CategoryLeague.fromJson(Map<String, dynamic> json) => CategoryLeague(
//     id: json["id"],
//     abbreviation: json["abbreviation"],
//     description: json["description"],
//     links: LeagueLinks.fromJson(json["links"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "abbreviation": abbreviation,
//     "description": description,
//     "links": links.toJson(),
//   };
// }
//
// class LeagueLinks {
//   LeagueLinks({
//     this.api,
//     this.web,
//     this.mobile,
//   });
//
//   FluffyApi api;
//   FluffyApi web;
//   FluffyApi mobile;
//
//   factory LeagueLinks.fromJson(Map<String, dynamic> json) => LeagueLinks(
//     api: FluffyApi.fromJson(json["api"]),
//     web: FluffyApi.fromJson(json["web"]),
//     mobile: FluffyApi.fromJson(json["mobile"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "api": api.toJson(),
//     "web": web.toJson(),
//     "mobile": mobile.toJson(),
//   };
// }
//
// class FluffyApi {
//   FluffyApi({
//     this.leagues,
//   });
//
//   Mobile leagues;
//
//   factory FluffyApi.fromJson(Map<String, dynamic> json) => FluffyApi(
//     leagues: Mobile.fromJson(json["leagues"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "leagues": leagues.toJson(),
//   };
// }
//
// class CategoryTeam {
//   CategoryTeam({
//     this.id,
//     this.description,
//     this.links,
//   });
//
//   int id;
//   String description;
//   TeamLinks links;
//
//   factory CategoryTeam.fromJson(Map<String, dynamic> json) => CategoryTeam(
//     id: json["id"],
//     description: json["description"],
//     links: TeamLinks.fromJson(json["links"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "description": description,
//     "links": links.toJson(),
//   };
// }
//
// class TeamLinks {
//   TeamLinks({
//     this.api,
//     this.web,
//     this.mobile,
//   });
//
//   TentacledApi api;
//   TentacledApi web;
//   TentacledApi mobile;
//
//   factory TeamLinks.fromJson(Map<String, dynamic> json) => TeamLinks(
//     api: TentacledApi.fromJson(json["api"]),
//     web: TentacledApi.fromJson(json["web"]),
//     mobile: TentacledApi.fromJson(json["mobile"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "api": api.toJson(),
//     "web": web.toJson(),
//     "mobile": mobile.toJson(),
//   };
// }
//
// class TentacledApi {
//   TentacledApi({
//     this.teams,
//   });
//
//   Mobile teams;
//
//   factory TentacledApi.fromJson(Map<String, dynamic> json) => TentacledApi(
//     teams: Mobile.fromJson(json["teams"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "teams": teams.toJson(),
//   };
// }
//
// enum CategoryType { TEAM, LEAGUE, GUID, ATHLETE, TOPIC }
//
// final categoryTypeValues = EnumValues({
//   "athlete": CategoryType.ATHLETE,
//   "guid": CategoryType.GUID,
//   "league": CategoryType.LEAGUE,
//   "team": CategoryType.TEAM,
//   "topic": CategoryType.TOPIC
// });
//
// class Imagen {
//   Imagen({
//     this.name,
//     this.width,
//     this.caption,
//     this.id,
//     this.credit,
//     this.type,
//     this.url,
//     this.height,
//     this.alt,
//   });
//
//   String name;
//   int width;
//   String caption;
//   int id;
//   String credit;
//   String type;
//   String url;
//   int height;
//   String alt;
//
//   factory Imagen.fromJson(Map<String, dynamic> json) => Imagen(
//     name: json["name"],
//     width: json["width"],
//     caption: json["caption"] == null ? null : json["caption"],
//     id: json["id"] == null ? null : json["id"],
//     credit: json["credit"] == null ? null : json["credit"],
//     type: json["type"],
//     url: json["url"],
//     height: json["height"],
//     alt: json["alt"] == null ? null : json["alt"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": name,
//     "width": width,
//     "caption": caption == null ? null : caption,
//     "id": id == null ? null : id,
//     "credit": credit == null ? null : credit,
//     "type": type,
//     "url": url,
//     "height": height,
//     "alt": alt == null ? null : alt,
//   };
// }
//
// class ArticleLinks {
//   ArticleLinks({
//     this.api,
//     this.web,
//     this.mobile,
//   });
//
//   StickyApi api;
//   Web web;
//   Mobile mobile;
//
//   factory ArticleLinks.fromJson(Map<String, dynamic> json) => ArticleLinks(
//     api: StickyApi.fromJson(json["api"]),
//     web: Web.fromJson(json["web"]),
//     mobile: Mobile.fromJson(json["mobile"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "api": api.toJson(),
//     "web": web.toJson(),
//     "mobile": mobile.toJson(),
//   };
// }
//
// class StickyApi {
//   StickyApi({
//     this.news,
//     this.self,
//   });
//
//   Mobile news;
//   Mobile self;
//
//   factory StickyApi.fromJson(Map<String, dynamic> json) => StickyApi(
//     news: Mobile.fromJson(json["news"]),
//     self: Mobile.fromJson(json["self"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "news": news.toJson(),
//     "self": self.toJson(),
//   };
// }
//
// class Web {
//   Web({
//     this.href,
//     this.short,
//   });
//
//   String href;
//   Media short;
//
//   factory Web.fromJson(Map<String, dynamic> json) => Web(
//     href: json["href"],
//     short: Media.fromJson(json["short"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "href": href,
//     "short": short.toJson(),
//   };
// }
//
// class Media {
//   Media();
//
//   factory Media.fromJson(Map<String, dynamic> json) => Media(
//   );
//
//   Map<String, dynamic> toJson() => {
//   };
// }
//
// class PartidoDataDetailRoster {
//   PartidoDataDetailRoster({
//     this.homeAway,
//     this.winner,
//     this.team,
//     this.roster,
//   });
//
//   String homeAway;
//   bool winner;
//   RosterTeam team;
//   List<RosterRoster> roster;
//
//   factory PartidoDataDetailRoster.fromJson(Map<String, dynamic> json) => PartidoDataDetailRoster(
//     homeAway: json["homeAway"],
//     winner: json["winner"],
//     team: RosterTeam.fromJson(json["team"]),
//     roster: json["roster"] == null ? null : List<RosterRoster>.from(json["roster"].map((x) => RosterRoster.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "homeAway": homeAway,
//     "winner": winner,
//     "team": team.toJson(),
//     "roster": List<dynamic>.from(roster.map((x) => x.toJson())),
//   };
// }
//
// class RosterRoster {
//   RosterRoster({
//     this.active,
//     this.starter,
//     this.jersey,
//     this.athlete,
//     this.position,
//     this.subbedIn,
//     this.subbedOut,
//     this.media,
//     this.subbedOutFor,
//     this.plays,
//     this.subbedInFor,
//   });
//
//   bool active;
//   bool starter;
//   String jersey;
//   RosterAthlete athlete;
//   Position position;
//   bool subbedIn;
//   bool subbedOut;
//   Media media;
//   SubbedFor subbedOutFor;
//   List<Play> plays;
//   SubbedFor subbedInFor;
//
//   factory RosterRoster.fromJson(Map<String, dynamic> json) => RosterRoster(
//     active: json["active"],
//     starter: json["starter"],
//     jersey: json["jersey"],
//     athlete: RosterAthlete.fromJson(json["athlete"]),
//     position: Position.fromJson(json["position"]),
//     subbedIn: json["subbedIn"],
//     subbedOut: json["subbedOut"],
//     media: Media.fromJson(json["media"]),
//     subbedOutFor: json["subbedOutFor"] == null ? null : SubbedFor.fromJson(json["subbedOutFor"]),
//     plays: json["plays"] == null ? null : List<Play>.from(json["plays"].map((x) => Play.fromJson(x))),
//     subbedInFor: json["subbedInFor"] == null ? null : SubbedFor.fromJson(json["subbedInFor"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "active": active,
//     "starter": starter,
//     "jersey": jersey,
//     "athlete": athlete.toJson(),
//     "position": position.toJson(),
//     "subbedIn": subbedIn,
//     "subbedOut": subbedOut,
//     "media": media.toJson(),
//     "subbedOutFor": subbedOutFor == null ? null : subbedOutFor.toJson(),
//     "plays": plays == null ? null : List<dynamic>.from(plays.map((x) => x.toJson())),
//     "subbedInFor": subbedInFor == null ? null : subbedInFor.toJson(),
//   };
// }
//
// class RosterAthlete {
//   RosterAthlete({
//     this.id,
//     this.uid,
//     this.guid,
//     this.lastName,
//     this.fullName,
//     this.displayName,
//     this.links,
//     this.headshot,
//   });
//
//   String id;
//   String uid;
//   String guid;
//   String lastName;
//   String fullName;
//   String displayName;
//   List<HeaderLink> links;
//   Headshot headshot;
//
//   factory RosterAthlete.fromJson(Map<String, dynamic> json) => RosterAthlete(
//     id: json["id"],
//     uid: json["uid"],
//     guid: json["guid"],
//     lastName: json["lastName"],
//     fullName: json["fullName"],
//     displayName: json["displayName"],
//     links: List<HeaderLink>.from(json["links"].map((x) => HeaderLink.fromJson(x))),
//     headshot: json["headshot"] == null ? null : Headshot.fromJson(json["headshot"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "uid": uid,
//     "guid": guid,
//     "lastName": lastName,
//     "fullName": fullName,
//     "displayName": displayName,
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//     "headshot": headshot == null ? null : headshot.toJson(),
//   };
// }
//
// class Headshot {
//   Headshot({
//     this.href,
//     this.alt,
//   });
//
//   String href;
//   String alt;
//
//   factory Headshot.fromJson(Map<String, dynamic> json) => Headshot(
//     href: json["href"],
//     alt: json["alt"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "href": href,
//     "alt": alt,
//   };
// }
//
// class Play {
//   Play({
//     this.clock,
//     this.scoringPlay,
//     this.substitution,
//     this.redCard,
//     this.yellowCard,
//     this.penaltyKick,
//     this.ownGoal,
//     this.didScore,
//   });
//
//   Linescore clock;
//   bool scoringPlay;
//   bool substitution;
//   bool redCard;
//   bool yellowCard;
//   bool penaltyKick;
//   bool ownGoal;
//   bool didScore;
//
//   factory Play.fromJson(Map<String, dynamic> json) => Play(
//     clock: Linescore.fromJson(json["clock"]),
//     scoringPlay: json["scoringPlay"],
//     substitution: json["substitution"],
//     redCard: json["redCard"],
//     yellowCard: json["yellowCard"],
//     penaltyKick: json["penaltyKick"],
//     ownGoal: json["ownGoal"],
//     didScore: json["didScore"] == null ? null : json["didScore"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "clock": clock.toJson(),
//     "scoringPlay": scoringPlay,
//     "substitution": substitution,
//     "redCard": redCard,
//     "yellowCard": yellowCard,
//     "penaltyKick": penaltyKick,
//     "ownGoal": ownGoal,
//     "didScore": didScore == null ? null : didScore,
//   };
// }
//
// class Position {
//   Position({
//     this.name,
//     this.displayName,
//     this.abbreviation,
//   });
//
//   DisplayNameEnum name;
//   DisplayNameEnum displayName;
//   PositionAbbreviation abbreviation;
//
//   factory Position.fromJson(Map<String, dynamic> json) => Position(
//     name: displayNameEnumValues.map[json["name"]],
//     displayName: displayNameEnumValues.map[json["displayName"]],
//     abbreviation: positionAbbreviationValues.map[json["abbreviation"]],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": displayNameEnumValues.reverse[name],
//     "displayName": displayNameEnumValues.reverse[displayName],
//     "abbreviation": positionAbbreviationValues.reverse[abbreviation],
//   };
// }
//
// enum PositionAbbreviation { G, D, M, F, SUB }
//
// final positionAbbreviationValues = EnumValues({
//   "D": PositionAbbreviation.D,
//   "F": PositionAbbreviation.F,
//   "G": PositionAbbreviation.G,
//   "M": PositionAbbreviation.M,
//   "SUB": PositionAbbreviation.SUB
// });
//
// enum DisplayNameEnum { GOALKEEPER, DEFENDER, MIDFIELDER, FORWARD, SUBSTITUTE }
//
// final displayNameEnumValues = EnumValues({
//   "Defender": DisplayNameEnum.DEFENDER,
//   "Forward": DisplayNameEnum.FORWARD,
//   "Goalkeeper": DisplayNameEnum.GOALKEEPER,
//   "Midfielder": DisplayNameEnum.MIDFIELDER,
//   "Substitute": DisplayNameEnum.SUBSTITUTE
// });
//
// class SubbedFor {
//   SubbedFor({
//     this.jersey,
//     this.athlete,
//   });
//
//   String jersey;
//   SubbedInForAthlete athlete;
//
//   factory SubbedFor.fromJson(Map<String, dynamic> json) => SubbedFor(
//     jersey: json["jersey"],
//     athlete: SubbedInForAthlete.fromJson(json["athlete"]),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "jersey": jersey,
//     "athlete": athlete.toJson(),
//   };
// }
//
// class SubbedInForAthlete {
//   SubbedInForAthlete({
//     this.id,
//     this.displayName,
//     this.links,
//   });
//
//   String id;
//   String displayName;
//   List<HeaderLink> links;
//
//   factory SubbedInForAthlete.fromJson(Map<String, dynamic> json) => SubbedInForAthlete(
//     id: json["id"],
//     displayName: json["displayName"],
//     links: List<HeaderLink>.from(json["links"].map((x) => HeaderLink.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "displayName": displayName,
//     "links": List<dynamic>.from(links.map((x) => x.toJson())),
//   };
// }
//
// class RosterTeam {
//   RosterTeam({
//     this.id,
//     this.abbreviation,
//     this.displayName,
//     this.color,
//     this.alternateColor,
//     this.logos,
//   });
//
//   String id;
//   String abbreviation;
//   String displayName;
//   String color;
//   String alternateColor;
//   List<Logo> logos;
//
//   factory RosterTeam.fromJson(Map<String, dynamic> json) => RosterTeam(
//     id: json["id"],
//     abbreviation: json["abbreviation"],
//     displayName: json["displayName"],
//     color: json["color"],
//     alternateColor: json["alternateColor"],
//     logos: json["logos"] == null ? null : List<Logo>.from(json["logos"].map((x) => Logo.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "id": id,
//     "abbreviation": abbreviation,
//     "displayName": displayNameValues.reverse[displayName],
//     "color": color,
//     "alternateColor": alternateColor,
//     "logos": List<dynamic>.from(logos.map((x) => x.toJson())),
//   };
// }
//
// class PartidoDataDetailStandings {
//   PartidoDataDetailStandings({
//     this.fullViewLink,
//     this.groups,
//   });
//
//   FullViewLinkElement fullViewLink;
//   List<Group> groups;
//
//   factory PartidoDataDetailStandings.fromJson(Map<String, dynamic> json) => PartidoDataDetailStandings(
//     fullViewLink: FullViewLinkElement.fromJson(json["fullViewLink"]),
//     groups: List<Group>.from(json["groups"].map((x) => Group.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "fullViewLink": fullViewLink.toJson(),
//     "groups": List<dynamic>.from(groups.map((x) => x.toJson())),
//   };
// }
//
// class Group {
//   Group({
//     this.standings,
//     this.header,
//     this.href,
//   });
//
//   GroupStandings standings;
//   String header;
//   String href;
//
//   factory Group.fromJson(Map<String, dynamic> json) => Group(
//     standings: GroupStandings.fromJson(json["standings"]),
//     header: json["header"],
//     href: json["href"],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "standings": standings.toJson(),
//     "header": header,
//     "href": href,
//   };
// }
//
// class GroupStandings {
//   GroupStandings({
//     this.entries,
//   });
//
//   List<Entry> entries;
//
//   factory GroupStandings.fromJson(Map<String, dynamic> json) => GroupStandings(
//     entries: List<Entry>.from(json["entries"].map((x) => Entry.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "entries": List<dynamic>.from(entries.map((x) => x.toJson())),
//   };
// }
//
// class Entry {
//   Entry({
//     this.team,
//     this.link,
//     this.id,
//     this.uid,
//     this.stats,
//     this.logo,
//   });
//
//   String team;
//   String link;
//   String id;
//   String uid;
//   List<Stat> stats;
//   List<Logo> logo;
//
//   factory Entry.fromJson(Map<String, dynamic> json) => Entry(
//     team: json["team"],
//     link: json["link"],
//     id: json["id"],
//     uid: json["uid"],
//     stats: List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
//     logo: json["logo"] == null ? null : List<Logo>.from(json["logo"].map((x) => Logo.fromJson(x))),
//   );
//
//   Map<String, dynamic> toJson() => {
//     "team": team,
//     "link": link,
//     "id": id,
//     "uid": uid,
//     "stats": List<dynamic>.from(stats.map((x) => x.toJson())),
//     "logo": logo == null ? null : List<dynamic>.from(logo.map((x) => x.toJson())),
//   };
// }
//
// class Stat {
//   Stat({
//     this.name,
//     this.displayName,
//     this.shortDisplayName,
//     this.description,
//     this.abbreviation,
//     this.type,
//     this.value,
//     this.displayValue,
//     this.id,
//     this.summary,
//   });
//
//   StatName name;
//   StatDescription displayName;
//   ShortDisplayName shortDisplayName;
//   StatDescription description;
//   StatAbbreviation abbreviation;
//   RecordType type;
//   int value;
//   String displayValue;
//   String id;
//   Summary summary;
//
//   factory Stat.fromJson(Map<String, dynamic> json) => Stat(
//     name: statNameValues.map[json["name"]],
//     displayName: statDescriptionValues.map[json["displayName"]],
//     shortDisplayName: shortDisplayNameValues.map[json["shortDisplayName"]],
//     description: statDescriptionValues.map[json["description"]],
//     abbreviation: statAbbreviationValues.map[json["abbreviation"]],
//     type: recordTypeValues.map[json["type"]],
//     value: json["value"] == null ? null : json["value"].toInt(),
//     displayValue: json["displayValue"],
//     id: json["id"] == null ? null : json["id"],
//     summary: json["summary"] == null ? null : summaryValues.map[json["summary"]],
//   );
//
//   Map<String, dynamic> toJson() => {
//     "name": statNameValues.reverse[name],
//     "displayName": statDescriptionValues.reverse[displayName],
//     "shortDisplayName": shortDisplayNameValues.reverse[shortDisplayName],
//     "description": statDescriptionValues.reverse[description],
//     "abbreviation": statAbbreviationValues.reverse[abbreviation],
//     "type": recordTypeValues.reverse[type],
//     "value": value == null ? null : value,
//     "displayValue": displayValue,
//     "id": id == null ? null : id,
//     "summary": summary == null ? null : summaryValues.reverse[summary],
//   };
// }
//
// enum StatAbbreviation { GP, P, R, GD, TOTAL }
//
// final statAbbreviationValues = EnumValues({
//   "GD": StatAbbreviation.GD,
//   "GP": StatAbbreviation.GP,
//   "P": StatAbbreviation.P,
//   "R": StatAbbreviation.R,
//   "Total": StatAbbreviation.TOTAL
// });
//
// enum StatDescription { GAMES_PLAYED, POINTS, RANK, GOAL_DIFFERENCE, OVERALL_RECORD, OVERALL }
//
// final statDescriptionValues = EnumValues({
//   "Games Played": StatDescription.GAMES_PLAYED,
//   "Goal Difference": StatDescription.GOAL_DIFFERENCE,
//   "Overall": StatDescription.OVERALL,
//   "Overall Record": StatDescription.OVERALL_RECORD,
//   "Points": StatDescription.POINTS,
//   "Rank": StatDescription.RANK
// });
//
// enum StatName { GAMES_PLAYED, POINTS, RANK, POINT_DIFFERENTIAL, ALL_SPLITS }
//
// final statNameValues = EnumValues({
//   "All Splits": StatName.ALL_SPLITS,
//   "gamesPlayed": StatName.GAMES_PLAYED,
//   "points": StatName.POINTS,
//   "pointDifferential": StatName.POINT_DIFFERENTIAL,
//   "rank": StatName.RANK
// });
//
// enum ShortDisplayName { GP, P, RANK, GD, OVER }
//
// final shortDisplayNameValues = EnumValues({
//   "GD": ShortDisplayName.GD,
//   "GP": ShortDisplayName.GP,
//   "OVER": ShortDisplayName.OVER,
//   "P": ShortDisplayName.P,
//   "Rank": ShortDisplayName.RANK
// });
//
// enum Summary { THE_000 }
//
// final summaryValues = EnumValues({
//   "0-0-0": Summary.THE_000
// });
//
// class EnumValues<T> {
//   Map<String, T> map;
//   Map<T, String> reverseMap;
//
//   EnumValues(this.map);
//
//   Map<T, String> get reverse {
//     if (reverseMap == null) {
//       reverseMap = map.map((k, v) => new MapEntry(v, k));
//     }
//     return reverseMap;
//   }
// }
