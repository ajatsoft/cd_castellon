// To parse this JSON data, do
//
//     final livePartidoDataDetail = livePartidoDataDetailFromJson(jsonString);

import 'dart:convert';

LivePartidoDataDetail livePartidoDataDetailFromJson(String str) =>
    LivePartidoDataDetail.fromJson(json.decode(str));

class LivePartidoDataDetail {
  LivePartidoDataDetail({
    this.boxscore,
    this.gameInfo,
    this.headToHeadGames,
    this.broadcasts,
    this.hasOdds,
    this.rosters,
    this.keyEvents,
    this.news,
    this.videos,
    this.header,
    this.standings,
  });

  Boxscore boxscore;
  GameInfo gameInfo;
  List<HeadToHeadGamelive> headToHeadGames;
  List<dynamic> broadcasts;
  bool hasOdds;
  List<LivePartidoDataDetailRoster> rosters;
  List<KeyEvent> keyEvents;
  News news;
  List<dynamic> videos;
  Header header;
  LivePartidoDataDetailStandings standings;

  factory LivePartidoDataDetail.fromJson(Map<String, dynamic> json) =>
      LivePartidoDataDetail(
        boxscore: json["boxscore"] == null
            ? null
            : Boxscore.fromJson(json["boxscore"]),
        gameInfo: json["gameInfo"] == null
            ? null
            : GameInfo.fromJson(json["gameInfo"]),
        headToHeadGames: json["headToHeadGames"] == null
            ? null
            : List<HeadToHeadGamelive>.from(json["headToHeadGames"]
                .map((x) => HeadToHeadGamelive.fromJson(x))),
        broadcasts: json["broadcasts"] == null
            ? null
            : List<dynamic>.from(json["broadcasts"].map((x) => x)),
        hasOdds: json["hasOdds"] == null ? null : json["hasOdds"],
        rosters: json["rosters"] == null
            ? null
            : List<LivePartidoDataDetailRoster>.from(json["rosters"]
                .map((x) => LivePartidoDataDetailRoster.fromJson(x))),
        keyEvents: json["keyEvents"] == null
            ? null
            : List<KeyEvent>.from(
                json["keyEvents"].map((x) => KeyEvent.fromJson(x))),
        news: json["news"] == null ? null : News.fromJson(json["news"]),
        videos: json["videos"] == null
            ? null
            : List<dynamic>.from(json["videos"].map((x) => x)),
        header: json["header"] == null ? null : Header.fromJson(json["header"]),
        standings: json["standings"] == null
            ? null
            : LivePartidoDataDetailStandings.fromJson(json["standings"]),
      );
}

class Boxscore {
  Boxscore({
    this.form,
    this.teams,
  });

  List<Form> form;
  List<TeamElement> teams;

  factory Boxscore.fromJson(Map<String, dynamic> json) =>
      Boxscore(
        form: json["form"] == null ? null : List<Form>.from(
            json["form"].map((x) => Form.fromJson(x))),
        teams: json["teams"] == null ? null : List<TeamElement>.from(
            json["teams"].map((x) => TeamElement.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "form": form == null ? null : List<dynamic>.from(
            form.map((x) => x.toJson())),
        "teams": teams == null ? null : List<dynamic>.from(
            teams.map((x) => x.toJson())),
      };
}

class Form {
  Form({
    this.team,
    this.events,
  });

  OpponentClass team;
  List<FormEvent> events;

  factory Form.fromJson(Map<String, dynamic> json) =>
      Form(
        team: json["team"] == null ? null : OpponentClass.fromJson(
            json["team"]),
        events: json["events"] == null ? null : List<FormEvent>.from(
            json["events"].map((x) => FormEvent.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "team": team == null ? null : team.toJson(),
        "events": events == null ? null : List<dynamic>.from(
            events.map((x) => x.toJson())),
      };
}

class FormEvent {
  FormEvent({
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
    this.matchNote,
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
  String matchNote;
  LeagueNameEnum leagueName;
  LeagueAbbreviationEnum leagueAbbreviation;
  OpponentClass opponent;
  String opponentLogo;

  factory FormEvent.fromJson(Map<String, dynamic> json) =>
      FormEvent(
        id: json["id"] == null ? null : json["id"],
        links: json["links"] == null ? null : List<FullViewLinkElement>.from(
            json["links"].map((x) => FullViewLinkElement.fromJson(x))),
        atVs: json["atVs"] == null ? null : atVsValues.map[json["atVs"]],
        gameDate: json["gameDate"] == null ? null : json["gameDate"],
        score: json["score"] == null ? null : json["score"],
        homeTeamId: json["homeTeamId"] == null ? null : json["homeTeamId"],
        awayTeamId: json["awayTeamId"] == null ? null : json["awayTeamId"],
        homeTeamScore: json["homeTeamScore"] == null
            ? null
            : json["homeTeamScore"],
        awayTeamScore: json["awayTeamScore"] == null
            ? null
            : json["awayTeamScore"],
        homeAggregateScore: json["homeAggregateScore"] == null
            ? null
            : json["homeAggregateScore"],
        awayAggregateScore: json["awayAggregateScore"] == null
            ? null
            : json["awayAggregateScore"],
        homeShootoutScore: json["homeShootoutScore"] == null
            ? null
            : json["homeShootoutScore"],
        awayShootoutScore: json["awayShootoutScore"] == null
            ? null
            : json["awayShootoutScore"],
        gameResult: json["gameResult"] == null ? null : gameResultValues
            .map[json["gameResult"]],
        matchNote: json["matchNote"] == null ? null : json["matchNote"],
        leagueName: json["leagueName"] == null ? null : leagueNameEnumValues
            .map[json["leagueName"]],
        leagueAbbreviation: json["leagueAbbreviation"] == null
            ? null
            : leagueAbbreviationEnumValues.map[json["leagueAbbreviation"]],
        opponent: json["opponent"] == null ? null : OpponentClass.fromJson(
            json["opponent"]),
        opponentLogo: json["opponentLogo"] == null
            ? null
            : json["opponentLogo"],
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "links": links == null ? null : List<dynamic>.from(
            links.map((x) => x.toJson())),
        "atVs": atVs == null ? null : atVsValues.reverse[atVs],
        "gameDate": gameDate == null ? null : gameDate,
        "score": score == null ? null : score,
        "homeTeamId": homeTeamId == null ? null : homeTeamId,
        "awayTeamId": awayTeamId == null ? null : awayTeamId,
        "homeTeamScore": homeTeamScore == null ? null : homeTeamScore,
        "awayTeamScore": awayTeamScore == null ? null : awayTeamScore,
        "homeAggregateScore": homeAggregateScore == null
            ? null
            : homeAggregateScore,
        "awayAggregateScore": awayAggregateScore == null
            ? null
            : awayAggregateScore,
        "homeShootoutScore": homeShootoutScore == null
            ? null
            : homeShootoutScore,
        "awayShootoutScore": awayShootoutScore == null
            ? null
            : awayShootoutScore,
        "gameResult": gameResult == null ? null : gameResultValues
            .reverse[gameResult],
        "matchNote": matchNote == null ? null : matchNote,
        "leagueName": leagueName == null ? null : leagueNameEnumValues
            .reverse[leagueName],
        "leagueAbbreviation": leagueAbbreviation == null
            ? null
            : leagueAbbreviationEnumValues.reverse[leagueAbbreviation],
        "opponent": opponent == null ? null : opponent.toJson(),
        "opponentLogo": opponentLogo == null ? null : opponentLogo,
      };
}

enum AtVs { EN, VS }

final atVsValues = EnumValues({
  "en": AtVs.EN,
  "vs": AtVs.VS
});

enum GameResult { P, G }

final gameResultValues = EnumValues({
  "G": GameResult.G,
  "P": GameResult.P
});

enum LeagueAbbreviationEnum { THE_2_ESP, COPA_DEL_REY }

final leagueAbbreviationEnumValues = EnumValues({
  "Copa del Rey": LeagueAbbreviationEnum.COPA_DEL_REY,
  "2ESP": LeagueAbbreviationEnum.THE_2_ESP
});

enum LeagueNameEnum { SEGUNDA_DIVISIN_DE_ESPAA, COPA_DEL_REY }

final leagueNameEnumValues = EnumValues({
  "Copa del Rey": LeagueNameEnum.COPA_DEL_REY,
  "Segunda División de España": LeagueNameEnum.SEGUNDA_DIVISIN_DE_ESPAA
});

class FullViewLinkElement {
  FullViewLinkElement({
    this.href,
    this.text,
  });

  String href;
  FullViewLinkText text;

  factory FullViewLinkElement.fromJson(Map<String, dynamic> json) => FullViewLinkElement(
    href: json["href"] == null ? null : json["href"],
    text: json["text"] == null ? null : fullViewLinkTextValues
        .map[json["text"]],
  );

  Map<String, dynamic> toJson() =>
      {
        "href": href == null ? null : href,
        "text": text == null ? null : fullViewLinkTextValues.reverse[text],
      };
}

enum FullViewLinkText { RESUMEN, SEDE, CALENDARIO, POSICIONES }

final fullViewLinkTextValues = EnumValues({
  "Calendario": FullViewLinkText.CALENDARIO,
  "Posiciones": FullViewLinkText.POSICIONES,
  "Resumen": FullViewLinkText.RESUMEN,
  "Sede": FullViewLinkText.SEDE
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
    id: json["id"] == null ? null : json["id"],
    uid: json["uid"] == null ? null : json["uid"],
    displayName: json["displayName"] == null ? null : json["displayName"],
    abbreviation: json["abbreviation"] == null ? null : json["abbreviation"],
    links: json["links"] == null ? null : List<FullViewLinkElement>.from(
        json["links"].map((x) => FullViewLinkElement.fromJson(x))),
    logo: json["logo"] == null ? null : json["logo"],
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "uid": uid == null ? null : uid,
        "displayName": displayName == null ? null : displayName,
        "abbreviation": abbreviation == null ? null : abbreviation,
        "links": links == null ? null : List<dynamic>.from(
            links.map((x) => x.toJson())),
        "logo": logo == null ? null : logo,
      };
}

class TeamElement {
  TeamElement({
    this.team,
  });

  TeamTeam team;

  factory TeamElement.fromJson(Map<String, dynamic> json) =>
      TeamElement(
        team: json["team"] == null ? null : TeamTeam.fromJson(json["team"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "team": team == null ? null : team.toJson(),
      };
}

class TeamTeam {
  TeamTeam({
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

  factory TeamTeam.fromJson(Map<String, dynamic> json) =>
      TeamTeam(
        id: json["id"] == null ? null : json["id"],
        uid: json["uid"] == null ? null : json["uid"],
        slug: json["slug"] == null ? null : json["slug"],
        location: json["location"] == null ? null : displayNameValues
            .map[json["location"]],
        name: json["name"] == null ? null : displayNameValues.map[json["name"]],
        abbreviation: json["abbreviation"] == null
            ? null
            : json["abbreviation"],
        displayName: json["displayName"] == null ? null : displayNameValues
            .map[json["displayName"]],
        shortDisplayName: json["shortDisplayName"] == null
            ? null
            : displayNameValues.map[json["shortDisplayName"]],
        color: json["color"] == null ? null : json["color"],
        alternateColor: json["alternateColor"] == null
            ? null
            : json["alternateColor"],
        logo: json["logo"] == null ? null : json["logo"],
        logos: json["logos"] == null ? null : List<Logo>.from(
            json["logos"].map((x) => Logo.fromJson(x))),
        links: json["links"] == null ? null : List<LeagueLink>.from(
            json["links"].map((x) => LeagueLink.fromJson(x))),
        form: json["form"] == null ? null : json["form"],
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "uid": uid == null ? null : uid,
        "slug": slug == null ? null : slug,
        "location": location == null ? null : displayNameValues
            .reverse[location],
        "name": name == null ? null : displayNameValues.reverse[name],
        "abbreviation": abbreviation == null ? null : abbreviation,
        "displayName": displayName == null ? null : displayNameValues
            .reverse[displayName],
        "shortDisplayName": shortDisplayName == null ? null : displayNameValues
            .reverse[shortDisplayName],
        "color": color == null ? null : color,
        "alternateColor": alternateColor == null ? null : alternateColor,
        "logo": logo == null ? null : logo,
        "logos": logos == null ? null : List<dynamic>.from(
            logos.map((x) => x.toJson())),
        "links": links == null ? null : List<dynamic>.from(
            links.map((x) => x.toJson())),
        "form": form == null ? null : form,
      };
}

enum DisplayName { CASTELLON, PONFERRADINA }

final displayNameValues = EnumValues({
  "Castellon": DisplayName.CASTELLON,
  "Ponferradina": DisplayName.PONFERRADINA
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
    rel: json["rel"] == null ? null : List<String>.from(
        json["rel"].map((x) => x)),
    href: json["href"] == null ? null : json["href"],
    text: json["text"] == null ? null : json["text"],
  );

  Map<String, dynamic> toJson() =>
      {
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
  List<BoxscoreSource> rel;

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
    href: json["href"] == null ? null : json["href"],
    width: json["width"] == null ? null : json["width"],
    height: json["height"] == null ? null : json["height"],
    alt: json["alt"] == null ? null : json["alt"],
    rel: json["rel"] == null ? null : List<BoxscoreSource>.from(
        json["rel"].map((x) => boxscoreSourceValues.map[x])),
  );

  Map<String, dynamic> toJson() =>
      {
        "href": href == null ? null : href,
        "width": width == null ? null : width,
        "height": height == null ? null : height,
        "alt": alt == null ? null : alt,
        "rel": rel == null ? null : List<dynamic>.from(
            rel.map((x) => boxscoreSourceValues.reverse[x])),
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
    this.venue,
    this.attendance,
  });

  Venue venue;
  int attendance;

  factory GameInfo.fromJson(Map<String, dynamic> json) => GameInfo(
    venue: json["venue"] == null ? null : Venue.fromJson(json["venue"]),
    attendance: json["attendance"] == null ? null : json["attendance"],
  );

  Map<String, dynamic> toJson() =>
      {
        "venue": venue == null ? null : venue.toJson(),
        "attendance": attendance == null ? null : attendance,
      };
}

class Venue {
  Venue({
    this.id,
    this.fullName,
    this.shortName,
    this.address,
    this.capacity,
    this.images,
  });

  String id;
  String fullName;
  String shortName;
  Address address;
  int capacity;
  List<dynamic> images;

  factory Venue.fromJson(Map<String, dynamic> json) =>
      Venue(
        id: json["id"] == null ? null : json["id"],
        fullName: json["fullName"] == null ? null : json["fullName"],
        shortName: json["shortName"] == null ? null : json["shortName"],
        address: json["address"] == null ? null : Address.fromJson(
            json["address"]),
        capacity: json["capacity"] == null ? null : json["capacity"],
        images: json["images"] == null ? null : List<dynamic>.from(
            json["images"].map((x) => x)),
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "fullName": fullName == null ? null : fullName,
        "shortName": shortName == null ? null : shortName,
        "address": address == null ? null : address.toJson(),
        "capacity": capacity == null ? null : capacity,
        "images": images == null ? null : List<dynamic>.from(
            images.map((x) => x)),
      };
}

class Address {
  Address();

  factory Address.fromJson(Map<String, dynamic> json) =>
      Address(
      );

  Map<String, dynamic> toJson() =>
      {
      };
}

class HeadToHeadGamelive {
  HeadToHeadGamelive({
    this.team,
    this.events,
  });

  OpponentClass team;
  List<HeadToHeadGameEvent> events;

  factory HeadToHeadGamelive.fromJson(Map<String, dynamic> json) =>
      HeadToHeadGamelive(
        team: json["team"] == null ? null : OpponentClass.fromJson(
            json["team"]),
        events: json["events"] == null ? null : List<HeadToHeadGameEvent>.from(
            json["events"].map((x) => HeadToHeadGameEvent.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "team": team == null ? null : team.toJson(),
        "events": events == null ? null : List<dynamic>.from(
            events.map((x) => x.toJson())),
      };
}

class HeadToHeadGameEvent {
  HeadToHeadGameEvent({
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

  factory HeadToHeadGameEvent.fromJson(Map<String, dynamic> json) =>
      HeadToHeadGameEvent(
        id: json["id"] == null ? null : json["id"],
        links: json["links"] == null ? null : List<FullViewLinkElement>.from(
            json["links"].map((x) => FullViewLinkElement.fromJson(x))),
        atVs: json["atVs"] == null ? null : atVsValues.map[json["atVs"]],
        gameDate: json["gameDate"] == null ? null : json["gameDate"],
        score: json["score"] == null ? null : json["score"],
        homeTeamId: json["homeTeamId"] == null ? null : json["homeTeamId"],
        awayTeamId: json["awayTeamId"] == null ? null : json["awayTeamId"],
        homeTeamScore: json["homeTeamScore"] == null
            ? null
            : json["homeTeamScore"],
        awayTeamScore: json["awayTeamScore"] == null
            ? null
            : json["awayTeamScore"],
        homeAggregateScore: json["homeAggregateScore"] == null
            ? null
            : json["homeAggregateScore"],
        awayAggregateScore: json["awayAggregateScore"] == null
            ? null
            : json["awayAggregateScore"],
        homeShootoutScore: json["homeShootoutScore"] == null
            ? null
            : json["homeShootoutScore"],
        awayShootoutScore: json["awayShootoutScore"] == null
            ? null
            : json["awayShootoutScore"],
        gameResult: json["gameResult"] == null ? null : gameResultValues
            .map[json["gameResult"]],
        leagueName: json["leagueName"] == null ? null : leagueNameEnumValues
            .map[json["leagueName"]],
        leagueAbbreviation: json["leagueAbbreviation"] == null
            ? null
            : leagueAbbreviationEnumValues.map[json["leagueAbbreviation"]],
        opponent: json["opponent"] == null ? null : OpponentClass.fromJson(
            json["opponent"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "links": links == null ? null : List<dynamic>.from(
            links.map((x) => x.toJson())),
        "atVs": atVs == null ? null : atVsValues.reverse[atVs],
        "gameDate": gameDate == null ? null : gameDate,
        "score": score == null ? null : score,
        "homeTeamId": homeTeamId == null ? null : homeTeamId,
        "awayTeamId": awayTeamId == null ? null : awayTeamId,
        "homeTeamScore": homeTeamScore == null ? null : homeTeamScore,
        "awayTeamScore": awayTeamScore == null ? null : awayTeamScore,
        "homeAggregateScore": homeAggregateScore == null
            ? null
            : homeAggregateScore,
        "awayAggregateScore": awayAggregateScore == null
            ? null
            : awayAggregateScore,
        "homeShootoutScore": homeShootoutScore == null
            ? null
            : homeShootoutScore,
        "awayShootoutScore": awayShootoutScore == null
            ? null
            : awayShootoutScore,
        "gameResult": gameResult == null ? null : gameResultValues
            .reverse[gameResult],
        "leagueName": leagueName == null ? null : leagueNameEnumValues
            .reverse[leagueName],
        "leagueAbbreviation": leagueAbbreviation == null
            ? null
            : leagueAbbreviationEnumValues.reverse[leagueAbbreviation],
        "opponent": opponent == null ? null : opponent.toJson(),
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
    id: json["id"] == null ? null : json["id"],
    uid: json["uid"] == null ? null : json["uid"],
    season: json["season"] == null ? null : Season.fromJson(json["season"]),
    timeValid: json["timeValid"] == null ? null : json["timeValid"],
    competitions: json["competitions"] == null ? null : List<Competition>.from(
        json["competitions"].map((x) => Competition.fromJson(x))),
    links: json["links"] == null ? null : List<HeaderLink>.from(
        json["links"].map((x) => HeaderLink.fromJson(x))),
    league: json["league"] == null ? null : HeaderLeague.fromJson(
        json["league"]),
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "uid": uid == null ? null : uid,
        "season": season == null ? null : season.toJson(),
        "timeValid": timeValid == null ? null : timeValid,
        "competitions": competitions == null ? null : List<dynamic>.from(
            competitions.map((x) => x.toJson())),
        "links": links == null ? null : List<dynamic>.from(
            links.map((x) => x.toJson())),
        "league": league == null ? null : league.toJson(),
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
    id: json["id"] == null ? null : json["id"],
    uid: json["uid"] == null ? null : json["uid"],
    date: json["date"] == null ? null : json["date"],
    neutralSite: json["neutralSite"] == null ? null : json["neutralSite"],
    conferenceCompetition: json["conferenceCompetition"] == null
        ? null
        : json["conferenceCompetition"],
    boxscoreAvailable: json["boxscoreAvailable"] == null
        ? null
        : json["boxscoreAvailable"],
    commentaryAvailable: json["commentaryAvailable"] == null
        ? null
        : json["commentaryAvailable"],
    liveAvailable: json["liveAvailable"] == null ? null : json["liveAvailable"],
    onWatchEspn: json["onWatchESPN"] == null ? null : json["onWatchESPN"],
    recent: json["recent"] == null ? null : json["recent"],
    boxscoreSource: json["boxscoreSource"] == null ? null : boxscoreSourceValues
        .map[json["boxscoreSource"]],
    playByPlaySource: json["playByPlaySource"] == null
        ? null
        : boxscoreSourceValues.map[json["playByPlaySource"]],
    competitors: json["competitors"] == null ? null : List<Participante>.from(
        json["competitors"].map((x) => Participante.fromJson(x))),
    notes: json["notes"] == null ? null : List<dynamic>.from(
        json["notes"].map((x) => x)),
    status: json["status"] == null ? null : Status.fromJson(json["status"]),
    broadcasts: json["broadcasts"] == null ? null : List<dynamic>.from(
        json["broadcasts"].map((x) => x)),
    details: json["details"] == null ? null : List<Detail>.from(
        json["details"].map((x) => Detail.fromJson(x))),
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "uid": uid == null ? null : uid,
        "date": date == null ? null : date,
        "neutralSite": neutralSite == null ? null : neutralSite,
        "conferenceCompetition": conferenceCompetition == null
            ? null
            : conferenceCompetition,
        "boxscoreAvailable": boxscoreAvailable == null
            ? null
            : boxscoreAvailable,
        "commentaryAvailable": commentaryAvailable == null
            ? null
            : commentaryAvailable,
        "liveAvailable": liveAvailable == null ? null : liveAvailable,
        "onWatchESPN": onWatchEspn == null ? null : onWatchEspn,
        "recent": recent == null ? null : recent,
        "boxscoreSource": boxscoreSource == null ? null : boxscoreSourceValues
            .reverse[boxscoreSource],
        "playByPlaySource": playByPlaySource == null
            ? null
            : boxscoreSourceValues.reverse[playByPlaySource],
        "competitors": competitors == null ? null : List<dynamic>.from(
            competitors.map((x) => x.toJson())),
        "notes": notes == null ? null : List<dynamic>.from(notes.map((x) => x)),
        "status": status == null ? null : status.toJson(),
        "broadcasts": broadcasts == null ? null : List<dynamic>.from(
            broadcasts.map((x) => x)),
        "details": details == null ? null : List<dynamic>.from(
            details.map((x) => x.toJson())),
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
  String homeAway;
  bool winner;
  TeamTeam team;
  String score;
  List<Linescore> linescores;
  List<Record> record;
  bool possession;

  factory Participante.fromJson(Map<String, dynamic> json) =>
      Participante(
        id: json["id"] == null ? null : json["id"],
        uid: json["uid"] == null ? null : json["uid"],
        order: json["order"] == null ? null : json["order"],
        homeAway: json["homeAway"] == null ? null : json["homeAway"],
        winner: json["winner"] == null ? null : json["winner"],
        team: json["team"] == null ? null : TeamTeam.fromJson(json["team"]),
        score: json["score"] == null ? null : json["score"],
        linescores: json["linescores"] == null ? null : List<Linescore>.from(
            json["linescores"].map((x) => Linescore.fromJson(x))),
        record: json["record"] == null ? null : List<Record>.from(
            json["record"].map((x) => Record.fromJson(x))),
        possession: json["possession"] == null ? null : json["possession"],
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "uid": uid == null ? null : uid,
        "order": order == null ? null : order,
        "homeAway": homeAway == null ? null : homeAway,
        "winner": winner == null ? null : winner,
        "team": team == null ? null : team.toJson(),
        "score": score == null ? null : score,
        "linescores": linescores == null ? null : List<dynamic>.from(
            linescores.map((x) => x.toJson())),
        "record": record == null ? null : List<dynamic>.from(
            record.map((x) => x.toJson())),
        "possession": possession == null ? null : possession,
      };
}

class Linescore {
  Linescore({
    this.displayValue,
  });

  String displayValue;

  factory Linescore.fromJson(Map<String, dynamic> json) => Linescore(
    displayValue: json["displayValue"] == null ? null : json["displayValue"],
  );

  Map<String, dynamic> toJson() =>
      {
        "displayValue": displayValue == null ? null : displayValue,
      };
}

class Record {
  Record({
    this.type,
    this.summary,
    this.displayValue,
  });

  RecordType type;
  DisplayValue summary;
  DisplayValue displayValue;

  factory Record.fromJson(Map<String, dynamic> json) =>
      Record(
        type: json["type"] == null ? null : recordTypeValues.map[json["type"]],
        summary: json["summary"] == null ? null : displayValueValues
            .map[json["summary"]],
        displayValue: json["displayValue"] == null ? null : displayValueValues
            .map[json["displayValue"]],
      );

  Map<String, dynamic> toJson() =>
      {
        "type": type == null ? null : recordTypeValues.reverse[type],
        "summary": summary == null ? null : displayValueValues.reverse[summary],
        "displayValue": displayValue == null ? null : displayValueValues
            .reverse[displayValue],
      };
}

enum DisplayValue { THE_100, THE_010, THE_000, THE_001 }

final displayValueValues = EnumValues({
  "0-0-0": DisplayValue.THE_000,
  "0-0-1": DisplayValue.THE_001,
  "0-1-0": DisplayValue.THE_010,
  "1-0-0": DisplayValue.THE_100
});

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
    clock: json["clock"] == null ? null : Clock.fromJson(json["clock"]),
    scoringPlay: json["scoringPlay"] == null ? null : json["scoringPlay"],
    team: json["team"] == null ? null : DetailTeam.fromJson(json["team"]),
    participants: json["participants"] == null ? null : List<
        DetailParticipant>.from(
        json["participants"].map((x) => DetailParticipant.fromJson(x))),
    addedClock: json["addedClock"] == null ? null : Clock.fromJson(
        json["addedClock"]),
    redCard: json["redCard"] == null ? null : json["redCard"],
    penaltyKick: json["penaltyKick"] == null ? null : json["penaltyKick"],
    ownGoal: json["ownGoal"] == null ? null : json["ownGoal"],
  );

  Map<String, dynamic> toJson() =>
      {
        "clock": clock == null ? null : clock.toJson(),
        "scoringPlay": scoringPlay == null ? null : scoringPlay,
        "team": team == null ? null : team.toJson(),
        "participants": participants == null ? null : List<dynamic>.from(
            participants.map((x) => x.toJson())),
        "addedClock": addedClock == null ? null : addedClock.toJson(),
        "redCard": redCard == null ? null : redCard,
        "penaltyKick": penaltyKick == null ? null : penaltyKick,
        "ownGoal": ownGoal == null ? null : ownGoal,
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
    value: json["value"] == null ? null : json["value"].toInt(),
    displayValue: json["displayValue"] == null ? null : json["displayValue"],
  );

  Map<String, dynamic> toJson() =>
      {
        "value": value == null ? null : value,
        "displayValue": displayValue == null ? null : displayValue,
      };
}

class DetailParticipant {
  DetailParticipant({
    this.athlete,
  });

  PurpleAthlete athlete;

  factory DetailParticipant.fromJson(Map<String, dynamic> json) => DetailParticipant(
    athlete: json["athlete"] == null ? null : PurpleAthlete.fromJson(
        json["athlete"]),
  );

  Map<String, dynamic> toJson() =>
      {
        "athlete": athlete == null ? null : athlete.toJson(),
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
    id: json["id"] == null ? null : json["id"],
    displayName: json["displayName"] == null ? null : json["displayName"],
    links: json["links"] == null ? null : List<LeagueLink>.from(
        json["links"].map((x) => LeagueLink.fromJson(x))),
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "displayName": displayName == null ? null : displayName,
        "links": links == null ? null : List<dynamic>.from(
            links.map((x) => x.toJson())),
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
    id: json["id"] == null ? null : json["id"],
    uid: json["uid"] == null ? null : json["uid"],
    location: json["location"] == null ? null : displayNameValues
        .map[json["location"]],
    name: json["name"] == null ? null : displayNameValues.map[json["name"]],
    abbreviation: json["abbreviation"] == null ? null : json["abbreviation"],
    displayName: json["displayName"] == null ? null : displayNameValues
        .map[json["displayName"]],
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "uid": uid == null ? null : uid,
        "location": location == null ? null : displayNameValues
            .reverse[location],
        "name": name == null ? null : displayNameValues.reverse[name],
        "abbreviation": abbreviation == null ? null : abbreviation,
        "displayName": displayName == null ? null : displayNameValues
            .reverse[displayName],
      };
}

class Status {
  Status({
    this.displayClock,
    this.period,
    this.type,
  });

  String displayClock;
  int period;
  StatusType type;

  factory Status.fromJson(Map<String, dynamic> json) =>
      Status(
        displayClock: json["displayClock"] == null
            ? null
            : json["displayClock"],
        period: json["period"] == null ? null : json["period"],
        type: json["type"] == null ? null : StatusType.fromJson(json["type"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "displayClock": displayClock == null ? null : displayClock,
        "period": period == null ? null : period,
        "type": type == null ? null : type.toJson(),
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
    id: json["id"] == null ? null : json["id"],
    name: json["name"] == null ? null : json["name"],
    state: json["state"] == null ? null : json["state"],
    completed: json["completed"] == null ? null : json["completed"],
    description: json["description"] == null ? null : json["description"],
    detail: json["detail"] == null ? null : json["detail"],
    shortDetail: json["shortDetail"] == null ? null : json["shortDetail"],
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
        "state": state == null ? null : state,
        "completed": completed == null ? null : completed,
        "description": description == null ? null : description,
        "detail": detail == null ? null : detail,
        "shortDetail": shortDetail == null ? null : shortDetail,
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
    id: json["id"] == null ? null : json["id"],
    uid: json["uid"] == null ? null : json["uid"],
    name: json["name"] == null ? null : leagueNameEnumValues.map[json["name"]],
    abbreviation: json["abbreviation"] == null
        ? null
        : leagueAbbreviationEnumValues.map[json["abbreviation"]],
    midsizeName: json["midsizeName"] == null ? null : json["midsizeName"],
    slug: json["slug"] == null ? null : json["slug"],
    isTournament: json["isTournament"] == null ? null : json["isTournament"],
    links: json["links"] == null ? null : List<LeagueLink>.from(
        json["links"].map((x) => LeagueLink.fromJson(x))),
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "uid": uid == null ? null : uid,
        "name": name == null ? null : leagueNameEnumValues.reverse[name],
        "abbreviation": abbreviation == null
            ? null
            : leagueAbbreviationEnumValues.reverse[abbreviation],
        "midsizeName": midsizeName == null ? null : midsizeName,
        "slug": slug == null ? null : slug,
        "isTournament": isTournament == null ? null : isTournament,
        "links": links == null ? null : List<dynamic>.from(
            links.map((x) => x.toJson())),
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

  List<Rel> rel;
  String href;
  ShortTextEnum text;
  ShortTextEnum shortText;
  bool isExternal;
  bool isPremium;
  Language language;

  factory HeaderLink.fromJson(Map<String, dynamic> json) =>
      HeaderLink(
        rel: json["rel"] == null ? null : List<Rel>.from(
            json["rel"].map((x) => relValues.map[x])),
        href: json["href"] == null ? null : json["href"],
        text: json["text"] == null ? null : shortTextEnumValues
            .map[json["text"]],
        shortText: json["shortText"] == null ? null : shortTextEnumValues
            .map[json["shortText"]],
        isExternal: json["isExternal"] == null ? null : json["isExternal"],
        isPremium: json["isPremium"] == null ? null : json["isPremium"],
        language: json["language"] == null ? null : languageValues
            .map[json["language"]],
      );

  Map<String, dynamic> toJson() =>
      {
        "rel": rel == null ? null : List<dynamic>.from(
            rel.map((x) => relValues.reverse[x])),
        "href": href == null ? null : href,
        "text": text == null ? null : shortTextEnumValues.reverse[text],
        "shortText": shortText == null ? null : shortTextEnumValues
            .reverse[shortText],
        "isExternal": isExternal == null ? null : isExternal,
        "isPremium": isPremium == null ? null : isPremium,
        "language": language == null ? null : languageValues.reverse[language],
      };
}

enum Language { ES }

final languageValues = EnumValues({
  "es": Language.ES
});

enum Rel {
  SUMMARY,
  DESKTOP,
  EVENT,
  STATS,
  LINEUPS,
  INDEX,
  LEAGUE,
  PLAYERCARD,
  ATHLETE,
  SPLITS,
  GAMELOG,
  NEWS,
  BIO,
  OVERVIEW,
  TRANSFERS,
  MOBILE
}

final relValues = EnumValues({
  "athlete": Rel.ATHLETE,
  "bio": Rel.BIO,
  "desktop": Rel.DESKTOP,
  "event": Rel.EVENT,
  "gamelog": Rel.GAMELOG,
  "index": Rel.INDEX,
  "league": Rel.LEAGUE,
  "lineups": Rel.LINEUPS,
  "mobile": Rel.MOBILE,
  "news": Rel.NEWS,
  "overview": Rel.OVERVIEW,
  "playercard": Rel.PLAYERCARD,
  "splits": Rel.SPLITS,
  "stats": Rel.STATS,
  "summary": Rel.SUMMARY,
  "transfers": Rel.TRANSFERS
});

enum ShortTextEnum {
  RESUMEN,
  ESTADSTICAS,
  LINE_UPS,
  ALL_NEWS,
  PERFIL_JUGADOR,
  SPLITS,
  PARTIDOS,
  NOTICIAS,
  BIO,
  PERFIL_DE_JUGADOR,
  TRANSFERS,
  ALINEACIONES,
  NOTICIAS_2_DIVISIN
}

final shortTextEnumValues = EnumValues({
  "Alineaciones": ShortTextEnum.ALINEACIONES,
  "All News": ShortTextEnum.ALL_NEWS,
  "Bio": ShortTextEnum.BIO,
  "Estadísticas": ShortTextEnum.ESTADSTICAS,
  "Line-Ups": ShortTextEnum.LINE_UPS,
  "Noticias": ShortTextEnum.NOTICIAS,
  "Noticias 2ª División": ShortTextEnum.NOTICIAS_2_DIVISIN,
  "Partidos": ShortTextEnum.PARTIDOS,
  "Perfil de Jugador": ShortTextEnum.PERFIL_DE_JUGADOR,
  "Perfil jugador": ShortTextEnum.PERFIL_JUGADOR,
  "Resumen": ShortTextEnum.RESUMEN,
  "Splits": ShortTextEnum.SPLITS,
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
    id: json["id"] == null ? null : json["id"],
    type: json["type"] == null ? null : KeyEventType.fromJson(json["type"]),
    text: json["text"] == null ? null : json["text"],
    shortText: json["shortText"] == null ? null : json["shortText"],
    period: json["period"] == null ? null : Period.fromJson(json["period"]),
    clock: json["clock"] == null ? null : Clock.fromJson(json["clock"]),
    scoringPlay: json["scoringPlay"] == null ? null : json["scoringPlay"],
    team: json["team"] == null ? null : KeyEventTeam.fromJson(json["team"]),
    participants: json["participants"] == null ? null : List<
        KeyEventParticipant>.from(
        json["participants"].map((x) => KeyEventParticipant.fromJson(x))),
    source: json["source"] == null ? null : Source.fromJson(json["source"]),
    shootout: json["shootout"] == null ? null : json["shootout"],
  );


}

class KeyEventParticipant {
  KeyEventParticipant({
    this.athlete,
  });

  FluffyAthlete athlete;

  factory KeyEventParticipant.fromJson(Map<String, dynamic> json) => KeyEventParticipant(
    athlete: json["athlete"] == null ? null : FluffyAthlete.fromJson(
        json["athlete"]),
  );

  Map<String, dynamic> toJson() =>
      {
        "athlete": athlete == null ? null : athlete.toJson(),
      };
}

class FluffyAthlete {
  FluffyAthlete({
    this.displayName,
  });

  String displayName;

  factory FluffyAthlete.fromJson(Map<String, dynamic> json) => FluffyAthlete(
    displayName: json["displayName"] == null ? null : json["displayName"],
  );

  Map<String, dynamic> toJson() =>
      {
        "displayName": displayName == null ? null : displayName,
      };
}

class Period {
  Period({
    this.number,
  });

  int number;

  factory Period.fromJson(Map<String, dynamic> json) => Period(
    number: json["number"] == null ? null : json["number"],
  );

  Map<String, dynamic> toJson() =>
      {
        "number": number == null ? null : number,
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
    id: json["id"] == null ? null : json["id"],
    description: json["description"] == null ? null : sourceDescriptionValues
        .map[json["description"]],
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "description": description == null ? null : sourceDescriptionValues
            .reverse[description],
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
    id: json["id"] == null ? null : json["id"],
    displayName: json["displayName"] == null ? null : displayNameValues
        .map[json["displayName"]],
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "displayName": displayName == null ? null : displayNameValues
            .reverse[displayName],
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
    id: json["id"] == null ? null : json["id"],
    text: json["text"] == null ? null : json["text"],
  );


}



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
    header: json["header"] == null ? null : json["header"],
    link: json["link"] == null ? null : HeaderLink.fromJson(json["link"]),
    articles: json["articles"] == null ? null : List<Article>.from(
        json["articles"].map((x) => Article.fromJson(x))),
  );

  Map<String, dynamic> toJson() =>
      {
        "header": header == null ? null : header,
        "link": link == null ? null : link.toJson(),
        "articles": articles == null ? null : List<dynamic>.from(
            articles.map((x) => x.toJson())),
      };
}

class Article {
  Article({
    this.images,
    this.description,
    this.links,
    this.categories,
    this.headline,
  });

  List<ImagenArticle> images;
  String description;
  ArticleLinks links;
  List<Category> categories;
  String headline;

  factory Article.fromJson(Map<String, dynamic> json) =>
      Article(
        images: json["images"] == null ? null : List<ImagenArticle>.from(
            json["images"].map((x) => ImagenArticle.fromJson(x))),
        description: json["description"] == null ? null : json["description"],
        links: json["links"] == null ? null : ArticleLinks.fromJson(
            json["links"]),
        categories: json["categories"] == null ? null : List<Category>.from(
            json["categories"].map((x) => Category.fromJson(x))),
        headline: json["headline"] == null ? null : json["headline"],
      );

  Map<String, dynamic> toJson() =>
      {
        "images": images == null ? null : List<dynamic>.from(
            images.map((x) => x.toJson())),
        "description": description == null ? null : description,
        "links": links == null ? null : links.toJson(),
        "categories": categories == null ? null : List<dynamic>.from(
            categories.map((x) => x.toJson())),
        "headline": headline == null ? null : headline,
      };
}

class Category {
  Category({
    this.id,
    this.description,
    this.type,
    this.sportId,
    this.leagueId,
    this.league,
    this.uid,
    this.createDate,
    this.teamId,
    this.team,
    this.guid,
    this.athleteId,
    this.athlete,
  });

  int id;
  String description;
  CategoryType type;
  int sportId;
  int leagueId;
  CategoryLeague league;
  String uid;
  DateTime createDate;
  int teamId;
  CategoryTeam team;
  String guid;
  int athleteId;
  CategoryAthlete athlete;

  factory Category.fromJson(Map<String, dynamic> json) =>
      Category(
        id: json["id"] == null ? null : json["id"],
        description: json["description"] == null ? null : json["description"],
        type: json["type"] == null ? null : categoryTypeValues
            .map[json["type"]],
        sportId: json["sportId"] == null ? null : json["sportId"],
        leagueId: json["leagueId"] == null ? null : json["leagueId"],
        league: json["league"] == null ? null : CategoryLeague.fromJson(
            json["league"]),
        uid: json["uid"] == null ? null : json["uid"],
        createDate: json["createDate"] == null ? null : DateTime.parse(
            json["createDate"]),
        teamId: json["teamId"] == null ? null : json["teamId"],
        team: json["team"] == null ? null : CategoryTeam.fromJson(json["team"]),
        guid: json["guid"] == null ? null : json["guid"],
        athleteId: json["athleteId"] == null ? null : json["athleteId"],
        athlete: json["athlete"] == null ? null : CategoryAthlete.fromJson(
            json["athlete"]),
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "description": description == null ? null : description,
        "type": type == null ? null : categoryTypeValues.reverse[type],
        "sportId": sportId == null ? null : sportId,
        "leagueId": leagueId == null ? null : leagueId,
        "league": league == null ? null : league.toJson(),
        "uid": uid == null ? null : uid,
        "createDate": createDate == null ? null : createDate.toIso8601String(),
        "teamId": teamId == null ? null : teamId,
        "team": team == null ? null : team.toJson(),
        "guid": guid == null ? null : guid,
        "athleteId": athleteId == null ? null : athleteId,
        "athlete": athlete == null ? null : athlete.toJson(),
      };
}

class CategoryAthlete {
  CategoryAthlete({
    this.id,
    this.description,
    this.links,
  });

  int id;
  String description;
  AthleteLinks links;

  factory CategoryAthlete.fromJson(Map<String, dynamic> json) =>
      CategoryAthlete(
        id: json["id"] == null ? null : json["id"],
        description: json["description"] == null ? null : json["description"],
        links: json["links"] == null ? null : AthleteLinks.fromJson(
            json["links"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "description": description == null ? null : description,
        "links": links == null ? null : links.toJson(),
      };
}

class AthleteLinks {
  AthleteLinks({
    this.api,
    this.web,
    this.mobile,
  });

  PurpleApi api;
  PurpleApi web;
  PurpleApi mobile;

  factory AthleteLinks.fromJson(Map<String, dynamic> json) =>
      AthleteLinks(
        api: json["api"] == null ? null : PurpleApi.fromJson(json["api"]),
        web: json["web"] == null ? null : PurpleApi.fromJson(json["web"]),
        mobile: json["mobile"] == null ? null : PurpleApi.fromJson(
            json["mobile"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "api": api == null ? null : api.toJson(),
        "web": web == null ? null : web.toJson(),
        "mobile": mobile == null ? null : mobile.toJson(),
      };
}

class PurpleApi {
  PurpleApi({
    this.athletes,
  });

  Mobile athletes;

  factory PurpleApi.fromJson(Map<String, dynamic> json) =>
      PurpleApi(
        athletes: json["athletes"] == null ? null : Mobile.fromJson(
            json["athletes"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "athletes": athletes == null ? null : athletes.toJson(),
      };
}

class Mobile {
  Mobile({
    this.href,
  });

  String href;

  factory Mobile.fromJson(Map<String, dynamic> json) =>
      Mobile(
        href: json["href"] == null ? null : json["href"],
      );

  Map<String, dynamic> toJson() =>
      {
        "href": href == null ? null : href,
      };
}

class CategoryLeague {
  CategoryLeague({
    this.id,
    this.abbreviation,
    this.description,
    this.links,
  });

  int id;
  String abbreviation;
  String description;
  LeagueLinks links;

  factory CategoryLeague.fromJson(Map<String, dynamic> json) =>
      CategoryLeague(
        id: json["id"] == null ? null : json["id"],
        abbreviation: json["abbreviation"] == null
            ? null
            : json["abbreviation"],
        description: json["description"] == null ? null : json["description"],
        links: json["links"] == null ? null : LeagueLinks.fromJson(
            json["links"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "abbreviation": abbreviation == null ? null : abbreviation,
        "description": description == null ? null : description,
        "links": links == null ? null : links.toJson(),
      };
}

class LeagueLinks {
  LeagueLinks({
    this.api,
    this.web,
    this.mobile,
  });

  FluffyApi api;
  FluffyApi web;
  FluffyApi mobile;

  factory LeagueLinks.fromJson(Map<String, dynamic> json) =>
      LeagueLinks(
        api: json["api"] == null ? null : FluffyApi.fromJson(json["api"]),
        web: json["web"] == null ? null : FluffyApi.fromJson(json["web"]),
        mobile: json["mobile"] == null ? null : FluffyApi.fromJson(
            json["mobile"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "api": api == null ? null : api.toJson(),
        "web": web == null ? null : web.toJson(),
        "mobile": mobile == null ? null : mobile.toJson(),
      };
}

class FluffyApi {
  FluffyApi({
    this.leagues,
  });

  Mobile leagues;

  factory FluffyApi.fromJson(Map<String, dynamic> json) =>
      FluffyApi(
        leagues: json["leagues"] == null ? null : Mobile.fromJson(
            json["leagues"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "leagues": leagues == null ? null : leagues.toJson(),
      };
}

class CategoryTeam {
  CategoryTeam({
    this.id,
    this.description,
    this.links,
  });

  int id;
  String description;
  TeamLinks links;

  factory CategoryTeam.fromJson(Map<String, dynamic> json) =>
      CategoryTeam(
        id: json["id"] == null ? null : json["id"],
        description: json["description"] == null ? null : json["description"],
        links: json["links"] == null ? null : TeamLinks.fromJson(json["links"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "description": description == null ? null : description,
        "links": links == null ? null : links.toJson(),
      };
}

class TeamLinks {
  TeamLinks({
    this.api,
    this.web,
    this.mobile,
  });

  TentacledApi api;
  TentacledApi web;
  TentacledApi mobile;

  factory TeamLinks.fromJson(Map<String, dynamic> json) =>
      TeamLinks(
        api: json["api"] == null ? null : TentacledApi.fromJson(json["api"]),
        web: json["web"] == null ? null : TentacledApi.fromJson(json["web"]),
        mobile: json["mobile"] == null ? null : TentacledApi.fromJson(
            json["mobile"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "api": api == null ? null : api.toJson(),
        "web": web == null ? null : web.toJson(),
        "mobile": mobile == null ? null : mobile.toJson(),
      };
}

class TentacledApi {
  TentacledApi({
    this.teams,
  });

  Mobile teams;

  factory TentacledApi.fromJson(Map<String, dynamic> json) =>
      TentacledApi(
        teams: json["teams"] == null ? null : Mobile.fromJson(json["teams"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "teams": teams == null ? null : teams.toJson(),
      };
}

enum CategoryType { LEAGUE, TEAM, GUID, ATHLETE }

final categoryTypeValues = EnumValues({
  "athlete": CategoryType.ATHLETE,
  "guid": CategoryType.GUID,
  "league": CategoryType.LEAGUE,
  "team": CategoryType.TEAM
});

class ImagenArticle {
  ImagenArticle({
    this.name,
    this.width,
    this.alt,
    this.caption,
    this.url,
    this.height,
    this.id,
    this.credit,
    this.type,
  });

  String name;
  int width;
  String alt;
  String caption;
  String url;
  int height;
  int id;
  String credit;
  ImageType type;

  factory ImagenArticle.fromJson(Map<String, dynamic> json) =>
      ImagenArticle(
        name: json["name"] == null ? null : json["name"],
        width: json["width"] == null ? null : json["width"],
        alt: json["alt"] == null ? null : json["alt"],
        caption: json["caption"] == null ? null : json["caption"],
        url: json["url"] == null ? null : json["url"],
        height: json["height"] == null ? null : json["height"],
        id: json["id"] == null ? null : json["id"],
        credit: json["credit"] == null ? null : json["credit"],
        type: json["type"] == null ? null : imageTypeValues.map[json["type"]],
      );

  Map<String, dynamic> toJson() =>
      {
        "name": name == null ? null : name,
        "width": width == null ? null : width,
        "alt": alt == null ? null : alt,
        "caption": caption == null ? null : caption,
        "url": url == null ? null : url,
        "height": height == null ? null : height,
        "id": id == null ? null : id,
        "credit": credit == null ? null : credit,
        "type": type == null ? null : imageTypeValues.reverse[type],
      };
}

enum ImageType { HEADER, MEDIA, INLINE }

final imageTypeValues = EnumValues({
  "header": ImageType.HEADER,
  "inline": ImageType.INLINE,
  "Media": ImageType.MEDIA
});

class ArticleLinks {
  ArticleLinks({
    this.api,
    this.web,
    this.mobile,
  });

  StickyApi api;
  Web web;
  Mobile mobile;

  factory ArticleLinks.fromJson(Map<String, dynamic> json) =>
      ArticleLinks(
        api: json["api"] == null ? null : StickyApi.fromJson(json["api"]),
        web: json["web"] == null ? null : Web.fromJson(json["web"]),
        mobile: json["mobile"] == null ? null : Mobile.fromJson(json["mobile"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "api": api == null ? null : api.toJson(),
        "web": web == null ? null : web.toJson(),
        "mobile": mobile == null ? null : mobile.toJson(),
      };
}

class StickyApi {
  StickyApi({
    this.news,
    this.self,
  });

  Mobile news;
  Mobile self;

  factory StickyApi.fromJson(Map<String, dynamic> json) =>
      StickyApi(
        news: json["news"] == null ? null : Mobile.fromJson(json["news"]),
        self: json["self"] == null ? null : Mobile.fromJson(json["self"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "news": news == null ? null : news.toJson(),
        "self": self == null ? null : self.toJson(),
      };
}

class Web {
  Web({
    this.href,
    this.short,
  });

  String href;
  Address short;

  factory Web.fromJson(Map<String, dynamic> json) => Web(
    href: json["href"] == null ? null : json["href"],
    short: json["short"] == null ? null : Address.fromJson(json["short"]),
  );

  Map<String, dynamic> toJson() =>
      {
        "href": href == null ? null : href,
        "short": short == null ? null : short.toJson(),
      };
}

class LivePartidoDataDetailRoster {
  LivePartidoDataDetailRoster({
    this.homeAway,
    this.winner,
    this.team,
    this.roster,
  });

  String homeAway;
  bool winner;
  RosterTeam team;
  List<RosterRoster> roster;

  factory LivePartidoDataDetailRoster.fromJson(Map<String, dynamic> json) =>
      LivePartidoDataDetailRoster(
        homeAway: json["homeAway"] == null ? null : json["homeAway"],
        winner: json["winner"] == null ? null : json["winner"],
        team: json["team"] == null ? null : RosterTeam.fromJson(json["team"]),
        roster: json["roster"] == null ? null : List<RosterRoster>.from(
            json["roster"].map((x) => RosterRoster.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "homeAway": homeAway == null ? null : homeAway,
        "winner": winner == null ? null : winner,
        "team": team == null ? null : team.toJson(),
        "roster": roster == null ? null : List<dynamic>.from(
            roster.map((x) => x.toJson())),
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
    this.subbedOutFor,
    this.plays,
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
  SubbedFor subbedOutFor;
  List<Play> plays;
  SubbedFor subbedInFor;

  factory RosterRoster.fromJson(Map<String, dynamic> json) =>
      RosterRoster(
        active: json["active"] == null ? null : json["active"],
        starter: json["starter"] == null ? null : json["starter"],
        jersey: json["jersey"] == null ? null : json["jersey"],
        athlete: json["athlete"] == null ? null : RosterAthlete.fromJson(
            json["athlete"]),
        position: json["position"] == null ? null : Position.fromJson(
            json["position"]),
        subbedIn: json["subbedIn"] == null ? null : json["subbedIn"],
        subbedOut: json["subbedOut"] == null ? null : json["subbedOut"],
        media: json["media"] == null ? null : Address.fromJson(json["media"]),
        subbedOutFor: json["subbedOutFor"] == null ? null : SubbedFor.fromJson(
            json["subbedOutFor"]),
        plays: json["plays"] == null ? null : List<Play>.from(
            json["plays"].map((x) => Play.fromJson(x))),
        subbedInFor: json["subbedInFor"] == null ? null : SubbedFor.fromJson(
            json["subbedInFor"]),
      );

  Map<String, dynamic> toJson() =>
      {
        "active": active == null ? null : active,
        "starter": starter == null ? null : starter,
        "jersey": jersey == null ? null : jersey,
        "athlete": athlete == null ? null : athlete.toJson(),
        "position": position == null ? null : position.toJson(),
        "subbedIn": subbedIn == null ? null : subbedIn,
        "subbedOut": subbedOut == null ? null : subbedOut,
        "media": media == null ? null : media.toJson(),
        "subbedOutFor": subbedOutFor == null ? null : subbedOutFor.toJson(),
        "plays": plays == null ? null : List<dynamic>.from(
            plays.map((x) => x.toJson())),
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
    id: json["id"] == null ? null : json["id"],
    uid: json["uid"] == null ? null : json["uid"],
    guid: json["guid"] == null ? null : json["guid"],
    lastName: json["lastName"] == null ? null : json["lastName"],
    fullName: json["fullName"] == null ? null : json["fullName"],
    displayName: json["displayName"] == null ? null : json["displayName"],
    links: json["links"] == null ? null : List<HeaderLink>.from(
        json["links"].map((x) => HeaderLink.fromJson(x))),
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "uid": uid == null ? null : uid,
        "guid": guid == null ? null : guid,
        "lastName": lastName == null ? null : lastName,
        "fullName": fullName == null ? null : fullName,
        "displayName": displayName == null ? null : displayName,
        "links": links == null ? null : List<dynamic>.from(
            links.map((x) => x.toJson())),
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
    clock: json["clock"] == null ? null : Linescore.fromJson(json["clock"]),
    scoringPlay: json["scoringPlay"] == null ? null : json["scoringPlay"],
    substitution: json["substitution"] == null ? null : json["substitution"],
    redCard: json["redCard"] == null ? null : json["redCard"],
    yellowCard: json["yellowCard"] == null ? null : json["yellowCard"],
    penaltyKick: json["penaltyKick"] == null ? null : json["penaltyKick"],
    ownGoal: json["ownGoal"] == null ? null : json["ownGoal"],
    didScore: json["didScore"] == null ? null : json["didScore"],
  );

  Map<String, dynamic> toJson() =>
      {
        "clock": clock == null ? null : clock.toJson(),
        "scoringPlay": scoringPlay == null ? null : scoringPlay,
        "substitution": substitution == null ? null : substitution,
        "redCard": redCard == null ? null : redCard,
        "yellowCard": yellowCard == null ? null : yellowCard,
        "penaltyKick": penaltyKick == null ? null : penaltyKick,
        "ownGoal": ownGoal == null ? null : ownGoal,
        "didScore": didScore == null ? null : didScore,
      };
}

class Position {
  Position({
    this.name,
    this.displayName,
    this.abbreviation,
  });

  PositionName name;
  PositionDisplayName displayName;
  PositionAbbreviation abbreviation;

  factory Position.fromJson(Map<String, dynamic> json) =>
      Position(
        name: json["name"] == null ? null : positionNameValues
            .map[json["name"]],
        displayName: json["displayName"] == null
            ? null
            : positionDisplayNameValues.map[json["displayName"]],
        abbreviation: json["abbreviation"] == null
            ? null
            : positionAbbreviationValues.map[json["abbreviation"]],
      );

  Map<String, dynamic> toJson() =>
      {
        "name": name == null ? null : positionNameValues.reverse[name],
        "displayName": displayName == null ? null : positionDisplayNameValues
            .reverse[displayName],
        "abbreviation": abbreviation == null ? null : positionAbbreviationValues
            .reverse[abbreviation],
      };
}

enum PositionAbbreviation { G, D, M, A, SUP }

final positionAbbreviationValues = EnumValues({
  "A": PositionAbbreviation.A,
  "D": PositionAbbreviation.D,
  "G": PositionAbbreviation.G,
  "M": PositionAbbreviation.M,
  "SUP": PositionAbbreviation.SUP
});

enum PositionDisplayName {
  ARQUERO,
  DEFENSOR,
  MEDIOCAMPISTA,
  ATACANTE,
  SUPLENTE
}

final positionDisplayNameValues = EnumValues({
  "Arquero": PositionDisplayName.ARQUERO,
  "Atacante": PositionDisplayName.ATACANTE,
  "Defensor": PositionDisplayName.DEFENSOR,
  "Mediocampista": PositionDisplayName.MEDIOCAMPISTA,
  "Suplente": PositionDisplayName.SUPLENTE
});

enum PositionName { GOALKEEPER, DEFENDER, MIDFIELDER, FORWARD, SUBSTITUTE }

final positionNameValues = EnumValues({
  "Defender": PositionName.DEFENDER,
  "Forward": PositionName.FORWARD,
  "Goalkeeper": PositionName.GOALKEEPER,
  "Midfielder": PositionName.MIDFIELDER,
  "Substitute": PositionName.SUBSTITUTE
});

class SubbedFor {
  SubbedFor({
    this.jersey,
    this.athlete,
  });

  String jersey;
  SubbedInForAthlete athlete;

  factory SubbedFor.fromJson(Map<String, dynamic> json) => SubbedFor(
    jersey: json["jersey"] == null ? null : json["jersey"],
    athlete: json["athlete"] == null ? null : SubbedInForAthlete.fromJson(
        json["athlete"]),
  );

  Map<String, dynamic> toJson() =>
      {
        "jersey": jersey == null ? null : jersey,
        "athlete": athlete == null ? null : athlete.toJson(),
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
    id: json["id"] == null ? null : json["id"],
    displayName: json["displayName"] == null ? null : json["displayName"],
    links: json["links"] == null ? null : List<HeaderLink>.from(
        json["links"].map((x) => HeaderLink.fromJson(x))),
  );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "displayName": displayName == null ? null : displayName,
        "links": links == null ? null : List<dynamic>.from(
            links.map((x) => x.toJson())),
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
  DisplayName displayName;
  String color;
  String alternateColor;
  List<Logo> logos;

  factory RosterTeam.fromJson(Map<String, dynamic> json) =>
      RosterTeam(
        id: json["id"] == null ? null : json["id"],
        abbreviation: json["abbreviation"] == null
            ? null
            : json["abbreviation"],
        displayName: json["displayName"] == null ? null : displayNameValues
            .map[json["displayName"]],
        color: json["color"] == null ? null : json["color"],
        alternateColor: json["alternateColor"] == null
            ? null
            : json["alternateColor"],
        logos: json["logos"] == null ? null : List<Logo>.from(
            json["logos"].map((x) => Logo.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "id": id == null ? null : id,
        "abbreviation": abbreviation == null ? null : abbreviation,
        "displayName": displayName == null ? null : displayNameValues
            .reverse[displayName],
        "color": color == null ? null : color,
        "alternateColor": alternateColor == null ? null : alternateColor,
        "logos": logos == null ? null : List<dynamic>.from(
            logos.map((x) => x.toJson())),
      };
}

class LivePartidoDataDetailStandings {
  LivePartidoDataDetailStandings({
    this.fullViewLink,
    this.groups,
  });

  FullViewLinkElement fullViewLink;
  List<Group> groups;

  factory LivePartidoDataDetailStandings.fromJson(Map<String, dynamic> json) =>
      LivePartidoDataDetailStandings(
        fullViewLink: json["fullViewLink"] == null ? null : FullViewLinkElement
            .fromJson(json["fullViewLink"]),
        groups: json["groups"] == null ? null : List<Group>.from(
            json["groups"].map((x) => Group.fromJson(x))),
      );

  Map<String, dynamic> toJson() =>
      {
        "fullViewLink": fullViewLink == null ? null : fullViewLink.toJson(),
        "groups": groups == null ? null : List<dynamic>.from(
            groups.map((x) => x.toJson())),
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
    standings: json["standings"] == null ? null : GroupStandings.fromJson(
        json["standings"]),
    header: json["header"] == null ? null : json["header"],
    href: json["href"] == null ? null : json["href"],
  );

  Map<String, dynamic> toJson() =>
      {
        "standings": standings == null ? null : standings.toJson(),
        "header": header == null ? null : header,
        "href": href == null ? null : href,
      };
}

class GroupStandings {
  GroupStandings({
    this.entries,
  });

  List<Entry> entries;

  factory GroupStandings.fromJson(Map<String, dynamic> json) => GroupStandings(
    entries: json["entries"] == null ? null : List<Entry>.from(
        json["entries"].map((x) => Entry.fromJson(x))),
  );

  Map<String, dynamic> toJson() =>
      {
        "entries": entries == null ? null : List<dynamic>.from(
            entries.map((x) => x.toJson())),
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
    team: json["team"] == null ? null : json["team"],
    link: json["link"] == null ? null : json["link"],
    id: json["id"] == null ? null : json["id"],
    uid: json["uid"] == null ? null : json["uid"],
    stats: json["stats"] == null ? null : List<Stat>.from(
        json["stats"].map((x) => Stat.fromJson(x))),
    logo: json["logo"] == null ? null : List<Logo>.from(
        json["logo"].map((x) => Logo.fromJson(x))),
  );

  Map<String, dynamic> toJson() =>
      {
        "team": team == null ? null : team,
        "link": link == null ? null : link,
        "id": id == null ? null : id,
        "uid": uid == null ? null : uid,
        "stats": stats == null ? null : List<dynamic>.from(
            stats.map((x) => x.toJson())),
        "logo": logo == null ? null : List<dynamic>.from(
            logo.map((x) => x.toJson())),
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
  StatDisplayName displayName;
  ShortDisplayName shortDisplayName;
  StatDescription description;
  StatAbbreviation abbreviation;
  RecordType type;
  int value;
  String displayValue;
  String id;
  DisplayValue summary;

  factory Stat.fromJson(Map<String, dynamic> json) =>
      Stat(
        name: json["name"] == null ? null : statNameValues.map[json["name"]],
        displayName: json["displayName"] == null ? null : statDisplayNameValues
            .map[json["displayName"]],
        shortDisplayName: json["shortDisplayName"] == null
            ? null
            : shortDisplayNameValues.map[json["shortDisplayName"]],
        description: json["description"] == null ? null : statDescriptionValues
            .map[json["description"]],
        abbreviation: json["abbreviation"] == null
            ? null
            : statAbbreviationValues.map[json["abbreviation"]],
        type: json["type"] == null ? null : recordTypeValues.map[json["type"]],
        value: json["value"] == null ? null : json["value"].toInt(),
        displayValue: json["displayValue"] == null
            ? null
            : json["displayValue"],
        id: json["id"] == null ? null : json["id"],
        summary: json["summary"] == null ? null : displayValueValues
            .map[json["summary"]],
      );

  Map<String, dynamic> toJson() =>
      {
        "name": name == null ? null : statNameValues.reverse[name],
        "displayName": displayName == null ? null : statDisplayNameValues
            .reverse[displayName],
        "shortDisplayName": shortDisplayName == null
            ? null
            : shortDisplayNameValues.reverse[shortDisplayName],
        "description": description == null ? null : statDescriptionValues
            .reverse[description],
        "abbreviation": abbreviation == null ? null : statAbbreviationValues
            .reverse[abbreviation],
        "type": type == null ? null : recordTypeValues.reverse[type],
        "value": value == null ? null : value,
        "displayValue": displayValue == null ? null : displayValue,
        "id": id == null ? null : id,
        "summary": summary == null ? null : displayValueValues.reverse[summary],
      };
}

enum StatAbbreviation { J, PTS, R, DIFF, TOTAL }

final statAbbreviationValues = EnumValues({
  "DIFF": StatAbbreviation.DIFF,
  "J": StatAbbreviation.J,
  "PTS": StatAbbreviation.PTS,
  "R": StatAbbreviation.R,
  "Total": StatAbbreviation.TOTAL
});

enum StatDescription {
  NMERO_DE_PARTIDOS_JUGADOS,
  PUNTOS,
  RANK,
  DIFERENCIA_DE_PUNTOS,
  OVERALL_RECORD
}

final statDescriptionValues = EnumValues({
  "Diferencia de puntos": StatDescription.DIFERENCIA_DE_PUNTOS,
  "Número de partidos jugados": StatDescription.NMERO_DE_PARTIDOS_JUGADOS,
  "Overall Record": StatDescription.OVERALL_RECORD,
  "Puntos": StatDescription.PUNTOS,
  "Rank": StatDescription.RANK
});

enum StatDisplayName {
  PARTIDOS_JUGADOS,
  PUNTOS,
  RANK,
  DIFERENCIA_DE_PUNTOS,
  OVERALL
}

final statDisplayNameValues = EnumValues({
  "Diferencia de puntos": StatDisplayName.DIFERENCIA_DE_PUNTOS,
  "Overall": StatDisplayName.OVERALL,
  "Partidos jugados": StatDisplayName.PARTIDOS_JUGADOS,
  "Puntos": StatDisplayName.PUNTOS,
  "Rank": StatDisplayName.RANK
});

enum StatName { GAMES_PLAYED, POINTS, RANK, POINT_DIFFERENTIAL, TOTAL }

final statNameValues = EnumValues({
  "gamesPlayed": StatName.GAMES_PLAYED,
  "points": StatName.POINTS,
  "pointDifferential": StatName.POINT_DIFFERENTIAL,
  "rank": StatName.RANK,
  "Total": StatName.TOTAL
});

enum ShortDisplayName { J, PTS, RANK, DIF, OVER }

final shortDisplayNameValues = EnumValues({
  "DIF": ShortDisplayName.DIF,
  "J": ShortDisplayName.J,
  "OVER": ShortDisplayName.OVER,
  "PTS": ShortDisplayName.PTS,
  "Rank": ShortDisplayName.RANK
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
