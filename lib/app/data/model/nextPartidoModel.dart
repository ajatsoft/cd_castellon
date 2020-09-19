// To parse this JSON data, do
//
//     final nextPartido = nextPartidoFromJson(jsonString);

import 'dart:convert';

NextPartido nextPartidoFromJson(String str) =>
    NextPartido.fromJson(json.decode(str));

String nextPartidoToJson(NextPartido data) => json.encode(data.toJson());

class NextPartido {
  NextPartido({
    this.miniFeedParams,
    this.sportLabel,
    this.columns,
    this.newsAttributes,
    this.newsFeed,
    this.type,
    this.content,
    this.analytics,
    this.targeting,
    this.rightcolumnMd5Hash,
    this.root,
    this.middlecolumnMd5Hash,
    this.dtCpackages,
    this.newsFeedCount,
    this.oneFeedVersion,
    this.league,
    this.ctoPofItems,
    this.team,
    this.clubhouseSportId,
    this.newsFeedMd5Hash,
    this.clubhouseLeagueId,
    this.ads,
    this.leftcolumnMd5Hash,
    this.meta,
    this.md5Hash,
    this.nowFeedSupported,
    this.tier3Nav,
    this.clubhouse,
    this.sport,
  });

  String miniFeedParams;
  String sportLabel;
  List<ColumnL> columns;
  NewsAttributes newsAttributes;
  List<dynamic> newsFeed;
  String type;
  Content content;
  Analytics analytics;
  Targeting targeting;
  String rightcolumnMd5Hash;
  String root;
  String middlecolumnMd5Hash;
  DtCpackages dtCpackages;
  int newsFeedCount;
  String oneFeedVersion;
  String league;
  List<dynamic> ctoPofItems;
  Clubhouse team;
  String clubhouseSportId;
  String newsFeedMd5Hash;
  String clubhouseLeagueId;
  Ads ads;
  String leftcolumnMd5Hash;
  Meta meta;
  String md5Hash;
  bool nowFeedSupported;
  Tier3Nav tier3Nav;
  Clubhouse clubhouse;
  List<String> sport;

  factory NextPartido.fromJson(Map<String, dynamic> json) => NextPartido(
        miniFeedParams:
            json["miniFeedParams"] == null ? null : json["miniFeedParams"],
        sportLabel: json["sportLabel"] == null ? null : json["sportLabel"],
        columns: json["columns"] == null
            ? null
            : List<ColumnL>.from(
                json["columns"].map((x) => ColumnL.fromJson(x))),
        newsAttributes: json["newsAttributes"] == null
            ? null
            : NewsAttributes.fromJson(json["newsAttributes"]),
        newsFeed: json["newsFeed"] == null
            ? null
            : List<dynamic>.from(json["newsFeed"].map((x) => x)),
        type: json["type"] == null ? null : json["type"],
        content:
            json["content"] == null ? null : Content.fromJson(json["content"]),
        analytics: json["analytics"] == null
            ? null
            : Analytics.fromJson(json["analytics"]),
        targeting: json["targeting"] == null
            ? null
            : Targeting.fromJson(json["targeting"]),
        rightcolumnMd5Hash: json["rightcolumnMD5Hash"] == null
            ? null
            : json["rightcolumnMD5Hash"],
        root: json["root"] == null ? null : json["root"],
        middlecolumnMd5Hash: json["middlecolumnMD5Hash"] == null
            ? null
            : json["middlecolumnMD5Hash"],
        dtCpackages: json["DTCpackages"] == null
            ? null
            : DtCpackages.fromJson(json["DTCpackages"]),
        newsFeedCount:
            json["newsFeedCount"] == null ? null : json["newsFeedCount"],
        oneFeedVersion:
            json["oneFeedVersion"] == null ? null : json["oneFeedVersion"],
        league: json["league"] == null ? null : json["league"],
        ctoPofItems: json["ctoPofItems"] == null
            ? null
            : List<dynamic>.from(json["ctoPofItems"].map((x) => x)),
        team: json["team"] == null ? null : Clubhouse.fromJson(json["team"]),
        clubhouseSportId:
            json["clubhouseSportId"] == null ? null : json["clubhouseSportId"],
        newsFeedMd5Hash:
            json["newsFeedMD5Hash"] == null ? null : json["newsFeedMD5Hash"],
        clubhouseLeagueId: json["clubhouseLeagueId"] == null
            ? null
            : json["clubhouseLeagueId"],
        ads: json["ads"] == null ? null : Ads.fromJson(json["ads"]),
        leftcolumnMd5Hash: json["leftcolumnMD5Hash"] == null
            ? null
            : json["leftcolumnMD5Hash"],
        meta: json["meta"] == null ? null : Meta.fromJson(json["meta"]),
        md5Hash: json["MD5Hash"] == null ? null : json["MD5Hash"],
        nowFeedSupported:
            json["nowFeedSupported"] == null ? null : json["nowFeedSupported"],
        tier3Nav: json["tier3Nav"] == null
            ? null
            : Tier3Nav.fromJson(json["tier3Nav"]),
        clubhouse: json["clubhouse"] == null
            ? null
            : Clubhouse.fromJson(json["clubhouse"]),
        sport: json["sport"] == null
            ? null
            : List<String>.from(json["sport"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "miniFeedParams": miniFeedParams == null ? null : miniFeedParams,
        "sportLabel": sportLabel == null ? null : sportLabel,
        "columns": columns == null
            ? null
            : List<dynamic>.from(columns.map((x) => x.toJson())),
        "newsAttributes":
            newsAttributes == null ? null : newsAttributes.toJson(),
        "newsFeed": newsFeed == null
            ? null
            : List<dynamic>.from(newsFeed.map((x) => x)),
        "type": type == null ? null : type,
        "content": content == null ? null : content.toJson(),
        "analytics": analytics == null ? null : analytics.toJson(),
        "targeting": targeting == null ? null : targeting.toJson(),
        "rightcolumnMD5Hash":
            rightcolumnMd5Hash == null ? null : rightcolumnMd5Hash,
        "root": root == null ? null : root,
        "middlecolumnMD5Hash":
            middlecolumnMd5Hash == null ? null : middlecolumnMd5Hash,
        "DTCpackages": dtCpackages == null ? null : dtCpackages.toJson(),
        "newsFeedCount": newsFeedCount == null ? null : newsFeedCount,
        "oneFeedVersion": oneFeedVersion == null ? null : oneFeedVersion,
        "league": league == null ? null : league,
        "ctoPofItems": ctoPofItems == null
            ? null
            : List<dynamic>.from(ctoPofItems.map((x) => x)),
        "team": team == null ? null : team.toJson(),
        "clubhouseSportId": clubhouseSportId == null ? null : clubhouseSportId,
        "newsFeedMD5Hash": newsFeedMd5Hash == null ? null : newsFeedMd5Hash,
        "clubhouseLeagueId":
            clubhouseLeagueId == null ? null : clubhouseLeagueId,
        "ads": ads == null ? null : ads.toJson(),
        "leftcolumnMD5Hash":
            leftcolumnMd5Hash == null ? null : leftcolumnMd5Hash,
        "meta": meta == null ? null : meta.toJson(),
        "MD5Hash": md5Hash == null ? null : md5Hash,
        "nowFeedSupported": nowFeedSupported == null ? null : nowFeedSupported,
        "tier3Nav": tier3Nav == null ? null : tier3Nav.toJson(),
        "clubhouse": clubhouse == null ? null : clubhouse.toJson(),
        "sport": sport == null ? null : List<dynamic>.from(sport.map((x) => x)),
      };
}

class Ads {
  Ads({
    this.pageUrl,
    this.prebidAdConfig,
    this.level,
    this.sizesEspnPlus,
    this.delayInPageAdSlots,
    this.incontentPositions,
    this.showEspnPlusAds,
    this.kvpsEspnPlus,
    this.network,
    this.refreshOnBreakpointChange,
    this.webviewOverride,
    this.sizes,
    this.load,
    this.supportDynamicPageLoad,
    this.selector,
    this.whitelistEspnPlus,
    this.disabled,
    this.override,
    this.breakpoints,
    this.dynamicKeyValues,
    this.id,
    this.kvps,
    this.base,
  });

  String pageUrl;
  PrebidAdConfig prebidAdConfig;
  String level;
  SizesEspnPlus sizesEspnPlus;
  bool delayInPageAdSlots;
  IncontentPositions incontentPositions;
  bool showEspnPlusAds;
  List<Kvp> kvpsEspnPlus;
  String network;
  bool refreshOnBreakpointChange;
  WebviewOverride webviewOverride;
  Sizes sizes;
  Load load;
  bool supportDynamicPageLoad;
  String selector;
  List<String> whitelistEspnPlus;
  String disabled;
  Override override;
  Breakpoints breakpoints;
  DynamicKeyValues dynamicKeyValues;
  int id;
  List<Kvp> kvps;
  String base;

  factory Ads.fromJson(Map<String, dynamic> json) => Ads(
        pageUrl: json["page_url"] == null ? null : json["page_url"],
        prebidAdConfig: json["prebidAdConfig"] == null
            ? null
            : PrebidAdConfig.fromJson(json["prebidAdConfig"]),
        level: json["level"] == null ? null : json["level"],
        sizesEspnPlus: json["sizesEspnPlus"] == null
            ? null
            : SizesEspnPlus.fromJson(json["sizesEspnPlus"]),
        delayInPageAdSlots: json["delayInPageAdSlots"] == null
            ? null
            : json["delayInPageAdSlots"],
        incontentPositions: json["incontentPositions"] == null
            ? null
            : IncontentPositions.fromJson(json["incontentPositions"]),
        showEspnPlusAds:
            json["showEspnPlusAds"] == null ? null : json["showEspnPlusAds"],
        kvpsEspnPlus: json["kvpsEspnPlus"] == null
            ? null
            : List<Kvp>.from(json["kvpsEspnPlus"].map((x) => Kvp.fromJson(x))),
        network: json["network"] == null ? null : json["network"],
        refreshOnBreakpointChange: json["refreshOnBreakpointChange"] == null
            ? null
            : json["refreshOnBreakpointChange"],
        webviewOverride: json["webviewOverride"] == null
            ? null
            : WebviewOverride.fromJson(json["webviewOverride"]),
        sizes: json["sizes"] == null ? null : Sizes.fromJson(json["sizes"]),
        load: json["load"] == null ? null : Load.fromJson(json["load"]),
        supportDynamicPageLoad: json["supportDynamicPageLoad"] == null
            ? null
            : json["supportDynamicPageLoad"],
        selector: json["selector"] == null ? null : json["selector"],
        whitelistEspnPlus: json["whitelistEspnPlus"] == null
            ? null
            : List<String>.from(json["whitelistEspnPlus"].map((x) => x)),
        disabled: json["disabled"] == null ? null : json["disabled"],
        override: json["override"] == null
            ? null
            : Override.fromJson(json["override"]),
        breakpoints: json["breakpoints"] == null
            ? null
            : Breakpoints.fromJson(json["breakpoints"]),
        dynamicKeyValues: json["dynamicKeyValues"] == null
            ? null
            : DynamicKeyValues.fromJson(json["dynamicKeyValues"]),
        id: json["id"] == null ? null : json["id"],
        kvps: json["kvps"] == null
            ? null
            : List<Kvp>.from(json["kvps"].map((x) => Kvp.fromJson(x))),
        base: json["base"] == null ? null : json["base"],
      );

  Map<String, dynamic> toJson() => {
        "page_url": pageUrl == null ? null : pageUrl,
        "prebidAdConfig":
            prebidAdConfig == null ? null : prebidAdConfig.toJson(),
        "level": level == null ? null : level,
        "sizesEspnPlus": sizesEspnPlus == null ? null : sizesEspnPlus.toJson(),
        "delayInPageAdSlots":
            delayInPageAdSlots == null ? null : delayInPageAdSlots,
        "incontentPositions":
            incontentPositions == null ? null : incontentPositions.toJson(),
        "showEspnPlusAds": showEspnPlusAds == null ? null : showEspnPlusAds,
        "kvpsEspnPlus": kvpsEspnPlus == null
            ? null
            : List<dynamic>.from(kvpsEspnPlus.map((x) => x.toJson())),
        "network": network == null ? null : network,
        "refreshOnBreakpointChange": refreshOnBreakpointChange == null
            ? null
            : refreshOnBreakpointChange,
        "webviewOverride":
            webviewOverride == null ? null : webviewOverride.toJson(),
        "sizes": sizes == null ? null : sizes.toJson(),
        "load": load == null ? null : load.toJson(),
        "supportDynamicPageLoad":
            supportDynamicPageLoad == null ? null : supportDynamicPageLoad,
        "selector": selector == null ? null : selector,
        "whitelistEspnPlus": whitelistEspnPlus == null
            ? null
            : List<dynamic>.from(whitelistEspnPlus.map((x) => x)),
        "disabled": disabled == null ? null : disabled,
        "override": override == null ? null : override.toJson(),
        "breakpoints": breakpoints == null ? null : breakpoints.toJson(),
        "dynamicKeyValues":
            dynamicKeyValues == null ? null : dynamicKeyValues.toJson(),
        "id": id == null ? null : id,
        "kvps": kvps == null
            ? null
            : List<dynamic>.from(kvps.map((x) => x.toJson())),
        "base": base == null ? null : base,
      };
}

class Breakpoints {
  Breakpoints({
    this.s,
    this.xl,
    this.l,
    this.m,
  });

  List<int> s;
  List<int> xl;
  List<int> l;
  List<int> m;

  factory Breakpoints.fromJson(Map<String, dynamic> json) => Breakpoints(
        s: json["s"] == null ? null : List<int>.from(json["s"].map((x) => x)),
        xl: json["xl"] == null
            ? null
            : List<int>.from(json["xl"].map((x) => x)),
        l: json["l"] == null ? null : List<int>.from(json["l"].map((x) => x)),
        m: json["m"] == null ? null : List<int>.from(json["m"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "s": s == null ? null : List<dynamic>.from(s.map((x) => x)),
        "xl": xl == null ? null : List<dynamic>.from(xl.map((x) => x)),
        "l": l == null ? null : List<dynamic>.from(l.map((x) => x)),
        "m": m == null ? null : List<dynamic>.from(m.map((x) => x)),
      };
}

class DynamicKeyValues {
  DynamicKeyValues({
    this.profile,
  });

  Profile profile;

  factory DynamicKeyValues.fromJson(Map<String, dynamic> json) =>
      DynamicKeyValues(
        profile:
            json["profile"] == null ? null : Profile.fromJson(json["profile"]),
      );

  Map<String, dynamic> toJson() => {
        "profile": profile == null ? null : profile.toJson(),
      };
}

class Profile {
  Profile({
    this.key,
  });

  String key;

  factory Profile.fromJson(Map<String, dynamic> json) => Profile(
        key: json["key"] == null ? null : json["key"],
      );

  Map<String, dynamic> toJson() => {
        "key": key == null ? null : key,
      };
}

class IncontentPositions {
  IncontentPositions({
    this.defaults,
    this.index,
  });

  IncontentPositionsDefaults defaults;
  Index index;

  factory IncontentPositions.fromJson(Map<String, dynamic> json) =>
      IncontentPositions(
        defaults: json["defaults"] == null
            ? null
            : IncontentPositionsDefaults.fromJson(json["defaults"]),
        index: json["index"] == null ? null : Index.fromJson(json["index"]),
      );

  Map<String, dynamic> toJson() => {
        "defaults": defaults == null ? null : defaults.toJson(),
        "index": index == null ? null : index.toJson(),
      };
}

class IncontentPositionsDefaults {
  IncontentPositionsDefaults({
    this.favorites,
    this.news,
    this.now,
  });

  int favorites;
  int news;
  int now;

  factory IncontentPositionsDefaults.fromJson(Map<String, dynamic> json) =>
      IncontentPositionsDefaults(
        favorites: json["favorites"] == null ? null : json["favorites"],
        news: json["news"] == null ? null : json["news"],
        now: json["now"] == null ? null : json["now"],
      );

  Map<String, dynamic> toJson() => {
        "favorites": favorites == null ? null : favorites,
        "news": news == null ? null : news,
        "now": now == null ? null : now,
      };
}

class Index {
  Index({
    this.top,
    this.nfl,
  });

  Top top;
  Nfl nfl;

  factory Index.fromJson(Map<String, dynamic> json) => Index(
        top: json["top"] == null ? null : Top.fromJson(json["top"]),
        nfl: json["nfl"] == null ? null : Nfl.fromJson(json["nfl"]),
      );

  Map<String, dynamic> toJson() => {
        "top": top == null ? null : top.toJson(),
        "nfl": nfl == null ? null : nfl.toJson(),
      };
}

class Nfl {
  Nfl();

  factory Nfl.fromJson(Map<String, dynamic> json) => Nfl();

  Map<String, dynamic> toJson() => {};
}

class Top {
  Top({
    this.favorites,
  });

  int favorites;

  factory Top.fromJson(Map<String, dynamic> json) => Top(
        favorites: json["favorites"] == null ? null : json["favorites"],
      );

  Map<String, dynamic> toJson() => {
        "favorites": favorites == null ? null : favorites,
      };
}

class Kvp {
  Kvp({
    this.name,
    this.value,
  });

  String name;
  String value;

  factory Kvp.fromJson(Map<String, dynamic> json) => Kvp(
        name: json["name"] == null ? null : json["name"],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "value": value == null ? null : value,
      };
}

class Load {
  Load({
    this.schedule,
    this.frontpage,
    this.defaults,
    this.index,
    this.scoreboard,
    this.standings,
    this.story,
  });

  FrontpageClass schedule;
  FrontpageClass frontpage;
  FrontpageClass defaults;
  FrontpageClass index;
  FrontpageClass scoreboard;
  FrontpageClass standings;
  FrontpageClass story;

  factory Load.fromJson(Map<String, dynamic> json) => Load(
        schedule: json["schedule"] == null
            ? null
            : FrontpageClass.fromJson(json["schedule"]),
        frontpage: json["frontpage"] == null
            ? null
            : FrontpageClass.fromJson(json["frontpage"]),
        defaults: json["defaults"] == null
            ? null
            : FrontpageClass.fromJson(json["defaults"]),
        index: json["index"] == null
            ? null
            : FrontpageClass.fromJson(json["index"]),
        scoreboard: json["scoreboard"] == null
            ? null
            : FrontpageClass.fromJson(json["scoreboard"]),
        standings: json["standings"] == null
            ? null
            : FrontpageClass.fromJson(json["standings"]),
        story: json["story"] == null
            ? null
            : FrontpageClass.fromJson(json["story"]),
      );

  Map<String, dynamic> toJson() => {
        "schedule": schedule == null ? null : schedule.toJson(),
        "frontpage": frontpage == null ? null : frontpage.toJson(),
        "defaults": defaults == null ? null : defaults.toJson(),
        "index": index == null ? null : index.toJson(),
        "scoreboard": scoreboard == null ? null : scoreboard.toJson(),
        "standings": standings == null ? null : standings.toJson(),
        "story": story == null ? null : story.toJson(),
      };
}

class FrontpageClass {
  FrontpageClass({
    this.tablet,
    this.desktop,
    this.mobile,
  });

  String tablet;
  String desktop;
  String mobile;

  factory FrontpageClass.fromJson(Map<String, dynamic> json) => FrontpageClass(
        tablet: json["tablet"] == null ? null : json["tablet"],
        desktop: json["desktop"] == null ? null : json["desktop"],
        mobile: json["mobile"] == null ? null : json["mobile"],
      );

  Map<String, dynamic> toJson() => {
        "tablet": tablet == null ? null : tablet,
        "desktop": desktop == null ? null : desktop,
        "mobile": mobile == null ? null : mobile,
      };
}

class Override {
  Override({
    this.banner,
  });

  OverrideBanner banner;

  factory Override.fromJson(Map<String, dynamic> json) => Override(
        banner: json["banner"] == null
            ? null
            : OverrideBanner.fromJson(json["banner"]),
      );

  Map<String, dynamic> toJson() => {
        "banner": banner == null ? null : banner.toJson(),
      };
}

class OverrideBanner {
  OverrideBanner({
    this.preview,
    this.game,
    this.fightcenter,
    this.match,
    this.index,
    this.scoreboard,
    this.conversation,
    this.lineups,
  });

  String preview;
  String game;
  String fightcenter;
  String match;
  String index;
  String scoreboard;
  String conversation;
  String lineups;

  factory OverrideBanner.fromJson(Map<String, dynamic> json) => OverrideBanner(
        preview: json["preview"] == null ? null : json["preview"],
        game: json["game"] == null ? null : json["game"],
        fightcenter: json["fightcenter"] == null ? null : json["fightcenter"],
        match: json["match"] == null ? null : json["match"],
        index: json["index"] == null ? null : json["index"],
        scoreboard: json["scoreboard"] == null ? null : json["scoreboard"],
        conversation:
            json["conversation"] == null ? null : json["conversation"],
        lineups: json["lineups"] == null ? null : json["lineups"],
      );

  Map<String, dynamic> toJson() => {
        "preview": preview == null ? null : preview,
        "game": game == null ? null : game,
        "fightcenter": fightcenter == null ? null : fightcenter,
        "match": match == null ? null : match,
        "index": index == null ? null : index,
        "scoreboard": scoreboard == null ? null : scoreboard,
        "conversation": conversation == null ? null : conversation,
        "lineups": lineups == null ? null : lineups,
      };
}

class PrebidAdConfig {
  PrebidAdConfig({
    this.usePrebidBids,
    this.timeout,
  });

  bool usePrebidBids;
  int timeout;

  factory PrebidAdConfig.fromJson(Map<String, dynamic> json) => PrebidAdConfig(
        usePrebidBids:
            json["usePrebidBids"] == null ? null : json["usePrebidBids"],
        timeout: json["timeout"] == null ? null : json["timeout"],
      );

  Map<String, dynamic> toJson() => {
        "usePrebidBids": usePrebidBids == null ? null : usePrebidBids,
        "timeout": timeout == null ? null : timeout,
      };
}

class Sizes {
  Sizes({
    this.overlay,
    this.wallpaper,
    this.bannerScoreboard,
    this.incontent2,
    this.banner,
    this.exclusions,
    this.bannerIndex,
    this.bannerWebview,
    this.presby,
    this.presentedbylogo,
    this.native,
    this.incontentstrip,
    this.instream,
    this.incontentstrip2,
    this.incontent,
    this.midpage,
  });

  Exclusions overlay;
  Exclusions wallpaper;
  Banner bannerScoreboard;
  Exclusions incontent2;
  SizesBanner banner;
  Exclusions exclusions;
  Banner bannerIndex;
  Banner bannerWebview;
  Exclusions presby;
  Exclusions presentedbylogo;
  Native native;
  Incontentstrip incontentstrip;
  Exclusions instream;
  Exclusions incontentstrip2;
  Exclusions incontent;
  Exclusions midpage;

  factory Sizes.fromJson(Map<String, dynamic> json) => Sizes(
        overlay: json["overlay"] == null
            ? null
            : Exclusions.fromJson(json["overlay"]),
        wallpaper: json["wallpaper"] == null
            ? null
            : Exclusions.fromJson(json["wallpaper"]),
        bannerScoreboard: json["banner-scoreboard"] == null
            ? null
            : Banner.fromJson(json["banner-scoreboard"]),
        incontent2: json["incontent2"] == null
            ? null
            : Exclusions.fromJson(json["incontent2"]),
        banner: json["banner"] == null
            ? null
            : SizesBanner.fromJson(json["banner"]),
        exclusions: json["exclusions"] == null
            ? null
            : Exclusions.fromJson(json["exclusions"]),
        bannerIndex: json["banner-index"] == null
            ? null
            : Banner.fromJson(json["banner-index"]),
        bannerWebview: json["banner-webview"] == null
            ? null
            : Banner.fromJson(json["banner-webview"]),
        presby:
            json["presby"] == null ? null : Exclusions.fromJson(json["presby"]),
        presentedbylogo: json["presentedbylogo"] == null
            ? null
            : Exclusions.fromJson(json["presentedbylogo"]),
        native: json["native"] == null ? null : Native.fromJson(json["native"]),
        incontentstrip: json["incontentstrip"] == null
            ? null
            : Incontentstrip.fromJson(json["incontentstrip"]),
        instream: json["instream"] == null
            ? null
            : Exclusions.fromJson(json["instream"]),
        incontentstrip2: json["incontentstrip2"] == null
            ? null
            : Exclusions.fromJson(json["incontentstrip2"]),
        incontent: json["incontent"] == null
            ? null
            : Exclusions.fromJson(json["incontent"]),
        midpage: json["midpage"] == null
            ? null
            : Exclusions.fromJson(json["midpage"]),
      );

  Map<String, dynamic> toJson() => {
        "overlay": overlay == null ? null : overlay.toJson(),
        "wallpaper": wallpaper == null ? null : wallpaper.toJson(),
        "banner-scoreboard":
            bannerScoreboard == null ? null : bannerScoreboard.toJson(),
        "incontent2": incontent2 == null ? null : incontent2.toJson(),
        "banner": banner == null ? null : banner.toJson(),
        "exclusions": exclusions == null ? null : exclusions.toJson(),
        "banner-index": bannerIndex == null ? null : bannerIndex.toJson(),
        "banner-webview": bannerWebview == null ? null : bannerWebview.toJson(),
        "presby": presby == null ? null : presby.toJson(),
        "presentedbylogo":
            presentedbylogo == null ? null : presentedbylogo.toJson(),
        "native": native == null ? null : native.toJson(),
        "incontentstrip":
            incontentstrip == null ? null : incontentstrip.toJson(),
        "instream": instream == null ? null : instream.toJson(),
        "incontentstrip2":
            incontentstrip2 == null ? null : incontentstrip2.toJson(),
        "incontent": incontent == null ? null : incontent.toJson(),
        "midpage": midpage == null ? null : midpage.toJson(),
      };
}

class SizesBanner {
  SizesBanner({
    this.mappings,
    this.defaultSize,
    this.pbjs,
  });

  List<BannerMapping> mappings;
  List<int> defaultSize;
  Pbjs pbjs;

  factory SizesBanner.fromJson(Map<String, dynamic> json) => SizesBanner(
        mappings: json["mappings"] == null
            ? null
            : List<BannerMapping>.from(
                json["mappings"].map((x) => BannerMapping.fromJson(x))),
        defaultSize: json["defaultSize"] == null
            ? null
            : List<int>.from(json["defaultSize"].map((x) => x)),
        pbjs: json["pbjs"] == null ? null : Pbjs.fromJson(json["pbjs"]),
      );

  Map<String, dynamic> toJson() => {
        "mappings": mappings == null
            ? null
            : List<dynamic>.from(mappings.map((x) => x.toJson())),
        "defaultSize": defaultSize == null
            ? null
            : List<dynamic>.from(defaultSize.map((x) => x)),
        "pbjs": pbjs == null ? null : pbjs.toJson(),
      };
}

class BannerMapping {
  BannerMapping({
    this.viewport,
    this.slot,
  });

  List<int> viewport;
  List<List<int>> slot;

  factory BannerMapping.fromJson(Map<String, dynamic> json) => BannerMapping(
        viewport: json["viewport"] == null
            ? null
            : List<int>.from(json["viewport"].map((x) => x)),
        slot: json["slot"] == null
            ? null
            : List<List<int>>.from(
                json["slot"].map((x) => List<int>.from(x.map((x) => x)))),
      );

  Map<String, dynamic> toJson() => {
        "viewport": viewport == null
            ? null
            : List<dynamic>.from(viewport.map((x) => x)),
        "slot": slot == null
            ? null
            : List<dynamic>.from(
                slot.map((x) => List<dynamic>.from(x.map((x) => x)))),
      };
}

class Pbjs {
  Pbjs({
    this.s,
    this.xl,
    this.l,
    this.m,
  });

  List<List<int>> s;
  List<List<int>> xl;
  List<List<int>> l;
  List<List<int>> m;

  factory Pbjs.fromJson(Map<String, dynamic> json) => Pbjs(
        s: json["s"] == null
            ? null
            : List<List<int>>.from(
                json["s"].map((x) => List<int>.from(x.map((x) => x)))),
        xl: json["xl"] == null
            ? null
            : List<List<int>>.from(
                json["xl"].map((x) => List<int>.from(x.map((x) => x)))),
        l: json["l"] == null
            ? null
            : List<List<int>>.from(
                json["l"].map((x) => List<int>.from(x.map((x) => x)))),
        m: json["m"] == null
            ? null
            : List<List<int>>.from(
                json["m"].map((x) => List<int>.from(x.map((x) => x)))),
      );

  Map<String, dynamic> toJson() => {
        "s": s == null
            ? null
            : List<dynamic>.from(
                s.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "xl": xl == null
            ? null
            : List<dynamic>.from(
                xl.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "l": l == null
            ? null
            : List<dynamic>.from(
                l.map((x) => List<dynamic>.from(x.map((x) => x)))),
        "m": m == null
            ? null
            : List<dynamic>.from(
                m.map((x) => List<dynamic>.from(x.map((x) => x)))),
      };
}

class Banner {
  Banner({
    this.excludedSize,
    this.mappings,
    this.defaultSize,
    this.excludedProfile,
    this.includedCountries,
    this.pbjs,
  });

  List<String> excludedSize;
  List<BannerMapping> mappings;
  List<int> defaultSize;
  List<String> excludedProfile;
  List<String> includedCountries;
  Pbjs pbjs;

  factory Banner.fromJson(Map<String, dynamic> json) => Banner(
        excludedSize: json["excludedSize"] == null
            ? null
            : List<String>.from(json["excludedSize"].map((x) => x)),
        mappings: json["mappings"] == null
            ? null
            : List<BannerMapping>.from(
                json["mappings"].map((x) => BannerMapping.fromJson(x))),
        defaultSize: json["defaultSize"] == null
            ? null
            : List<int>.from(json["defaultSize"].map((x) => x)),
        excludedProfile: json["excludedProfile"] == null
            ? null
            : List<String>.from(json["excludedProfile"].map((x) => x)),
        includedCountries: json["includedCountries"] == null
            ? null
            : List<String>.from(json["includedCountries"].map((x) => x)),
        pbjs: json["pbjs"] == null ? null : Pbjs.fromJson(json["pbjs"]),
      );

  Map<String, dynamic> toJson() => {
        "excludedSize": excludedSize == null
            ? null
            : List<dynamic>.from(excludedSize.map((x) => x)),
        "mappings": mappings == null
            ? null
            : List<dynamic>.from(mappings.map((x) => x.toJson())),
        "defaultSize": defaultSize == null
            ? null
            : List<dynamic>.from(defaultSize.map((x) => x)),
        "excludedProfile": excludedProfile == null
            ? null
            : List<dynamic>.from(excludedProfile.map((x) => x)),
        "includedCountries": includedCountries == null
            ? null
            : List<dynamic>.from(includedCountries.map((x) => x)),
        "pbjs": pbjs == null ? null : pbjs.toJson(),
      };
}

class Exclusions {
  Exclusions({
    this.mappings,
    this.defaultSize,
  });

  List<BannerMapping> mappings;
  List<int> defaultSize;

  factory Exclusions.fromJson(Map<String, dynamic> json) => Exclusions(
        mappings: json["mappings"] == null
            ? null
            : List<BannerMapping>.from(
                json["mappings"].map((x) => BannerMapping.fromJson(x))),
        defaultSize: json["defaultSize"] == null
            ? null
            : List<int>.from(json["defaultSize"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "mappings": mappings == null
            ? null
            : List<dynamic>.from(mappings.map((x) => x.toJson())),
        "defaultSize": defaultSize == null
            ? null
            : List<dynamic>.from(defaultSize.map((x) => x)),
      };
}

class Incontentstrip {
  Incontentstrip({
    this.mappings,
    this.defaultSize,
  });

  List<IncontentstripMapping> mappings;
  List<int> defaultSize;

  factory Incontentstrip.fromJson(Map<String, dynamic> json) => Incontentstrip(
        mappings: json["mappings"] == null
            ? null
            : List<IncontentstripMapping>.from(
                json["mappings"].map((x) => IncontentstripMapping.fromJson(x))),
        defaultSize: json["defaultSize"] == null
            ? null
            : List<int>.from(json["defaultSize"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "mappings": mappings == null
            ? null
            : List<dynamic>.from(mappings.map((x) => x.toJson())),
        "defaultSize": defaultSize == null
            ? null
            : List<dynamic>.from(defaultSize.map((x) => x)),
      };
}

class IncontentstripMapping {
  IncontentstripMapping({
    this.viewport,
    this.slot,
  });

  List<int> viewport;
  List<int> slot;

  factory IncontentstripMapping.fromJson(Map<String, dynamic> json) =>
      IncontentstripMapping(
        viewport: json["viewport"] == null
            ? null
            : List<int>.from(json["viewport"].map((x) => x)),
        slot: json["slot"] == null
            ? null
            : List<int>.from(json["slot"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "viewport": viewport == null
            ? null
            : List<dynamic>.from(viewport.map((x) => x)),
        "slot": slot == null ? null : List<dynamic>.from(slot.map((x) => x)),
      };
}

class Native {
  Native({
    this.mappings,
    this.defaultSize,
  });

  List<NativeMapping> mappings;
  String defaultSize;

  factory Native.fromJson(Map<String, dynamic> json) => Native(
        mappings: json["mappings"] == null
            ? null
            : List<NativeMapping>.from(
                json["mappings"].map((x) => NativeMapping.fromJson(x))),
        defaultSize: json["defaultSize"] == null ? null : json["defaultSize"],
      );

  Map<String, dynamic> toJson() => {
        "mappings": mappings == null
            ? null
            : List<dynamic>.from(mappings.map((x) => x.toJson())),
        "defaultSize": defaultSize == null ? null : defaultSize,
      };
}

class NativeMapping {
  NativeMapping({
    this.viewport,
    this.slot,
  });

  List<int> viewport;
  List<String> slot;

  factory NativeMapping.fromJson(Map<String, dynamic> json) => NativeMapping(
        viewport: json["viewport"] == null
            ? null
            : List<int>.from(json["viewport"].map((x) => x)),
        slot: json["slot"] == null
            ? null
            : List<String>.from(json["slot"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "viewport": viewport == null
            ? null
            : List<dynamic>.from(viewport.map((x) => x)),
        "slot": slot == null ? null : List<dynamic>.from(slot.map((x) => x)),
      };
}

class SizesEspnPlus {
  SizesEspnPlus({
    this.bannerIndex,
    this.bannerScoreboard,
    this.banner,
    this.incontent,
  });

  Banner bannerIndex;
  Banner bannerScoreboard;
  SizesBanner banner;
  Exclusions incontent;

  factory SizesEspnPlus.fromJson(Map<String, dynamic> json) => SizesEspnPlus(
        bannerIndex: json["banner-index"] == null
            ? null
            : Banner.fromJson(json["banner-index"]),
        bannerScoreboard: json["banner-scoreboard"] == null
            ? null
            : Banner.fromJson(json["banner-scoreboard"]),
        banner: json["banner"] == null
            ? null
            : SizesBanner.fromJson(json["banner"]),
        incontent: json["incontent"] == null
            ? null
            : Exclusions.fromJson(json["incontent"]),
      );

  Map<String, dynamic> toJson() => {
        "banner-index": bannerIndex == null ? null : bannerIndex.toJson(),
        "banner-scoreboard":
            bannerScoreboard == null ? null : bannerScoreboard.toJson(),
        "banner": banner == null ? null : banner.toJson(),
        "incontent": incontent == null ? null : incontent.toJson(),
      };
}

class WebviewOverride {
  WebviewOverride({
    this.banner,
  });

  WebviewOverrideBanner banner;

  factory WebviewOverride.fromJson(Map<String, dynamic> json) =>
      WebviewOverride(
        banner: json["banner"] == null
            ? null
            : WebviewOverrideBanner.fromJson(json["banner"]),
      );

  Map<String, dynamic> toJson() => {
        "banner": banner == null ? null : banner.toJson(),
      };
}

class WebviewOverrideBanner {
  WebviewOverrideBanner({
    this.mlbStats,
    this.roster,
    this.cfbRankings,
    this.teamStats,
    this.nbaStats,
    this.ncaawRankings,
    this.nflStats,
    this.standings,
    this.cfbStats,
    this.ncbRankings,
  });

  String mlbStats;
  String roster;
  String cfbRankings;
  String teamStats;
  String nbaStats;
  String ncaawRankings;
  String nflStats;
  String standings;
  String cfbStats;
  String ncbRankings;

  factory WebviewOverrideBanner.fromJson(Map<String, dynamic> json) =>
      WebviewOverrideBanner(
        mlbStats: json["mlb/stats"] == null ? null : json["mlb/stats"],
        roster: json["roster"] == null ? null : json["roster"],
        cfbRankings: json["cfb/rankings"] == null ? null : json["cfb/rankings"],
        teamStats: json["team/stats"] == null ? null : json["team/stats"],
        nbaStats: json["nba/stats"] == null ? null : json["nba/stats"],
        ncaawRankings:
            json["ncaaw/rankings"] == null ? null : json["ncaaw/rankings"],
        nflStats: json["nfl/stats"] == null ? null : json["nfl/stats"],
        standings: json["standings"] == null ? null : json["standings"],
        cfbStats: json["cfb/stats"] == null ? null : json["cfb/stats"],
        ncbRankings: json["ncb/rankings"] == null ? null : json["ncb/rankings"],
      );

  Map<String, dynamic> toJson() => {
        "mlb/stats": mlbStats == null ? null : mlbStats,
        "roster": roster == null ? null : roster,
        "cfb/rankings": cfbRankings == null ? null : cfbRankings,
        "team/stats": teamStats == null ? null : teamStats,
        "nba/stats": nbaStats == null ? null : nbaStats,
        "ncaaw/rankings": ncaawRankings == null ? null : ncaawRankings,
        "nfl/stats": nflStats == null ? null : nflStats,
        "standings": standings == null ? null : standings,
        "cfb/stats": cfbStats == null ? null : cfbStats,
        "ncb/rankings": ncbRankings == null ? null : ncbRankings,
      };
}

class Analytics {
  Analytics({
    this.metrics,
    this.omniture,
    this.chartbeat,
    this.abTest,
    this.nielsen,
    this.device,
    this.isFeaturePhone,
    this.cto,
    this.qualtrics,
  });

  Metrics metrics;
  Omniture omniture;
  Chartbeat chartbeat;
  AbTest abTest;
  Nielsen nielsen;
  String device;
  bool isFeaturePhone;
  bool cto;
  bool qualtrics;

  factory Analytics.fromJson(Map<String, dynamic> json) => Analytics(
        metrics:
            json["metrics"] == null ? null : Metrics.fromJson(json["metrics"]),
        omniture: json["omniture"] == null
            ? null
            : Omniture.fromJson(json["omniture"]),
        chartbeat: json["chartbeat"] == null
            ? null
            : Chartbeat.fromJson(json["chartbeat"]),
        abTest: json["ABTest"] == null ? null : AbTest.fromJson(json["ABTest"]),
        nielsen:
            json["nielsen"] == null ? null : Nielsen.fromJson(json["nielsen"]),
        device: json["device"] == null ? null : json["device"],
        isFeaturePhone:
            json["isFeaturePhone"] == null ? null : json["isFeaturePhone"],
        cto: json["cto"] == null ? null : json["cto"],
        qualtrics: json["qualtrics"] == null ? null : json["qualtrics"],
      );

  Map<String, dynamic> toJson() => {
        "metrics": metrics == null ? null : metrics.toJson(),
        "omniture": omniture == null ? null : omniture.toJson(),
        "chartbeat": chartbeat == null ? null : chartbeat.toJson(),
        "ABTest": abTest == null ? null : abTest.toJson(),
        "nielsen": nielsen == null ? null : nielsen.toJson(),
        "device": device == null ? null : device,
        "isFeaturePhone": isFeaturePhone == null ? null : isFeaturePhone,
        "cto": cto == null ? null : cto,
        "qualtrics": qualtrics == null ? null : qualtrics,
      };
}

class AbTest {
  AbTest({
    this.domain,
    this.environment,
    this.host,
    this.target,
    this.optimizely,
    this.tScript,
    this.oScript,
    this.isTargeted,
    this.targetUrLs,
    this.optimizelyUrLs,
    this.raw,
  });

  String domain;
  String environment;
  String host;
  bool target;
  bool optimizely;
  String tScript;
  String oScript;
  bool isTargeted;
  List<TargetUrl> targetUrLs;
  List<dynamic> optimizelyUrLs;
  String raw;

  factory AbTest.fromJson(Map<String, dynamic> json) => AbTest(
        domain: json["domain"] == null ? null : json["domain"],
        environment: json["environment"] == null ? null : json["environment"],
        host: json["host"] == null ? null : json["host"],
        target: json["target"] == null ? null : json["target"],
        optimizely: json["optimizely"] == null ? null : json["optimizely"],
        tScript: json["tScript"] == null ? null : json["tScript"],
        oScript: json["oScript"] == null ? null : json["oScript"],
        isTargeted: json["isTargeted"] == null ? null : json["isTargeted"],
        targetUrLs: json["targetURLs"] == null
            ? null
            : List<TargetUrl>.from(
                json["targetURLs"].map((x) => TargetUrl.fromJson(x))),
        optimizelyUrLs: json["optimizelyURLs"] == null
            ? null
            : List<dynamic>.from(json["optimizelyURLs"].map((x) => x)),
        raw: json["raw"] == null ? null : json["raw"],
      );

  Map<String, dynamic> toJson() => {
        "domain": domain == null ? null : domain,
        "environment": environment == null ? null : environment,
        "host": host == null ? null : host,
        "target": target == null ? null : target,
        "optimizely": optimizely == null ? null : optimizely,
        "tScript": tScript == null ? null : tScript,
        "oScript": oScript == null ? null : oScript,
        "isTargeted": isTargeted == null ? null : isTargeted,
        "targetURLs": targetUrLs == null
            ? null
            : List<dynamic>.from(targetUrLs.map((x) => x.toJson())),
        "optimizelyURLs": optimizelyUrLs == null
            ? null
            : List<dynamic>.from(optimizelyUrLs.map((x) => x)),
        "raw": raw == null ? null : raw,
      };
}

class TargetUrl {
  TargetUrl({
    this.regexp,
    this.site,
    this.flag,
  });

  String regexp;
  String site;
  bool flag;

  factory TargetUrl.fromJson(Map<String, dynamic> json) => TargetUrl(
        regexp: json["regexp"] == null ? null : json["regexp"],
        site: json["site"] == null ? null : json["site"],
        flag: json["flag"] == null ? null : json["flag"],
      );

  Map<String, dynamic> toJson() => {
        "regexp": regexp == null ? null : regexp,
        "site": site == null ? null : site,
        "flag": flag == null ? null : flag,
      };
}

class Chartbeat {
  Chartbeat({
    this.domain,
    this.sections,
    this.authors,
    this.path,
    this.title,
    this.zone,
    this.loadPubJs,
    this.loadVidJs,
  });

  String domain;
  String sections;
  String authors;
  String path;
  String title;
  String zone;
  bool loadPubJs;
  bool loadVidJs;

  factory Chartbeat.fromJson(Map<String, dynamic> json) => Chartbeat(
        domain: json["domain"] == null ? null : json["domain"],
        sections: json["sections"] == null ? null : json["sections"],
        authors: json["authors"] == null ? null : json["authors"],
        path: json["path"] == null ? null : json["path"],
        title: json["title"] == null ? null : json["title"],
        zone: json["zone"] == null ? null : json["zone"],
        loadPubJs: json["loadPubJS"] == null ? null : json["loadPubJS"],
        loadVidJs: json["loadVidJS"] == null ? null : json["loadVidJS"],
      );

  Map<String, dynamic> toJson() => {
        "domain": domain == null ? null : domain,
        "sections": sections == null ? null : sections,
        "authors": authors == null ? null : authors,
        "path": path == null ? null : path,
        "title": title == null ? null : title,
        "zone": zone == null ? null : zone,
        "loadPubJS": loadPubJs == null ? null : loadPubJs,
        "loadVidJS": loadVidJs == null ? null : loadVidJs,
      };
}

class Metrics {
  Metrics({
    this.pageUrl,
    this.premium,
    this.contentType,
    this.pageInfrastructure,
    this.pageType,
    this.league,
    this.pageName,
    this.playerTeamDetail,
    this.section,
    this.sport,
  });

  String pageUrl;
  bool premium;
  String contentType;
  String pageInfrastructure;
  String pageType;
  String league;
  String pageName;
  String playerTeamDetail;
  String section;
  String sport;

  factory Metrics.fromJson(Map<String, dynamic> json) => Metrics(
        pageUrl: json["page_url"] == null ? null : json["page_url"],
        premium: json["premium"] == null ? null : json["premium"],
        contentType: json["content_type"] == null ? null : json["content_type"],
        pageInfrastructure: json["page_infrastructure"] == null
            ? null
            : json["page_infrastructure"],
        pageType: json["page_type"] == null ? null : json["page_type"],
        league: json["league"] == null ? null : json["league"],
        pageName: json["page_name"] == null ? null : json["page_name"],
        playerTeamDetail: json["player_team_detail"] == null
            ? null
            : json["player_team_detail"],
        section: json["section"] == null ? null : json["section"],
        sport: json["sport"] == null ? null : json["sport"],
      );

  Map<String, dynamic> toJson() => {
        "page_url": pageUrl == null ? null : pageUrl,
        "premium": premium == null ? null : premium,
        "content_type": contentType == null ? null : contentType,
        "page_infrastructure":
            pageInfrastructure == null ? null : pageInfrastructure,
        "page_type": pageType == null ? null : pageType,
        "league": league == null ? null : league,
        "page_name": pageName == null ? null : pageName,
        "player_team_detail":
            playerTeamDetail == null ? null : playerTeamDetail,
        "section": section == null ? null : section,
        "sport": sport == null ? null : sport,
      };
}

class Nielsen {
  Nielsen({
    this.espnuk,
    this.espnau,
    this.espn,
    this.fantasy,
    this.espndeportes,
    this.espnfc,
    this.espnww,
    this.general,
    this.espnza,
    this.espnin,
    this.watchespn,
    this.cricinfo,
    this.espnbr,
  });

  Cricinfo espnuk;
  Cricinfo espnau;
  Cricinfo espn;
  Cricinfo fantasy;
  Cricinfo espndeportes;
  Cricinfo espnfc;
  Cricinfo espnww;
  General general;
  Cricinfo espnza;
  Cricinfo espnin;
  Cricinfo watchespn;
  Cricinfo cricinfo;
  Cricinfo espnbr;

  factory Nielsen.fromJson(Map<String, dynamic> json) => Nielsen(
        espnuk:
            json["espnuk"] == null ? null : Cricinfo.fromJson(json["espnuk"]),
        espnau:
            json["espnau"] == null ? null : Cricinfo.fromJson(json["espnau"]),
        espn: json["espn"] == null ? null : Cricinfo.fromJson(json["espn"]),
        fantasy:
            json["fantasy"] == null ? null : Cricinfo.fromJson(json["fantasy"]),
        espndeportes: json["espndeportes"] == null
            ? null
            : Cricinfo.fromJson(json["espndeportes"]),
        espnfc:
            json["espnfc"] == null ? null : Cricinfo.fromJson(json["espnfc"]),
        espnww:
            json["espnww"] == null ? null : Cricinfo.fromJson(json["espnww"]),
        general:
            json["general"] == null ? null : General.fromJson(json["general"]),
        espnza:
            json["espnza"] == null ? null : Cricinfo.fromJson(json["espnza"]),
        espnin:
            json["espnin"] == null ? null : Cricinfo.fromJson(json["espnin"]),
        watchespn: json["watchespn"] == null
            ? null
            : Cricinfo.fromJson(json["watchespn"]),
        cricinfo: json["cricinfo"] == null
            ? null
            : Cricinfo.fromJson(json["cricinfo"]),
        espnbr:
            json["espnbr"] == null ? null : Cricinfo.fromJson(json["espnbr"]),
      );

  Map<String, dynamic> toJson() => {
        "espnuk": espnuk == null ? null : espnuk.toJson(),
        "espnau": espnau == null ? null : espnau.toJson(),
        "espn": espn == null ? null : espn.toJson(),
        "fantasy": fantasy == null ? null : fantasy.toJson(),
        "espndeportes": espndeportes == null ? null : espndeportes.toJson(),
        "espnfc": espnfc == null ? null : espnfc.toJson(),
        "espnww": espnww == null ? null : espnww.toJson(),
        "general": general == null ? null : general.toJson(),
        "espnza": espnza == null ? null : espnza.toJson(),
        "espnin": espnin == null ? null : espnin.toJson(),
        "watchespn": watchespn == null ? null : watchespn.toJson(),
        "cricinfo": cricinfo == null ? null : cricinfo.toJson(),
        "espnbr": espnbr == null ? null : espnbr.toJson(),
      };
}

class Cricinfo {
  Cricinfo({
    this.apid,
    this.vc,
  });

  String apid;
  String vc;

  factory Cricinfo.fromJson(Map<String, dynamic> json) => Cricinfo(
        apid: json["apid"] == null ? null : json["apid"],
        vc: json["vc"] == null ? null : json["vc"],
      );

  Map<String, dynamic> toJson() => {
        "apid": apid == null ? null : apid,
        "vc": vc == null ? null : vc,
      };
}

class General {
  General({
    this.ci,
    this.assetid,
    this.segB,
    this.sfcode,
    this.segA,
    this.section,
    this.segC,
    this.apn,
  });

  String ci;
  String assetid;
  String segB;
  String sfcode;
  String segA;
  String section;
  String segC;
  String apn;

  factory General.fromJson(Map<String, dynamic> json) => General(
        ci: json["ci"] == null ? null : json["ci"],
        assetid: json["assetid"] == null ? null : json["assetid"],
        segB: json["segB"] == null ? null : json["segB"],
        sfcode: json["sfcode"] == null ? null : json["sfcode"],
        segA: json["segA"] == null ? null : json["segA"],
        section: json["section"] == null ? null : json["section"],
        segC: json["segC"] == null ? null : json["segC"],
        apn: json["apn"] == null ? null : json["apn"],
      );

  Map<String, dynamic> toJson() => {
        "ci": ci == null ? null : ci,
        "assetid": assetid == null ? null : assetid,
        "segB": segB == null ? null : segB,
        "sfcode": sfcode == null ? null : sfcode,
        "segA": segA == null ? null : segA,
        "section": section == null ? null : section,
        "segC": segC == null ? null : segC,
        "apn": apn == null ? null : apn,
      };
}

class Omniture {
  Omniture({
    this.league,
    this.countryRegion,
    this.hier1,
    this.section,
    this.pageName,
    this.sportsInfo,
    this.sections,
    this.site,
    this.premium,
    this.convrSport,
    this.pageUrl,
    this.lang,
    this.contentType,
    this.sport,
    this.account,
    this.siteType,
    this.prop58,
  });

  String league;
  String countryRegion;
  String hier1;
  String section;
  String pageName;
  String sportsInfo;
  String sections;
  String site;
  String premium;
  String convrSport;
  String pageUrl;
  String lang;
  String contentType;
  String sport;
  String account;
  String siteType;
  String prop58;

  factory Omniture.fromJson(Map<String, dynamic> json) => Omniture(
        league: json["league"] == null ? null : json["league"],
        countryRegion:
            json["countryRegion"] == null ? null : json["countryRegion"],
        hier1: json["hier1"] == null ? null : json["hier1"],
        section: json["section"] == null ? null : json["section"],
        pageName: json["pageName"] == null ? null : json["pageName"],
        sportsInfo: json["sportsInfo"] == null ? null : json["sportsInfo"],
        sections: json["sections"] == null ? null : json["sections"],
        site: json["site"] == null ? null : json["site"],
        premium: json["premium"] == null ? null : json["premium"],
        convrSport: json["convrSport"] == null ? null : json["convrSport"],
        pageUrl: json["pageURL"] == null ? null : json["pageURL"],
        lang: json["lang"] == null ? null : json["lang"],
        contentType: json["contentType"] == null ? null : json["contentType"],
        sport: json["sport"] == null ? null : json["sport"],
        account: json["account"] == null ? null : json["account"],
        siteType: json["siteType"] == null ? null : json["siteType"],
        prop58: json["prop58"] == null ? null : json["prop58"],
      );

  Map<String, dynamic> toJson() => {
        "league": league == null ? null : league,
        "countryRegion": countryRegion == null ? null : countryRegion,
        "hier1": hier1 == null ? null : hier1,
        "section": section == null ? null : section,
        "pageName": pageName == null ? null : pageName,
        "sportsInfo": sportsInfo == null ? null : sportsInfo,
        "sections": sections == null ? null : sections,
        "site": site == null ? null : site,
        "premium": premium == null ? null : premium,
        "convrSport": convrSport == null ? null : convrSport,
        "pageURL": pageUrl == null ? null : pageUrl,
        "lang": lang == null ? null : lang,
        "contentType": contentType == null ? null : contentType,
        "sport": sport == null ? null : sport,
        "account": account == null ? null : account,
        "siteType": siteType == null ? null : siteType,
        "prop58": prop58 == null ? null : prop58,
      };
}

class Clubhouse {
  Clubhouse({
    this.recordSummary,
    this.resultsLink,
    this.color,
    this.standingSummary,
    this.displayName,
    this.seasonSummary,
    this.name,
    this.location,
    this.id,
    this.abbreviation,
    this.slug,
    this.isNational,
  });

  String recordSummary;
  String resultsLink;
  String color;
  String standingSummary;
  String displayName;
  String seasonSummary;
  String name;
  String location;
  String id;
  String abbreviation;
  String slug;
  bool isNational;

  factory Clubhouse.fromJson(Map<String, dynamic> json) => Clubhouse(
        recordSummary:
            json["recordSummary"] == null ? null : json["recordSummary"],
        resultsLink: json["resultsLink"] == null ? null : json["resultsLink"],
        color: json["color"] == null ? null : json["color"],
        standingSummary:
            json["standingSummary"] == null ? null : json["standingSummary"],
        displayName: json["displayName"] == null ? null : json["displayName"],
        seasonSummary:
            json["seasonSummary"] == null ? null : json["seasonSummary"],
        name: json["name"] == null ? null : json["name"],
        location: json["location"] == null ? null : json["location"],
        id: json["id"] == null ? null : json["id"],
        abbreviation:
            json["abbreviation"] == null ? null : json["abbreviation"],
        slug: json["slug"] == null ? null : json["slug"],
        isNational: json["isNational"] == null ? null : json["isNational"],
      );

  Map<String, dynamic> toJson() => {
        "recordSummary": recordSummary == null ? null : recordSummary,
        "resultsLink": resultsLink == null ? null : resultsLink,
        "color": color == null ? null : color,
        "standingSummary": standingSummary == null ? null : standingSummary,
        "displayName": displayName == null ? null : displayName,
        "seasonSummary": seasonSummary == null ? null : seasonSummary,
        "name": name == null ? null : name,
        "location": location == null ? null : location,
        "id": id == null ? null : id,
        "abbreviation": abbreviation == null ? null : abbreviation,
        "slug": slug == null ? null : slug,
        "isNational": isNational == null ? null : isNational,
      };
}

class ColumnL {
  ColumnL({
    this.name,
    this.description,
    this.items,
  });

  String name;
  String description;
  List<ColumnItem> items;

  factory ColumnL.fromJson(Map<String, dynamic> json) => ColumnL(
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        items: json["items"] == null
            ? null
            : List<ColumnItem>.from(
                json["items"].map((x) => ColumnItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class ColumnItem {
  ColumnItem({
    this.feed,
    this.moduleType,
    this.moduleTitle,
    this.type,
    this.seasonYear,
    this.resultsOffset,
    this.resultsCount,
    this.attributes,
    this.resultsLimit,
    this.league,
    this.seasonSummary,
  });

  List<Feed> feed;
  String moduleType;
  String moduleTitle;
  String type;
  int seasonYear;
  int resultsOffset;
  int resultsCount;
  String attributes;
  int resultsLimit;
  League league;
  String seasonSummary;

  factory ColumnItem.fromJson(Map<String, dynamic> json) => ColumnItem(
        feed: json["feed"] == null
            ? null
            : List<Feed>.from(json["feed"].map((x) => Feed.fromJson(x))),
        moduleType: json["moduleType"] == null ? null : json["moduleType"],
        moduleTitle: json["moduleTitle"] == null ? null : json["moduleTitle"],
        type: json["type"] == null ? null : json["type"],
        seasonYear: json["seasonYear"] == null ? null : json["seasonYear"],
        resultsOffset:
            json["resultsOffset"] == null ? null : json["resultsOffset"],
        resultsCount:
            json["resultsCount"] == null ? null : json["resultsCount"],
        attributes: json["attributes"] == null ? null : json["attributes"],
        resultsLimit:
            json["resultsLimit"] == null ? null : json["resultsLimit"],
        league: json["league"] == null ? null : League.fromJson(json["league"]),
        seasonSummary:
            json["seasonSummary"] == null ? null : json["seasonSummary"],
      );

  Map<String, dynamic> toJson() => {
        "feed": feed == null
            ? null
            : List<dynamic>.from(feed.map((x) => x.toJson())),
        "moduleType": moduleType == null ? null : moduleType,
        "moduleTitle": moduleTitle == null ? null : moduleTitle,
        "type": type == null ? null : type,
        "seasonYear": seasonYear == null ? null : seasonYear,
        "resultsOffset": resultsOffset == null ? null : resultsOffset,
        "resultsCount": resultsCount == null ? null : resultsCount,
        "attributes": attributes == null ? null : attributes,
        "resultsLimit": resultsLimit == null ? null : resultsLimit,
        "league": league == null ? null : league.toJson(),
        "seasonSummary": seasonSummary == null ? null : seasonSummary,
      };
}

class Feed {
  Feed({
    this.date,
    this.seasonType,
    this.opponentAbbreviation,
    this.homeScore,
    this.leagueAbbreviation,
    this.timeValid,
    this.link,
    this.onWatch,
    this.leagueName,
    this.homeAway,
    this.statusDescription,
    this.awayScore,
    this.id,
    this.shortName,
    this.neutralSite,
    this.opponentName,
    this.atVs,
    this.status,
    this.opponentLogo,
    this.shortDetail,
    this.score,
    this.entries,
    this.displayName,
    this.name,
    this.links,
    this.description,
    this.statCategories,
    this.statistics,
  });

  String date;
  int seasonType;
  String opponentAbbreviation;
  int homeScore;
  String leagueAbbreviation;
  bool timeValid;
  String link;
  bool onWatch;
  String leagueName;
  String homeAway;
  String statusDescription;
  int awayScore;
  String id;
  String shortName;
  bool neutralSite;
  String opponentName;
  String atVs;
  String status;
  String opponentLogo;
  String shortDetail;
  String score;
  List<Entry> entries;
  String displayName;
  String name;
  LinksElement links;
  String description;
  List<StatCategory> statCategories;
  List<FeedStatistic> statistics;

  factory Feed.fromJson(Map<String, dynamic> json) => Feed(
        date: json["date"] == null ? null : json["date"],
        seasonType: json["seasonType"] == null ? null : json["seasonType"],
        opponentAbbreviation: json["opponentAbbreviation"] == null
            ? null
            : json["opponentAbbreviation"],
        homeScore: json["homeScore"] == null ? null : json["homeScore"],
        leagueAbbreviation: json["leagueAbbreviation"] == null
            ? null
            : json["leagueAbbreviation"],
        timeValid: json["timeValid"] == null ? null : json["timeValid"],
        link: json["link"] == null ? null : json["link"],
        onWatch: json["onWatch"] == null ? null : json["onWatch"],
        leagueName: json["leagueName"] == null ? null : json["leagueName"],
        homeAway: json["homeAway"] == null ? null : json["homeAway"],
        statusDescription: json["statusDescription"] == null
            ? null
            : json["statusDescription"],
        awayScore: json["awayScore"] == null ? null : json["awayScore"],
        id: json["id"] == null ? null : json["id"].toString(),
        shortName: json["shortName"] == null ? null : json["shortName"],
        neutralSite: json["neutralSite"] == null ? null : json["neutralSite"],
        opponentName:
            json["opponentName"] == null ? null : json["opponentName"],
        atVs: json["atVs"] == null ? null : json["atVs"],
        status: json["status"] == null ? null : json["status"],
        opponentLogo:
            json["opponentLogo"] == null ? null : json["opponentLogo"],
        shortDetail: json["shortDetail"] == null ? null : json["shortDetail"],
        score: json["score"] == null ? null : json["score"],
        entries: json["entries"] == null
            ? null
            : List<Entry>.from(json["entries"].map((x) => Entry.fromJson(x))),
        displayName: json["displayName"] == null ? null : json["displayName"],
        name: json["name"] == null ? null : json["name"],
        links:
            json["links"] == null ? null : LinksElement.fromJson(json["links"]),
        description: json["description"] == null ? null : json["description"],
        statCategories: json["statCategories"] == null
            ? null
            : List<StatCategory>.from(
                json["statCategories"].map((x) => StatCategory.fromJson(x))),
        statistics: json["statistics"] == null
            ? null
            : List<FeedStatistic>.from(
                json["statistics"].map((x) => FeedStatistic.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "date": date == null ? null : date,
        "seasonType": seasonType == null ? null : seasonType,
        "opponentAbbreviation":
            opponentAbbreviation == null ? null : opponentAbbreviation,
        "homeScore": homeScore == null ? null : homeScore,
        "leagueAbbreviation":
            leagueAbbreviation == null ? null : leagueAbbreviation,
        "timeValid": timeValid == null ? null : timeValid,
        "link": link == null ? null : link,
        "onWatch": onWatch == null ? null : onWatch,
        "leagueName": leagueName == null ? null : leagueName,
        "homeAway": homeAway == null ? null : homeAway,
        "statusDescription":
            statusDescription == null ? null : statusDescription,
        "awayScore": awayScore == null ? null : awayScore,
        "id": id == null ? null : id,
        "shortName": shortName == null ? null : shortName,
        "neutralSite": neutralSite == null ? null : neutralSite,
        "opponentName": opponentName == null ? null : opponentName,
        "atVs": atVs == null ? null : atVs,
        "status": status == null ? null : status,
        "opponentLogo": opponentLogo == null ? null : opponentLogo,
        "shortDetail": shortDetail == null ? null : shortDetail,
        "score": score == null ? null : score,
        "entries": entries == null
            ? null
            : List<dynamic>.from(entries.map((x) => x.toJson())),
        "displayName": displayName == null ? null : displayName,
        "name": name == null ? null : name,
        "links": links == null ? null : links.toJson(),
        "description": description == null ? null : description,
        "statCategories": statCategories == null
            ? null
            : List<dynamic>.from(statCategories.map((x) => x.toJson())),
        "statistics": statistics == null
            ? null
            : List<dynamic>.from(statistics.map((x) => x.toJson())),
      };
}

class Entry {
  Entry({
    this.stats,
    this.team,
  });

  List<Stat> stats;
  EntryTeam team;

  factory Entry.fromJson(Map<String, dynamic> json) => Entry(
        stats: json["stats"] == null
            ? null
            : List<Stat>.from(json["stats"].map((x) => Stat.fromJson(x))),
        team: json["team"] == null ? null : EntryTeam.fromJson(json["team"]),
      );

  Map<String, dynamic> toJson() => {
        "stats": stats == null
            ? null
            : List<dynamic>.from(stats.map((x) => x.toJson())),
        "team": team == null ? null : team.toJson(),
      };
}

class Stat {
  Stat({
    this.displayValue,
    this.displayName,
    this.abbreviation,
    this.type,
    this.value,
  });

  String displayValue;
  DisplayName displayName;
  Abbreviation abbreviation;
  Type type;
  int value;

  factory Stat.fromJson(Map<String, dynamic> json) => Stat(
        displayValue:
            json["displayValue"] == null ? null : json["displayValue"],
        displayName: json["displayName"] == null
            ? null
            : displayNameValues.map[json["displayName"]],
        abbreviation: json["abbreviation"] == null
            ? null
            : abbreviationValues.map[json["abbreviation"]],
        type: json["type"] == null ? null : typeValues.map[json["type"]],
        value: json["value"] == null ? null : json["value"],
      );

  Map<String, dynamic> toJson() => {
        "displayValue": displayValue == null ? null : displayValue,
        "displayName":
            displayName == null ? null : displayNameValues.reverse[displayName],
        "abbreviation": abbreviation == null
            ? null
            : abbreviationValues.reverse[abbreviation],
        "type": type == null ? null : typeValues.reverse[type],
        "value": value == null ? null : value,
      };
}

enum Abbreviation { W, L, D, GP, F, A, P, RC, R, GD, PD, TOTAL }

final abbreviationValues = EnumValues({
  "A": Abbreviation.A,
  "D": Abbreviation.D,
  "F": Abbreviation.F,
  "GD": Abbreviation.GD,
  "GP": Abbreviation.GP,
  "L": Abbreviation.L,
  "P": Abbreviation.P,
  "PD": Abbreviation.PD,
  "R": Abbreviation.R,
  "RC": Abbreviation.RC,
  "Total": Abbreviation.TOTAL,
  "W": Abbreviation.W
});

enum DisplayName {
  WINS,
  LOSSES,
  DRAWS,
  GAMES_PLAYED,
  GOALS_FOR,
  GOALS_AGAINST,
  POINTS,
  RANK_CHANGE,
  RANK,
  GOAL_DIFFERENCE,
  POINT_DEDUCTIONS,
  OVERALL
}

final displayNameValues = EnumValues({
  "Draws": DisplayName.DRAWS,
  "Games Played": DisplayName.GAMES_PLAYED,
  "Goals Against": DisplayName.GOALS_AGAINST,
  "Goals For": DisplayName.GOALS_FOR,
  "Goal Difference": DisplayName.GOAL_DIFFERENCE,
  "Losses": DisplayName.LOSSES,
  "Overall": DisplayName.OVERALL,
  "Points": DisplayName.POINTS,
  "Point Deductions": DisplayName.POINT_DEDUCTIONS,
  "Rank": DisplayName.RANK,
  "Rank Change": DisplayName.RANK_CHANGE,
  "Wins": DisplayName.WINS
});

enum Type {
  WINS,
  LOSSES,
  TIES,
  GAMESPLAYED,
  POINTSFOR,
  POINTSAGAINST,
  POINTS,
  RANKCHANGE,
  RANK,
  POINTDIFFERENTIAL,
  DEDUCTIONS,
  TOTAL
}

final typeValues = EnumValues({
  "deductions": Type.DEDUCTIONS,
  "gamesplayed": Type.GAMESPLAYED,
  "losses": Type.LOSSES,
  "pointdifferential": Type.POINTDIFFERENTIAL,
  "points": Type.POINTS,
  "pointsagainst": Type.POINTSAGAINST,
  "pointsfor": Type.POINTSFOR,
  "rank": Type.RANK,
  "rankchange": Type.RANKCHANGE,
  "ties": Type.TIES,
  "total": Type.TOTAL,
  "wins": Type.WINS
});

class EntryTeam {
  EntryTeam({
    this.displayName,
    this.location,
    this.links,
    this.abbreviation,
  });

  String displayName;
  String location;
  List<TeamLink> links;
  String abbreviation;

  factory EntryTeam.fromJson(Map<String, dynamic> json) => EntryTeam(
        displayName: json["displayName"] == null ? null : json["displayName"],
        location: json["location"] == null ? null : json["location"],
        links: json["links"] == null
            ? null
            : List<TeamLink>.from(
                json["links"].map((x) => TeamLink.fromJson(x))),
        abbreviation:
            json["abbreviation"] == null ? null : json["abbreviation"],
      );

  Map<String, dynamic> toJson() => {
        "displayName": displayName == null ? null : displayName,
        "location": location == null ? null : location,
        "links": links == null
            ? null
            : List<dynamic>.from(links.map((x) => x.toJson())),
        "abbreviation": abbreviation == null ? null : abbreviation,
      };
}

class TeamLink {
  TeamLink({
    this.isExternal,
    this.shortText,
    this.rel,
    this.language,
    this.href,
    this.text,
    this.isPremium,
    this.attributes,
  });

  bool isExternal;
  String shortText;
  List<String> rel;
  Language language;
  String href;
  String text;
  bool isPremium;
  LinkAttributes attributes;

  factory TeamLink.fromJson(Map<String, dynamic> json) => TeamLink(
        isExternal: json["isExternal"] == null ? null : json["isExternal"],
        shortText: json["shortText"] == null ? null : json["shortText"],
        rel: json["rel"] == null
            ? null
            : List<String>.from(json["rel"].map((x) => x)),
        language: json["language"] == null
            ? null
            : languageValues.map[json["language"]],
        href: json["href"] == null ? null : json["href"],
        text: json["text"] == null ? null : json["text"],
        isPremium: json["isPremium"] == null ? null : json["isPremium"],
        attributes: json["attributes"] == null
            ? null
            : LinkAttributes.fromJson(json["attributes"]),
      );

  Map<String, dynamic> toJson() => {
        "isExternal": isExternal == null ? null : isExternal,
        "shortText": shortText == null ? null : shortText,
        "rel": rel == null ? null : List<dynamic>.from(rel.map((x) => x)),
        "language": language == null ? null : languageValues.reverse[language],
        "href": href == null ? null : href,
        "text": text == null ? null : text,
        "isPremium": isPremium == null ? null : isPremium,
        "attributes": attributes == null ? null : attributes.toJson(),
      };
}

class LinkAttributes {
  LinkAttributes({
    this.pagetype,
    this.page,
    this.icon,
  });

  String pagetype;
  String page;
  String icon;

  factory LinkAttributes.fromJson(Map<String, dynamic> json) => LinkAttributes(
        pagetype: json["pagetype"] == null ? null : json["pagetype"],
        page: json["page"] == null ? null : json["page"],
        icon: json["icon"] == null ? null : json["icon"],
      );

  Map<String, dynamic> toJson() => {
        "pagetype": pagetype == null ? null : pagetype,
        "page": page == null ? null : page,
        "icon": icon == null ? null : icon,
      };
}

enum Language { EN_US }

final languageValues = EnumValues({"en-US": Language.EN_US});

class LinksElement {
  LinksElement({
    this.href,
    this.text,
  });

  String href;
  String text;

  factory LinksElement.fromJson(Map<String, dynamic> json) => LinksElement(
        href: json["href"] == null ? null : json["href"],
        text: json["text"] == null ? null : json["text"],
      );

  Map<String, dynamic> toJson() => {
        "href": href == null ? null : href,
        "text": text == null ? null : text,
      };
}

class StatCategory {
  StatCategory({
    this.leaders,
  });

  List<Leader> leaders;

  factory StatCategory.fromJson(Map<String, dynamic> json) => StatCategory(
        leaders: json["leaders"] == null
            ? null
            : List<Leader>.from(json["leaders"].map((x) => Leader.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "leaders": leaders == null
            ? null
            : List<dynamic>.from(leaders.map((x) => x.toJson())),
      };
}

class Leader {
  Leader({
    this.displayValue,
    this.athlete,
    this.statistics,
  });

  String displayValue;
  Athlete athlete;
  List<LeaderStatistic> statistics;

  factory Leader.fromJson(Map<String, dynamic> json) => Leader(
        displayValue:
            json["displayValue"] == null ? null : json["displayValue"],
        athlete:
            json["athlete"] == null ? null : Athlete.fromJson(json["athlete"]),
        statistics: json["statistics"] == null
            ? null
            : List<LeaderStatistic>.from(
                json["statistics"].map((x) => LeaderStatistic.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "displayValue": displayValue == null ? null : displayValue,
        "athlete": athlete == null ? null : athlete.toJson(),
        "statistics": statistics == null
            ? null
            : List<dynamic>.from(statistics.map((x) => x.toJson())),
      };
}

class Athlete {
  Athlete({
    this.displayName,
    this.jersey,
    this.links,
    this.position,
  });

  String displayName;
  String jersey;
  List<LinksElement> links;
  Position position;

  factory Athlete.fromJson(Map<String, dynamic> json) => Athlete(
        displayName: json["displayName"] == null ? null : json["displayName"],
        jersey: json["jersey"] == null ? null : json["jersey"],
        links: json["links"] == null
            ? null
            : List<LinksElement>.from(
                json["links"].map((x) => LinksElement.fromJson(x))),
        position: json["position"] == null
            ? null
            : Position.fromJson(json["position"]),
      );

  Map<String, dynamic> toJson() => {
        "displayName": displayName == null ? null : displayName,
        "jersey": jersey == null ? null : jersey,
        "links": links == null
            ? null
            : List<dynamic>.from(links.map((x) => x.toJson())),
        "position": position == null ? null : position.toJson(),
      };
}

class Position {
  Position({
    this.displayName,
    this.name,
    this.abbreviation,
  });

  String displayName;
  String name;
  String abbreviation;

  factory Position.fromJson(Map<String, dynamic> json) => Position(
        displayName: json["displayName"] == null ? null : json["displayName"],
        name: json["name"] == null ? null : json["name"],
        abbreviation:
            json["abbreviation"] == null ? null : json["abbreviation"],
      );

  Map<String, dynamic> toJson() => {
        "displayName": displayName == null ? null : displayName,
        "name": name == null ? null : name,
        "abbreviation": abbreviation == null ? null : abbreviation,
      };
}

class LeaderStatistic {
  LeaderStatistic({
    this.shortDisplayName,
    this.displayValue,
  });

  ShortDisplayName shortDisplayName;
  String displayValue;

  factory LeaderStatistic.fromJson(Map<String, dynamic> json) =>
      LeaderStatistic(
        shortDisplayName: json["shortDisplayName"] == null
            ? null
            : shortDisplayNameValues.map[json["shortDisplayName"]],
        displayValue:
            json["displayValue"] == null ? null : json["displayValue"],
      );

  Map<String, dynamic> toJson() => {
        "shortDisplayName": shortDisplayName == null
            ? null
            : shortDisplayNameValues.reverse[shortDisplayName],
        "displayValue": displayValue == null ? null : displayValue,
      };
}

enum ShortDisplayName { MATCHES, ASSISTS, GOALS }

final shortDisplayNameValues = EnumValues({
  "Assists": ShortDisplayName.ASSISTS,
  "Goals": ShortDisplayName.GOALS,
  "Matches": ShortDisplayName.MATCHES
});

class FeedStatistic {
  FeedStatistic({
    this.displayValue,
    this.displayName,
    this.rankDisplayValue,
  });

  String displayValue;
  String displayName;
  String rankDisplayValue;

  factory FeedStatistic.fromJson(Map<String, dynamic> json) => FeedStatistic(
        displayValue:
            json["displayValue"] == null ? null : json["displayValue"],
        displayName: json["displayName"] == null ? null : json["displayName"],
        rankDisplayValue:
            json["rankDisplayValue"] == null ? null : json["rankDisplayValue"],
      );

  Map<String, dynamic> toJson() => {
        "displayValue": displayValue == null ? null : displayValue,
        "displayName": displayName == null ? null : displayName,
        "rankDisplayValue": rankDisplayValue == null ? null : rankDisplayValue,
      };
}

class League {
  League({
    this.franchises,
    this.calendar,
    this.country,
    this.midsizeName,
    this.abbreviation,
    this.transactions,
    this.logos,
    this.alternateId,
    this.uid,
    this.name,
    this.season,
    this.links,
    this.id,
    this.shortName,
    this.slug,
    this.isTournament,
    this.group,
  });

  Calendar franchises;
  Calendar calendar;
  Country country;
  String midsizeName;
  String abbreviation;
  Calendar transactions;
  List<Logo> logos;
  String alternateId;
  String uid;
  String name;
  Season season;
  List<TeamLink> links;
  String id;
  String shortName;
  String slug;
  bool isTournament;
  Calendar group;

  factory League.fromJson(Map<String, dynamic> json) => League(
        franchises: json["franchises"] == null
            ? null
            : Calendar.fromJson(json["franchises"]),
        calendar: json["calendar"] == null
            ? null
            : Calendar.fromJson(json["calendar"]),
        country:
            json["country"] == null ? null : Country.fromJson(json["country"]),
        midsizeName: json["midsizeName"] == null ? null : json["midsizeName"],
        abbreviation:
            json["abbreviation"] == null ? null : json["abbreviation"],
        transactions: json["transactions"] == null
            ? null
            : Calendar.fromJson(json["transactions"]),
        logos: json["logos"] == null
            ? null
            : List<Logo>.from(json["logos"].map((x) => Logo.fromJson(x))),
        alternateId: json["alternateId"] == null ? null : json["alternateId"],
        uid: json["uid"] == null ? null : json["uid"],
        name: json["name"] == null ? null : json["name"],
        season: json["season"] == null ? null : Season.fromJson(json["season"]),
        links: json["links"] == null
            ? null
            : List<TeamLink>.from(
                json["links"].map((x) => TeamLink.fromJson(x))),
        id: json["id"] == null ? null : json["id"],
        shortName: json["shortName"] == null ? null : json["shortName"],
        slug: json["slug"] == null ? null : json["slug"],
        isTournament:
            json["isTournament"] == null ? null : json["isTournament"],
        group: json["group"] == null ? null : Calendar.fromJson(json["group"]),
      );

  Map<String, dynamic> toJson() => {
        "franchises": franchises == null ? null : franchises.toJson(),
        "calendar": calendar == null ? null : calendar.toJson(),
        "country": country == null ? null : country.toJson(),
        "midsizeName": midsizeName == null ? null : midsizeName,
        "abbreviation": abbreviation == null ? null : abbreviation,
        "transactions": transactions == null ? null : transactions.toJson(),
        "logos": logos == null
            ? null
            : List<dynamic>.from(logos.map((x) => x.toJson())),
        "alternateId": alternateId == null ? null : alternateId,
        "uid": uid == null ? null : uid,
        "name": name == null ? null : name,
        "season": season == null ? null : season.toJson(),
        "links": links == null
            ? null
            : List<dynamic>.from(links.map((x) => x.toJson())),
        "id": id == null ? null : id,
        "shortName": shortName == null ? null : shortName,
        "slug": slug == null ? null : slug,
        "isTournament": isTournament == null ? null : isTournament,
        "group": group == null ? null : group.toJson(),
      };
}

class Calendar {
  Calendar({
    this.ref,
  });

  String ref;

  factory Calendar.fromJson(Map<String, dynamic> json) => Calendar(
        ref: json["\u0024ref"] == null ? null : json["\u0024ref"],
      );

  Map<String, dynamic> toJson() => {
        "\u0024ref": ref == null ? null : ref,
      };
}

class Country {
  Country({
    this.flag,
    this.name,
    this.athletes,
    this.id,
    this.abbreviation,
    this.ref,
    this.slug,
  });

  Flag flag;
  String name;
  Calendar athletes;
  String id;
  String abbreviation;
  String ref;
  String slug;

  factory Country.fromJson(Map<String, dynamic> json) => Country(
        flag: json["flag"] == null ? null : Flag.fromJson(json["flag"]),
        name: json["name"] == null ? null : json["name"],
        athletes: json["athletes"] == null
            ? null
            : Calendar.fromJson(json["athletes"]),
        id: json["id"] == null ? null : json["id"],
        abbreviation:
            json["abbreviation"] == null ? null : json["abbreviation"],
        ref: json["\u0024ref"] == null ? null : json["\u0024ref"],
        slug: json["slug"] == null ? null : json["slug"],
      );

  Map<String, dynamic> toJson() => {
        "flag": flag == null ? null : flag.toJson(),
        "name": name == null ? null : name,
        "athletes": athletes == null ? null : athletes.toJson(),
        "id": id == null ? null : id,
        "abbreviation": abbreviation == null ? null : abbreviation,
        "\u0024ref": ref == null ? null : ref,
        "slug": slug == null ? null : slug,
      };
}

class Flag {
  Flag({
    this.alt,
    this.rel,
    this.href,
  });

  String alt;
  List<String> rel;
  String href;

  factory Flag.fromJson(Map<String, dynamic> json) => Flag(
        alt: json["alt"] == null ? null : json["alt"],
        rel: json["rel"] == null
            ? null
            : List<String>.from(json["rel"].map((x) => x)),
        href: json["href"] == null ? null : json["href"],
      );

  Map<String, dynamic> toJson() => {
        "alt": alt == null ? null : alt,
        "rel": rel == null ? null : List<dynamic>.from(rel.map((x) => x)),
        "href": href == null ? null : href,
      };
}

class Logo {
  Logo({
    this.width,
    this.alt,
    this.rel,
    this.href,
    this.height,
  });

  int width;
  String alt;
  List<String> rel;
  String href;
  int height;

  factory Logo.fromJson(Map<String, dynamic> json) => Logo(
        width: json["width"] == null ? null : json["width"],
        alt: json["alt"] == null ? null : json["alt"],
        rel: json["rel"] == null
            ? null
            : List<String>.from(json["rel"].map((x) => x)),
        href: json["href"] == null ? null : json["href"],
        height: json["height"] == null ? null : json["height"],
      );

  Map<String, dynamic> toJson() => {
        "width": width == null ? null : width,
        "alt": alt == null ? null : alt,
        "rel": rel == null ? null : List<dynamic>.from(rel.map((x) => x)),
        "href": href == null ? null : href,
        "height": height == null ? null : height,
      };
}

class Season {
  Season({
    this.year,
    this.endDate,
    this.type,
    this.startDate,
  });

  int year;
  String endDate;
  int type;
  String startDate;

  factory Season.fromJson(Map<String, dynamic> json) => Season(
        year: json["year"] == null ? null : json["year"],
        endDate: json["endDate"] == null ? null : json["endDate"],
        type: json["type"] == null ? null : json["type"],
        startDate: json["startDate"] == null ? null : json["startDate"],
      );

  Map<String, dynamic> toJson() => {
        "year": year == null ? null : year,
        "endDate": endDate == null ? null : endDate,
        "type": type == null ? null : type,
        "startDate": startDate == null ? null : startDate,
      };
}

class Content {
  Content({
    this.title,
    this.description,
    this.keywords,
    this.type,
    this.canonical,
    this.metaImage,
  });

  String title;
  String description;
  String keywords;
  String type;
  String canonical;
  String metaImage;

  factory Content.fromJson(Map<String, dynamic> json) => Content(
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        keywords: json["keywords"] == null ? null : json["keywords"],
        type: json["type"] == null ? null : json["type"],
        canonical: json["canonical"] == null ? null : json["canonical"],
        metaImage: json["metaImage"] == null ? null : json["metaImage"],
      );

  Map<String, dynamic> toJson() => {
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "keywords": keywords == null ? null : keywords,
        "type": type == null ? null : type,
        "canonical": canonical == null ? null : canonical,
        "metaImage": metaImage == null ? null : metaImage,
      };
}

class DtCpackages {
  DtCpackages({
    this.packages,
  });

  List<Package> packages;

  factory DtCpackages.fromJson(Map<String, dynamic> json) => DtCpackages(
        packages: json["packages"] == null
            ? null
            : List<Package>.from(
                json["packages"].map((x) => Package.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "packages": packages == null
            ? null
            : List<dynamic>.from(packages.map((x) => x.toJson())),
      };
}

class Package {
  Package({
    this.entitlement,
    this.subscription,
    this.tuneIn,
    this.concurrencyLimit,
    this.trial,
    this.isPpv,
    this.trialActive,
    this.paywall,
    this.countryCodes,
    this.isIap,
    this.name,
    this.postPurchaseScreen,
    this.id,
    this.embeddedPaywall,
    this.billingDisclaimer,
    this.showPregame,
    this.voucherCode,
    this.campaignCode,
    this.isOom,
    this.allowsRestore,
    this.upgrade,
    this.shortName,
    this.bundle,
    this.billing,
  });

  String entitlement;
  Subscription subscription;
  TuneIn tuneIn;
  int concurrencyLimit;
  Trial trial;
  bool isPpv;
  bool trialActive;
  PackagePaywall paywall;
  List<String> countryCodes;
  bool isIap;
  String name;
  PostPurchaseScreen postPurchaseScreen;
  int id;
  EmbeddedPaywall embeddedPaywall;
  String billingDisclaimer;
  bool showPregame;
  String voucherCode;
  String campaignCode;
  bool isOom;
  bool allowsRestore;
  Upgrade upgrade;
  String shortName;
  Bundle bundle;
  Billing billing;

  factory Package.fromJson(Map<String, dynamic> json) => Package(
        entitlement: json["entitlement"] == null ? null : json["entitlement"],
        subscription: json["subscription"] == null
            ? null
            : Subscription.fromJson(json["subscription"]),
        tuneIn: json["tuneIn"] == null ? null : TuneIn.fromJson(json["tuneIn"]),
        concurrencyLimit:
            json["concurrencyLimit"] == null ? null : json["concurrencyLimit"],
        trial: json["trial"] == null ? null : Trial.fromJson(json["trial"]),
        isPpv: json["isPPV"] == null ? null : json["isPPV"],
        trialActive: json["trialActive"] == null ? null : json["trialActive"],
        paywall: json["paywall"] == null
            ? null
            : PackagePaywall.fromJson(json["paywall"]),
        countryCodes: json["countryCodes"] == null
            ? null
            : List<String>.from(json["countryCodes"].map((x) => x)),
        isIap: json["isIap"] == null ? null : json["isIap"],
        name: json["name"] == null ? null : json["name"],
        postPurchaseScreen: json["postPurchaseScreen"] == null
            ? null
            : PostPurchaseScreen.fromJson(json["postPurchaseScreen"]),
        id: json["id"] == null ? null : json["id"],
        embeddedPaywall: json["embeddedPaywall"] == null
            ? null
            : EmbeddedPaywall.fromJson(json["embeddedPaywall"]),
        billingDisclaimer: json["billingDisclaimer"] == null
            ? null
            : json["billingDisclaimer"],
        showPregame: json["showPregame"] == null ? null : json["showPregame"],
        voucherCode: json["voucherCode"] == null ? null : json["voucherCode"],
        campaignCode:
            json["campaignCode"] == null ? null : json["campaignCode"],
        isOom: json["isOOM"] == null ? null : json["isOOM"],
        allowsRestore:
            json["allowsRestore"] == null ? null : json["allowsRestore"],
        upgrade:
            json["upgrade"] == null ? null : Upgrade.fromJson(json["upgrade"]),
        shortName: json["shortName"] == null ? null : json["shortName"],
        bundle: json["bundle"] == null ? null : Bundle.fromJson(json["bundle"]),
        billing:
            json["billing"] == null ? null : Billing.fromJson(json["billing"]),
      );

  Map<String, dynamic> toJson() => {
        "entitlement": entitlement == null ? null : entitlement,
        "subscription": subscription == null ? null : subscription.toJson(),
        "tuneIn": tuneIn == null ? null : tuneIn.toJson(),
        "concurrencyLimit": concurrencyLimit == null ? null : concurrencyLimit,
        "trial": trial == null ? null : trial.toJson(),
        "isPPV": isPpv == null ? null : isPpv,
        "trialActive": trialActive == null ? null : trialActive,
        "paywall": paywall == null ? null : paywall.toJson(),
        "countryCodes": countryCodes == null
            ? null
            : List<dynamic>.from(countryCodes.map((x) => x)),
        "isIap": isIap == null ? null : isIap,
        "name": name == null ? null : name,
        "postPurchaseScreen":
            postPurchaseScreen == null ? null : postPurchaseScreen.toJson(),
        "id": id == null ? null : id,
        "embeddedPaywall":
            embeddedPaywall == null ? null : embeddedPaywall.toJson(),
        "billingDisclaimer":
            billingDisclaimer == null ? null : billingDisclaimer,
        "showPregame": showPregame == null ? null : showPregame,
        "voucherCode": voucherCode == null ? null : voucherCode,
        "campaignCode": campaignCode == null ? null : campaignCode,
        "isOOM": isOom == null ? null : isOom,
        "allowsRestore": allowsRestore == null ? null : allowsRestore,
        "upgrade": upgrade == null ? null : upgrade.toJson(),
        "shortName": shortName == null ? null : shortName,
        "bundle": bundle == null ? null : bundle.toJson(),
        "billing": billing == null ? null : billing.toJson(),
      };
}

class Billing {
  Billing({
    this.showCheckBox,
    this.billingDisclosureError,
    this.ctaButtonTitle,
    this.billingDisclosure,
  });

  bool showCheckBox;
  String billingDisclosureError;
  String ctaButtonTitle;
  String billingDisclosure;

  factory Billing.fromJson(Map<String, dynamic> json) => Billing(
        showCheckBox:
            json["showCheckBox"] == null ? null : json["showCheckBox"],
        billingDisclosureError: json["billingDisclosureError"] == null
            ? null
            : json["billingDisclosureError"],
        ctaButtonTitle:
            json["ctaButtonTitle"] == null ? null : json["ctaButtonTitle"],
        billingDisclosure: json["billingDisclosure"] == null
            ? null
            : json["billingDisclosure"],
      );

  Map<String, dynamic> toJson() => {
        "showCheckBox": showCheckBox == null ? null : showCheckBox,
        "billingDisclosureError":
            billingDisclosureError == null ? null : billingDisclosureError,
        "ctaButtonTitle": ctaButtonTitle == null ? null : ctaButtonTitle,
        "billingDisclosure":
            billingDisclosure == null ? null : billingDisclosure,
      };
}

class Bundle {
  Bundle({
    this.requiredEntitlement,
    this.subtitle,
    this.postPurchaseScreen,
    this.gracePeriodSeconds,
    this.billingDisclaimer,
    this.enabled,
    this.voucherCode,
    this.disclaimer,
    this.campaignCode,
    this.paywalls,
    this.billing,
  });

  String requiredEntitlement;
  String subtitle;
  PostPurchaseScreen postPurchaseScreen;
  int gracePeriodSeconds;
  String billingDisclaimer;
  bool enabled;
  String voucherCode;
  String disclaimer;
  String campaignCode;
  List<PaywallElement> paywalls;
  Billing billing;

  factory Bundle.fromJson(Map<String, dynamic> json) => Bundle(
        requiredEntitlement: json["requiredEntitlement"] == null
            ? null
            : json["requiredEntitlement"],
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        postPurchaseScreen: json["postPurchaseScreen"] == null
            ? null
            : PostPurchaseScreen.fromJson(json["postPurchaseScreen"]),
        gracePeriodSeconds: json["gracePeriodSeconds"] == null
            ? null
            : json["gracePeriodSeconds"],
        billingDisclaimer: json["billingDisclaimer"] == null
            ? null
            : json["billingDisclaimer"],
        enabled: json["enabled"] == null ? null : json["enabled"],
        voucherCode: json["voucherCode"] == null ? null : json["voucherCode"],
        disclaimer: json["disclaimer"] == null ? null : json["disclaimer"],
        campaignCode:
            json["campaignCode"] == null ? null : json["campaignCode"],
        paywalls: json["paywalls"] == null
            ? null
            : List<PaywallElement>.from(
                json["paywalls"].map((x) => PaywallElement.fromJson(x))),
        billing:
            json["billing"] == null ? null : Billing.fromJson(json["billing"]),
      );

  Map<String, dynamic> toJson() => {
        "requiredEntitlement":
            requiredEntitlement == null ? null : requiredEntitlement,
        "subtitle": subtitle == null ? null : subtitle,
        "postPurchaseScreen":
            postPurchaseScreen == null ? null : postPurchaseScreen.toJson(),
        "gracePeriodSeconds":
            gracePeriodSeconds == null ? null : gracePeriodSeconds,
        "billingDisclaimer":
            billingDisclaimer == null ? null : billingDisclaimer,
        "enabled": enabled == null ? null : enabled,
        "voucherCode": voucherCode == null ? null : voucherCode,
        "disclaimer": disclaimer == null ? null : disclaimer,
        "campaignCode": campaignCode == null ? null : campaignCode,
        "paywalls": paywalls == null
            ? null
            : List<dynamic>.from(paywalls.map((x) => x.toJson())),
        "billing": billing == null ? null : billing.toJson(),
      };
}

class PaywallElement {
  PaywallElement({
    this.legalText1,
    this.disclaimerText2,
    this.disclaimerText1,
    this.buttons,
    this.legalText4,
    this.footer,
    this.legalText3,
    this.legalText2,
    this.ctaButtonTitle,
    this.subscriberAgreementTitle,
    this.title,
    this.heroImageUrl,
    this.logoUrl,
    this.termsOfUse,
    this.subtitle,
    this.backgroundColors,
    this.notPurchaseableText,
    this.secondaryTitle,
    this.ctaButtonStyle,
    this.informativeLoginText,
    this.disclaimer,
    this.order,
    this.backgroundImageUrl,
    this.ctaButtonTextStyle,
    this.header,
  });

  String legalText1;
  String disclaimerText2;
  String disclaimerText1;
  List<PaywallButton> buttons;
  String legalText4;
  Footer footer;
  String legalText3;
  String legalText2;
  String ctaButtonTitle;
  String subscriberAgreementTitle;
  String title;
  String heroImageUrl;
  String logoUrl;
  String termsOfUse;
  String subtitle;
  List<String> backgroundColors;
  String notPurchaseableText;
  String secondaryTitle;
  String ctaButtonStyle;
  String informativeLoginText;
  String disclaimer;
  int order;
  String backgroundImageUrl;
  String ctaButtonTextStyle;
  Header header;

  factory PaywallElement.fromJson(Map<String, dynamic> json) => PaywallElement(
        legalText1: json["legalText1"] == null ? null : json["legalText1"],
        disclaimerText2:
            json["disclaimerText2"] == null ? null : json["disclaimerText2"],
        disclaimerText1:
            json["disclaimerText1"] == null ? null : json["disclaimerText1"],
        buttons: json["buttons"] == null
            ? null
            : List<PaywallButton>.from(
                json["buttons"].map((x) => PaywallButton.fromJson(x))),
        legalText4: json["legalText4"] == null ? null : json["legalText4"],
        footer: json["footer"] == null ? null : Footer.fromJson(json["footer"]),
        legalText3: json["legalText3"] == null ? null : json["legalText3"],
        legalText2: json["legalText2"] == null ? null : json["legalText2"],
        ctaButtonTitle:
            json["ctaButtonTitle"] == null ? null : json["ctaButtonTitle"],
        subscriberAgreementTitle: json["subscriberAgreementTitle"] == null
            ? null
            : json["subscriberAgreementTitle"],
        title: json["title"] == null ? null : json["title"],
        heroImageUrl:
            json["heroImageUrl"] == null ? null : json["heroImageUrl"],
        logoUrl: json["logoUrl"] == null ? null : json["logoUrl"],
        termsOfUse: json["termsOfUse"] == null ? null : json["termsOfUse"],
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        backgroundColors: json["backgroundColors"] == null
            ? null
            : List<String>.from(json["backgroundColors"].map((x) => x)),
        notPurchaseableText: json["notPurchaseableText"] == null
            ? null
            : json["notPurchaseableText"],
        secondaryTitle:
            json["secondaryTitle"] == null ? null : json["secondaryTitle"],
        ctaButtonStyle:
            json["ctaButtonStyle"] == null ? null : json["ctaButtonStyle"],
        informativeLoginText: json["informativeLoginText"] == null
            ? null
            : json["informativeLoginText"],
        disclaimer: json["disclaimer"] == null ? null : json["disclaimer"],
        order: json["order"] == null ? null : json["order"],
        backgroundImageUrl: json["backgroundImageUrl"] == null
            ? null
            : json["backgroundImageUrl"],
        ctaButtonTextStyle: json["ctaButtonTextStyle"] == null
            ? null
            : json["ctaButtonTextStyle"],
        header: json["header"] == null ? null : Header.fromJson(json["header"]),
      );

  Map<String, dynamic> toJson() => {
        "legalText1": legalText1 == null ? null : legalText1,
        "disclaimerText2": disclaimerText2 == null ? null : disclaimerText2,
        "disclaimerText1": disclaimerText1 == null ? null : disclaimerText1,
        "buttons": buttons == null
            ? null
            : List<dynamic>.from(buttons.map((x) => x.toJson())),
        "legalText4": legalText4 == null ? null : legalText4,
        "footer": footer == null ? null : footer.toJson(),
        "legalText3": legalText3 == null ? null : legalText3,
        "legalText2": legalText2 == null ? null : legalText2,
        "ctaButtonTitle": ctaButtonTitle == null ? null : ctaButtonTitle,
        "subscriberAgreementTitle":
            subscriberAgreementTitle == null ? null : subscriberAgreementTitle,
        "title": title == null ? null : title,
        "heroImageUrl": heroImageUrl == null ? null : heroImageUrl,
        "logoUrl": logoUrl == null ? null : logoUrl,
        "termsOfUse": termsOfUse == null ? null : termsOfUse,
        "subtitle": subtitle == null ? null : subtitle,
        "backgroundColors": backgroundColors == null
            ? null
            : List<dynamic>.from(backgroundColors.map((x) => x)),
        "notPurchaseableText":
            notPurchaseableText == null ? null : notPurchaseableText,
        "secondaryTitle": secondaryTitle == null ? null : secondaryTitle,
        "ctaButtonStyle": ctaButtonStyle == null ? null : ctaButtonStyle,
        "informativeLoginText":
            informativeLoginText == null ? null : informativeLoginText,
        "disclaimer": disclaimer == null ? null : disclaimer,
        "order": order == null ? null : order,
        "backgroundImageUrl":
            backgroundImageUrl == null ? null : backgroundImageUrl,
        "ctaButtonTextStyle":
            ctaButtonTextStyle == null ? null : ctaButtonTextStyle,
        "header": header == null ? null : header.toJson(),
      };
}

class PaywallButton {
  PaywallButton({
    this.buttonImage,
    this.subHeaderText,
    this.headerText,
    this.buttonHighlightedImage,
    this.title,
    this.subheaderText,
    this.textColor,
    this.disclaimer,
  });

  String buttonImage;
  String subHeaderText;
  String headerText;
  String buttonHighlightedImage;
  String title;
  String subheaderText;
  String textColor;
  String disclaimer;

  factory PaywallButton.fromJson(Map<String, dynamic> json) => PaywallButton(
        buttonImage: json["buttonImage"] == null ? null : json["buttonImage"],
        subHeaderText:
            json["subHeaderText"] == null ? null : json["subHeaderText"],
        headerText: json["headerText"] == null ? null : json["headerText"],
        buttonHighlightedImage: json["buttonHighlightedImage"] == null
            ? null
            : json["buttonHighlightedImage"],
        title: json["title"] == null ? null : json["title"],
        subheaderText:
            json["subheaderText"] == null ? null : json["subheaderText"],
        textColor: json["textColor"] == null ? null : json["textColor"],
        disclaimer: json["disclaimer"] == null ? null : json["disclaimer"],
      );

  Map<String, dynamic> toJson() => {
        "buttonImage": buttonImage == null ? null : buttonImage,
        "subHeaderText": subHeaderText == null ? null : subHeaderText,
        "headerText": headerText == null ? null : headerText,
        "buttonHighlightedImage":
            buttonHighlightedImage == null ? null : buttonHighlightedImage,
        "title": title == null ? null : title,
        "subheaderText": subheaderText == null ? null : subheaderText,
        "textColor": textColor == null ? null : textColor,
        "disclaimer": disclaimer == null ? null : disclaimer,
      };
}

class Footer {
  Footer({
    this.subtitle,
    this.title,
    this.disclaimer,
  });

  String subtitle;
  String title;
  String disclaimer;

  factory Footer.fromJson(Map<String, dynamic> json) => Footer(
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        title: json["title"] == null ? null : json["title"],
        disclaimer: json["disclaimer"] == null ? null : json["disclaimer"],
      );

  Map<String, dynamic> toJson() => {
        "subtitle": subtitle == null ? null : subtitle,
        "title": title == null ? null : title,
        "disclaimer": disclaimer == null ? null : disclaimer,
      };
}

class Header {
  Header({
    this.subtitle,
    this.title,
  });

  String subtitle;
  String title;

  factory Header.fromJson(Map<String, dynamic> json) => Header(
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        title: json["title"] == null ? null : json["title"],
      );

  Map<String, dynamic> toJson() => {
        "subtitle": subtitle == null ? null : subtitle,
        "title": title == null ? null : title,
      };
}

class PostPurchaseScreen {
  PostPurchaseScreen({
    this.promo,
    this.buttonText,
    this.message,
    this.enabled,
    this.logoUrl,
    this.backgroundImageUrl,
  });

  Promo promo;
  String buttonText;
  String message;
  bool enabled;
  String logoUrl;
  String backgroundImageUrl;

  factory PostPurchaseScreen.fromJson(Map<String, dynamic> json) =>
      PostPurchaseScreen(
        promo: json["promo"] == null ? null : Promo.fromJson(json["promo"]),
        buttonText: json["buttonText"] == null ? null : json["buttonText"],
        message: json["message"] == null ? null : json["message"],
        enabled: json["enabled"] == null ? null : json["enabled"],
        logoUrl: json["logoUrl"] == null ? null : json["logoUrl"],
        backgroundImageUrl: json["backgroundImageUrl"] == null
            ? null
            : json["backgroundImageUrl"],
      );

  Map<String, dynamic> toJson() => {
        "promo": promo == null ? null : promo.toJson(),
        "buttonText": buttonText == null ? null : buttonText,
        "message": message == null ? null : message,
        "enabled": enabled == null ? null : enabled,
        "logoUrl": logoUrl == null ? null : logoUrl,
        "backgroundImageUrl":
            backgroundImageUrl == null ? null : backgroundImageUrl,
      };
}

class Promo {
  Promo({
    this.linkUrl,
    this.linkText,
    this.message,
    this.enabled,
    this.logoUrl,
  });

  String linkUrl;
  String linkText;
  String message;
  bool enabled;
  String logoUrl;

  factory Promo.fromJson(Map<String, dynamic> json) => Promo(
        linkUrl: json["linkUrl"] == null ? null : json["linkUrl"],
        linkText: json["linkText"] == null ? null : json["linkText"],
        message: json["message"] == null ? null : json["message"],
        enabled: json["enabled"] == null ? null : json["enabled"],
        logoUrl: json["logoUrl"] == null ? null : json["logoUrl"],
      );

  Map<String, dynamic> toJson() => {
        "linkUrl": linkUrl == null ? null : linkUrl,
        "linkText": linkText == null ? null : linkText,
        "message": message == null ? null : message,
        "enabled": enabled == null ? null : enabled,
        "logoUrl": logoUrl == null ? null : logoUrl,
      };
}

class EmbeddedPaywall {
  EmbeddedPaywall({
    this.ctaButtonTitle,
    this.title,
  });

  String ctaButtonTitle;
  String title;

  factory EmbeddedPaywall.fromJson(Map<String, dynamic> json) =>
      EmbeddedPaywall(
        ctaButtonTitle:
            json["ctaButtonTitle"] == null ? null : json["ctaButtonTitle"],
        title: json["title"] == null ? null : json["title"],
      );

  Map<String, dynamic> toJson() => {
        "ctaButtonTitle": ctaButtonTitle == null ? null : ctaButtonTitle,
        "title": title == null ? null : title,
      };
}

class PackagePaywall {
  PackagePaywall({
    this.legalText1,
    this.legalText4,
    this.legalText3,
    this.legalText2,
    this.ctaButtonTitle,
    this.toggle,
    this.title,
    this.termsOfUseText,
    this.subscriberAgreementText,
    this.backgroundColors,
    this.backgroundVideoUrl,
    this.notPurchaseableText,
    this.privacyPolicyText,
    this.purchaseSuccessText,
    this.sponsorImageUrl,
    this.ctaButtonSubheader,
    this.informativeLoginText,
    this.ctaButtonHeader,
  });

  String legalText1;
  String legalText4;
  String legalText3;
  String legalText2;
  String ctaButtonTitle;
  Toggle toggle;
  String title;
  String termsOfUseText;
  String subscriberAgreementText;
  List<String> backgroundColors;
  String backgroundVideoUrl;
  String notPurchaseableText;
  String privacyPolicyText;
  String purchaseSuccessText;
  String sponsorImageUrl;
  String ctaButtonSubheader;
  String informativeLoginText;
  String ctaButtonHeader;

  factory PackagePaywall.fromJson(Map<String, dynamic> json) => PackagePaywall(
        legalText1: json["legalText1"] == null ? null : json["legalText1"],
        legalText4: json["legalText4"] == null ? null : json["legalText4"],
        legalText3: json["legalText3"] == null ? null : json["legalText3"],
        legalText2: json["legalText2"] == null ? null : json["legalText2"],
        ctaButtonTitle:
            json["ctaButtonTitle"] == null ? null : json["ctaButtonTitle"],
        toggle: json["toggle"] == null ? null : Toggle.fromJson(json["toggle"]),
        title: json["title"] == null ? null : json["title"],
        termsOfUseText:
            json["termsOfUseText"] == null ? null : json["termsOfUseText"],
        subscriberAgreementText: json["subscriberAgreementText"] == null
            ? null
            : json["subscriberAgreementText"],
        backgroundColors: json["backgroundColors"] == null
            ? null
            : List<String>.from(json["backgroundColors"].map((x) => x)),
        backgroundVideoUrl: json["backgroundVideoUrl"] == null
            ? null
            : json["backgroundVideoUrl"],
        notPurchaseableText: json["notPurchaseableText"] == null
            ? null
            : json["notPurchaseableText"],
        privacyPolicyText: json["privacyPolicyText"] == null
            ? null
            : json["privacyPolicyText"],
        purchaseSuccessText: json["purchaseSuccessText"] == null
            ? null
            : json["purchaseSuccessText"],
        sponsorImageUrl:
            json["sponsorImageUrl"] == null ? null : json["sponsorImageUrl"],
        ctaButtonSubheader: json["ctaButtonSubheader"] == null
            ? null
            : json["ctaButtonSubheader"],
        informativeLoginText: json["informativeLoginText"] == null
            ? null
            : json["informativeLoginText"],
        ctaButtonHeader:
            json["ctaButtonHeader"] == null ? null : json["ctaButtonHeader"],
      );

  Map<String, dynamic> toJson() => {
        "legalText1": legalText1 == null ? null : legalText1,
        "legalText4": legalText4 == null ? null : legalText4,
        "legalText3": legalText3 == null ? null : legalText3,
        "legalText2": legalText2 == null ? null : legalText2,
        "ctaButtonTitle": ctaButtonTitle == null ? null : ctaButtonTitle,
        "toggle": toggle == null ? null : toggle.toJson(),
        "title": title == null ? null : title,
        "termsOfUseText": termsOfUseText == null ? null : termsOfUseText,
        "subscriberAgreementText":
            subscriberAgreementText == null ? null : subscriberAgreementText,
        "backgroundColors": backgroundColors == null
            ? null
            : List<dynamic>.from(backgroundColors.map((x) => x)),
        "backgroundVideoUrl":
            backgroundVideoUrl == null ? null : backgroundVideoUrl,
        "notPurchaseableText":
            notPurchaseableText == null ? null : notPurchaseableText,
        "privacyPolicyText":
            privacyPolicyText == null ? null : privacyPolicyText,
        "purchaseSuccessText":
            purchaseSuccessText == null ? null : purchaseSuccessText,
        "sponsorImageUrl": sponsorImageUrl == null ? null : sponsorImageUrl,
        "ctaButtonSubheader":
            ctaButtonSubheader == null ? null : ctaButtonSubheader,
        "informativeLoginText":
            informativeLoginText == null ? null : informativeLoginText,
        "ctaButtonHeader": ctaButtonHeader == null ? null : ctaButtonHeader,
      };
}

class Toggle {
  Toggle({
    this.enabled,
    this.sections,
  });

  bool enabled;
  List<Section> sections;

  factory Toggle.fromJson(Map<String, dynamic> json) => Toggle(
        enabled: json["enabled"] == null ? null : json["enabled"],
        sections: json["sections"] == null
            ? null
            : List<Section>.from(
                json["sections"].map((x) => Section.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "enabled": enabled == null ? null : enabled,
        "sections": sections == null
            ? null
            : List<dynamic>.from(sections.map((x) => x.toJson())),
      };
}

class Section {
  Section({
    this.disclaimerText2,
    this.isDefault,
    this.disclaimerText1,
    this.notes,
    this.buttons,
    this.analyticsName,
    this.text,
    this.flagText,
    this.key,
  });

  String disclaimerText2;
  bool isDefault;
  String disclaimerText1;
  List<Note> notes;
  List<SectionButton> buttons;
  String analyticsName;
  String text;
  String flagText;
  String key;

  factory Section.fromJson(Map<String, dynamic> json) => Section(
        disclaimerText2:
            json["disclaimerText2"] == null ? null : json["disclaimerText2"],
        isDefault: json["isDefault"] == null ? null : json["isDefault"],
        disclaimerText1:
            json["disclaimerText1"] == null ? null : json["disclaimerText1"],
        notes: json["notes"] == null
            ? null
            : List<Note>.from(json["notes"].map((x) => Note.fromJson(x))),
        buttons: json["buttons"] == null
            ? null
            : List<SectionButton>.from(
                json["buttons"].map((x) => SectionButton.fromJson(x))),
        analyticsName:
            json["analyticsName"] == null ? null : json["analyticsName"],
        text: json["text"] == null ? null : json["text"],
        flagText: json["flagText"] == null ? null : json["flagText"],
        key: json["key"] == null ? null : json["key"],
      );

  Map<String, dynamic> toJson() => {
        "disclaimerText2": disclaimerText2 == null ? null : disclaimerText2,
        "isDefault": isDefault == null ? null : isDefault,
        "disclaimerText1": disclaimerText1 == null ? null : disclaimerText1,
        "notes": notes == null
            ? null
            : List<dynamic>.from(notes.map((x) => x.toJson())),
        "buttons": buttons == null
            ? null
            : List<dynamic>.from(buttons.map((x) => x.toJson())),
        "analyticsName": analyticsName == null ? null : analyticsName,
        "text": text == null ? null : text,
        "flagText": flagText == null ? null : flagText,
        "key": key == null ? null : key,
      };
}

class SectionButton {
  SectionButton({
    this.buttonImage,
    this.trialActive,
    this.analyticsName,
    this.buttonHighlightedImage,
    this.sku,
    this.title,
    this.billingDisclaimer,
    this.textColor,
    this.disclaimer,
    this.trial,
  });

  String buttonImage;
  bool trialActive;
  String analyticsName;
  String buttonHighlightedImage;
  String sku;
  String title;
  String billingDisclaimer;
  String textColor;
  String disclaimer;
  Trial trial;

  factory SectionButton.fromJson(Map<String, dynamic> json) => SectionButton(
        buttonImage: json["buttonImage"] == null ? null : json["buttonImage"],
        trialActive: json["trialActive"] == null ? null : json["trialActive"],
        analyticsName:
            json["analyticsName"] == null ? null : json["analyticsName"],
        buttonHighlightedImage: json["buttonHighlightedImage"] == null
            ? null
            : json["buttonHighlightedImage"],
        sku: json["sku"] == null ? null : json["sku"],
        title: json["title"] == null ? null : json["title"],
        billingDisclaimer: json["billingDisclaimer"] == null
            ? null
            : json["billingDisclaimer"],
        textColor: json["textColor"] == null ? null : json["textColor"],
        disclaimer: json["disclaimer"] == null ? null : json["disclaimer"],
        trial: json["trial"] == null ? null : Trial.fromJson(json["trial"]),
      );

  Map<String, dynamic> toJson() => {
        "buttonImage": buttonImage == null ? null : buttonImage,
        "trialActive": trialActive == null ? null : trialActive,
        "analyticsName": analyticsName == null ? null : analyticsName,
        "buttonHighlightedImage":
            buttonHighlightedImage == null ? null : buttonHighlightedImage,
        "sku": sku == null ? null : sku,
        "title": title == null ? null : title,
        "billingDisclaimer":
            billingDisclaimer == null ? null : billingDisclaimer,
        "textColor": textColor == null ? null : textColor,
        "disclaimer": disclaimer == null ? null : disclaimer,
        "trial": trial == null ? null : trial.toJson(),
      };
}

class Trial {
  Trial({
    this.paywall,
    this.length,
    this.categoryCode,
    this.billingDisclaimer,
    this.voucherCode,
    this.campaignCode,
  });

  TrialPaywall paywall;
  String length;
  String categoryCode;
  String billingDisclaimer;
  String voucherCode;
  String campaignCode;

  factory Trial.fromJson(Map<String, dynamic> json) => Trial(
        paywall: json["paywall"] == null
            ? null
            : TrialPaywall.fromJson(json["paywall"]),
        length: json["length"] == null ? null : json["length"],
        categoryCode:
            json["categoryCode"] == null ? null : json["categoryCode"],
        billingDisclaimer: json["billingDisclaimer"] == null
            ? null
            : json["billingDisclaimer"],
        voucherCode: json["voucherCode"] == null ? null : json["voucherCode"],
        campaignCode:
            json["campaignCode"] == null ? null : json["campaignCode"],
      );

  Map<String, dynamic> toJson() => {
        "paywall": paywall == null ? null : paywall.toJson(),
        "length": length == null ? null : length,
        "categoryCode": categoryCode == null ? null : categoryCode,
        "billingDisclaimer":
            billingDisclaimer == null ? null : billingDisclaimer,
        "voucherCode": voucherCode == null ? null : voucherCode,
        "campaignCode": campaignCode == null ? null : campaignCode,
      };
}

class TrialPaywall {
  TrialPaywall({
    this.ctaButtonTitle,
    this.disclaimer,
  });

  String ctaButtonTitle;
  String disclaimer;

  factory TrialPaywall.fromJson(Map<String, dynamic> json) => TrialPaywall(
        ctaButtonTitle:
            json["ctaButtonTitle"] == null ? null : json["ctaButtonTitle"],
        disclaimer: json["disclaimer"] == null ? null : json["disclaimer"],
      );

  Map<String, dynamic> toJson() => {
        "ctaButtonTitle": ctaButtonTitle == null ? null : ctaButtonTitle,
        "disclaimer": disclaimer == null ? null : disclaimer,
      };
}

class Note {
  Note({
    this.image,
    this.subtitle,
    this.title,
  });

  String image;
  String subtitle;
  String title;

  factory Note.fromJson(Map<String, dynamic> json) => Note(
        image: json["image"] == null ? null : json["image"],
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        title: json["title"] == null ? null : json["title"],
      );

  Map<String, dynamic> toJson() => {
        "image": image == null ? null : image,
        "subtitle": subtitle == null ? null : subtitle,
        "title": title == null ? null : title,
      };
}

class Subscription {
  Subscription({
    this.bundled,
    this.subscribeText,
    this.subscribedText,
    this.name,
    this.backgroundColors,
    this.subscriptionExpiredText,
    this.description,
    this.heroImageUrl,
    this.deeplinkAction,
  });

  Bundled bundled;
  String subscribeText;
  String subscribedText;
  String name;
  List<String> backgroundColors;
  String subscriptionExpiredText;
  String description;
  String heroImageUrl;
  String deeplinkAction;

  factory Subscription.fromJson(Map<String, dynamic> json) => Subscription(
        bundled:
            json["bundled"] == null ? null : Bundled.fromJson(json["bundled"]),
        subscribeText:
            json["subscribeText"] == null ? null : json["subscribeText"],
        subscribedText:
            json["subscribedText"] == null ? null : json["subscribedText"],
        name: json["name"] == null ? null : json["name"],
        backgroundColors: json["backgroundColors"] == null
            ? null
            : List<String>.from(json["backgroundColors"].map((x) => x)),
        subscriptionExpiredText: json["subscriptionExpiredText"] == null
            ? null
            : json["subscriptionExpiredText"],
        description: json["description"] == null ? null : json["description"],
        heroImageUrl:
            json["heroImageUrl"] == null ? null : json["heroImageUrl"],
        deeplinkAction:
            json["deeplinkAction"] == null ? null : json["deeplinkAction"],
      );

  Map<String, dynamic> toJson() => {
        "bundled": bundled == null ? null : bundled.toJson(),
        "subscribeText": subscribeText == null ? null : subscribeText,
        "subscribedText": subscribedText == null ? null : subscribedText,
        "name": name == null ? null : name,
        "backgroundColors": backgroundColors == null
            ? null
            : List<dynamic>.from(backgroundColors.map((x) => x)),
        "subscriptionExpiredText":
            subscriptionExpiredText == null ? null : subscriptionExpiredText,
        "description": description == null ? null : description,
        "heroImageUrl": heroImageUrl == null ? null : heroImageUrl,
        "deeplinkAction": deeplinkAction == null ? null : deeplinkAction,
      };
}

class Bundled {
  Bundled({
    this.manageExpiredText,
    this.manageActiveText,
    this.name,
    this.description,
    this.logoUrl,
  });

  String manageExpiredText;
  String manageActiveText;
  String name;
  String description;
  String logoUrl;

  factory Bundled.fromJson(Map<String, dynamic> json) => Bundled(
        manageExpiredText: json["manageExpiredText"] == null
            ? null
            : json["manageExpiredText"],
        manageActiveText:
            json["manageActiveText"] == null ? null : json["manageActiveText"],
        name: json["name"] == null ? null : json["name"],
        description: json["description"] == null ? null : json["description"],
        logoUrl: json["logoUrl"] == null ? null : json["logoUrl"],
      );

  Map<String, dynamic> toJson() => {
        "manageExpiredText":
            manageExpiredText == null ? null : manageExpiredText,
        "manageActiveText": manageActiveText == null ? null : manageActiveText,
        "name": name == null ? null : name,
        "description": description == null ? null : description,
        "logoUrl": logoUrl == null ? null : logoUrl,
      };
}

class TuneIn {
  TuneIn({
    this.buttonText,
    this.upsellHref,
    this.upsellTextKey,
    this.overlayImgUrl,
    this.backgroundImgUrl,
  });

  String buttonText;
  String upsellHref;
  String upsellTextKey;
  String overlayImgUrl;
  String backgroundImgUrl;

  factory TuneIn.fromJson(Map<String, dynamic> json) => TuneIn(
        buttonText: json["buttonText"] == null ? null : json["buttonText"],
        upsellHref: json["upsellHref"] == null ? null : json["upsellHref"],
        upsellTextKey:
            json["upsellTextKey"] == null ? null : json["upsellTextKey"],
        overlayImgUrl:
            json["overlayImgUrl"] == null ? null : json["overlayImgUrl"],
        backgroundImgUrl:
            json["backgroundImgUrl"] == null ? null : json["backgroundImgUrl"],
      );

  Map<String, dynamic> toJson() => {
        "buttonText": buttonText == null ? null : buttonText,
        "upsellHref": upsellHref == null ? null : upsellHref,
        "upsellTextKey": upsellTextKey == null ? null : upsellTextKey,
        "overlayImgUrl": overlayImgUrl == null ? null : overlayImgUrl,
        "backgroundImgUrl": backgroundImgUrl == null ? null : backgroundImgUrl,
      };
}

class Upgrade {
  Upgrade({
    this.requiredEntitlement,
    this.requiredSource,
    this.ctaButtonSubheader,
    this.subtitle,
    this.requiredCategoryCodes,
    this.ctaButtonTitle,
    this.ctaButtonHeader,
    this.billingDisclaimer,
    this.voucherCode,
    this.disclaimer,
    this.campaignCode,
    this.billing,
  });

  String requiredEntitlement;
  String requiredSource;
  String ctaButtonSubheader;
  String subtitle;
  List<String> requiredCategoryCodes;
  String ctaButtonTitle;
  String ctaButtonHeader;
  String billingDisclaimer;
  String voucherCode;
  String disclaimer;
  String campaignCode;
  Billing billing;

  factory Upgrade.fromJson(Map<String, dynamic> json) => Upgrade(
        requiredEntitlement: json["requiredEntitlement"] == null
            ? null
            : json["requiredEntitlement"],
        requiredSource:
            json["requiredSource"] == null ? null : json["requiredSource"],
        ctaButtonSubheader: json["ctaButtonSubheader"] == null
            ? null
            : json["ctaButtonSubheader"],
        subtitle: json["subtitle"] == null ? null : json["subtitle"],
        requiredCategoryCodes: json["requiredCategoryCodes"] == null
            ? null
            : List<String>.from(json["requiredCategoryCodes"].map((x) => x)),
        ctaButtonTitle:
            json["ctaButtonTitle"] == null ? null : json["ctaButtonTitle"],
        ctaButtonHeader:
            json["ctaButtonHeader"] == null ? null : json["ctaButtonHeader"],
        billingDisclaimer: json["billingDisclaimer"] == null
            ? null
            : json["billingDisclaimer"],
        voucherCode: json["voucherCode"] == null ? null : json["voucherCode"],
        disclaimer: json["disclaimer"] == null ? null : json["disclaimer"],
        campaignCode:
            json["campaignCode"] == null ? null : json["campaignCode"],
        billing:
            json["billing"] == null ? null : Billing.fromJson(json["billing"]),
      );

  Map<String, dynamic> toJson() => {
        "requiredEntitlement":
            requiredEntitlement == null ? null : requiredEntitlement,
        "requiredSource": requiredSource == null ? null : requiredSource,
        "ctaButtonSubheader":
            ctaButtonSubheader == null ? null : ctaButtonSubheader,
        "subtitle": subtitle == null ? null : subtitle,
        "requiredCategoryCodes": requiredCategoryCodes == null
            ? null
            : List<dynamic>.from(requiredCategoryCodes.map((x) => x)),
        "ctaButtonTitle": ctaButtonTitle == null ? null : ctaButtonTitle,
        "ctaButtonHeader": ctaButtonHeader == null ? null : ctaButtonHeader,
        "billingDisclaimer":
            billingDisclaimer == null ? null : billingDisclaimer,
        "voucherCode": voucherCode == null ? null : voucherCode,
        "disclaimer": disclaimer == null ? null : disclaimer,
        "campaignCode": campaignCode == null ? null : campaignCode,
        "billing": billing == null ? null : billing.toJson(),
      };
}

class Meta {
  Meta({
    this.image,
    this.twitterCard,
    this.ogSiteName,
    this.keywords,
    this.twitterAppIdIphone,
    this.description,
    this.ogType,
    this.twitterAppNameGoogleplay,
    this.ogUrl,
    this.label,
    this.canonical,
    this.type,
    this.title,
    this.fbAppId,
    this.twitterSite,
    this.newsKeywords,
    this.root,
    this.twitterAppIdGoogleplay,
    this.twitterAppNameIphone,
  });

  String image;
  String twitterCard;
  String ogSiteName;
  String keywords;
  String twitterAppIdIphone;
  String description;
  String ogType;
  String twitterAppNameGoogleplay;
  String ogUrl;
  String label;
  String canonical;
  String type;
  String title;
  String fbAppId;
  String twitterSite;
  String newsKeywords;
  String root;
  String twitterAppIdGoogleplay;
  String twitterAppNameIphone;

  factory Meta.fromJson(Map<String, dynamic> json) => Meta(
        image: json["image"] == null ? null : json["image"],
        twitterCard: json["twitter_card"] == null ? null : json["twitter_card"],
        ogSiteName: json["og_site_name"] == null ? null : json["og_site_name"],
        keywords: json["keywords"] == null ? null : json["keywords"],
        twitterAppIdIphone: json["twitter_app_id_iphone"] == null
            ? null
            : json["twitter_app_id_iphone"],
        description: json["description"] == null ? null : json["description"],
        ogType: json["og_type"] == null ? null : json["og_type"],
        twitterAppNameGoogleplay: json["twitter_app_name_googleplay"] == null
            ? null
            : json["twitter_app_name_googleplay"],
        ogUrl: json["og_url"] == null ? null : json["og_url"],
        label: json["label"] == null ? null : json["label"],
        canonical: json["canonical"] == null ? null : json["canonical"],
        type: json["type"] == null ? null : json["type"],
        title: json["title"] == null ? null : json["title"],
        fbAppId: json["fb_app_id"] == null ? null : json["fb_app_id"],
        twitterSite: json["twitter_site"] == null ? null : json["twitter_site"],
        newsKeywords:
            json["news_keywords"] == null ? null : json["news_keywords"],
        root: json["root"] == null ? null : json["root"],
        twitterAppIdGoogleplay: json["twitter_app_id_googleplay"] == null
            ? null
            : json["twitter_app_id_googleplay"],
        twitterAppNameIphone: json["twitter_app_name_iphone"] == null
            ? null
            : json["twitter_app_name_iphone"],
      );

  Map<String, dynamic> toJson() => {
        "image": image == null ? null : image,
        "twitter_card": twitterCard == null ? null : twitterCard,
        "og_site_name": ogSiteName == null ? null : ogSiteName,
        "keywords": keywords == null ? null : keywords,
        "twitter_app_id_iphone":
            twitterAppIdIphone == null ? null : twitterAppIdIphone,
        "description": description == null ? null : description,
        "og_type": ogType == null ? null : ogType,
        "twitter_app_name_googleplay":
            twitterAppNameGoogleplay == null ? null : twitterAppNameGoogleplay,
        "og_url": ogUrl == null ? null : ogUrl,
        "label": label == null ? null : label,
        "canonical": canonical == null ? null : canonical,
        "type": type == null ? null : type,
        "title": title == null ? null : title,
        "fb_app_id": fbAppId == null ? null : fbAppId,
        "twitter_site": twitterSite == null ? null : twitterSite,
        "news_keywords": newsKeywords == null ? null : newsKeywords,
        "root": root == null ? null : root,
        "twitter_app_id_googleplay":
            twitterAppIdGoogleplay == null ? null : twitterAppIdGoogleplay,
        "twitter_app_name_iphone":
            twitterAppNameIphone == null ? null : twitterAppNameIphone,
      };
}

class NewsAttributes {
  NewsAttributes({
    this.teams,
    this.offset,
    this.leagues,
    this.logosize,
    this.sort,
    this.content,
    this.enable,
    this.limit,
    this.pinnedId,
    this.lang,
    this.region,
    this.defaultsort,
    this.headshotsize,
    this.filtertypes,
  });

  String teams;
  String offset;
  String leagues;
  String logosize;
  bool sort;
  String content;
  String enable;
  String limit;
  String pinnedId;
  String lang;
  String region;
  bool defaultsort;
  String headshotsize;
  String filtertypes;

  factory NewsAttributes.fromJson(Map<String, dynamic> json) => NewsAttributes(
        teams: json["teams"] == null ? null : json["teams"],
        offset: json["offset"] == null ? null : json["offset"],
        leagues: json["leagues"] == null ? null : json["leagues"],
        logosize: json["logosize"] == null ? null : json["logosize"],
        sort: json["sort"] == null ? null : json["sort"],
        content: json["content"] == null ? null : json["content"],
        enable: json["enable"] == null ? null : json["enable"],
        limit: json["limit"] == null ? null : json["limit"],
        pinnedId: json["_pinnedID"] == null ? null : json["_pinnedID"],
        lang: json["lang"] == null ? null : json["lang"],
        region: json["region"] == null ? null : json["region"],
        defaultsort: json["defaultsort"] == null ? null : json["defaultsort"],
        headshotsize:
            json["headshotsize"] == null ? null : json["headshotsize"],
        filtertypes: json["filtertypes"] == null ? null : json["filtertypes"],
      );

  Map<String, dynamic> toJson() => {
        "teams": teams == null ? null : teams,
        "offset": offset == null ? null : offset,
        "leagues": leagues == null ? null : leagues,
        "logosize": logosize == null ? null : logosize,
        "sort": sort == null ? null : sort,
        "content": content == null ? null : content,
        "enable": enable == null ? null : enable,
        "limit": limit == null ? null : limit,
        "_pinnedID": pinnedId == null ? null : pinnedId,
        "lang": lang == null ? null : lang,
        "region": region == null ? null : region,
        "defaultsort": defaultsort == null ? null : defaultsort,
        "headshotsize": headshotsize == null ? null : headshotsize,
        "filtertypes": filtertypes == null ? null : filtertypes,
      };
}

class Targeting {
  Targeting({
    this.teamAbbrev,
    this.teamId,
  });

  String teamAbbrev;
  String teamId;

  factory Targeting.fromJson(Map<String, dynamic> json) => Targeting(
        teamAbbrev: json["teamAbbrev"] == null ? null : json["teamAbbrev"],
        teamId: json["teamId"] == null ? null : json["teamId"],
      );

  Map<String, dynamic> toJson() => {
        "teamAbbrev": teamAbbrev == null ? null : teamAbbrev,
        "teamId": teamId == null ? null : teamId,
      };
}

class Tier3Nav {
  Tier3Nav({
    this.subNavMenu,
    this.title,
    this.titleShort,
    this.sub,
    this.sub2,
    this.league,
    this.team,
    this.url,
    this.type,
  });

  SubNavMenu subNavMenu;
  String title;
  String titleShort;
  String sub;
  String sub2;
  String league;
  Tier3NavTeam team;
  String url;
  String type;

  factory Tier3Nav.fromJson(Map<String, dynamic> json) => Tier3Nav(
        subNavMenu: json["subNavMenu"] == null
            ? null
            : SubNavMenu.fromJson(json["subNavMenu"]),
        title: json["title"] == null ? null : json["title"],
        titleShort: json["titleShort"] == null ? null : json["titleShort"],
        sub: json["sub"] == null ? null : json["sub"],
        sub2: json["sub2"] == null ? null : json["sub2"],
        league: json["league"] == null ? null : json["league"],
        team: json["team"] == null ? null : Tier3NavTeam.fromJson(json["team"]),
        url: json["url"] == null ? null : json["url"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "subNavMenu": subNavMenu == null ? null : subNavMenu.toJson(),
        "title": title == null ? null : title,
        "titleShort": titleShort == null ? null : titleShort,
        "sub": sub == null ? null : sub,
        "sub2": sub2 == null ? null : sub2,
        "league": league == null ? null : league,
        "team": team == null ? null : team.toJson(),
        "url": url == null ? null : url,
        "type": type == null ? null : type,
      };
}

class SubNavMenu {
  SubNavMenu({
    this.navigation,
    this.navId,
    this.fallback,
  });

  Navigation navigation;
  int navId;
  bool fallback;

  factory SubNavMenu.fromJson(Map<String, dynamic> json) => SubNavMenu(
        navigation: json["navigation"] == null
            ? null
            : Navigation.fromJson(json["navigation"]),
        navId: json["navId"] == null ? null : json["navId"],
        fallback: json["fallback"] == null ? null : json["fallback"],
      );

  Map<String, dynamic> toJson() => {
        "navigation": navigation == null ? null : navigation.toJson(),
        "navId": navId == null ? null : navId,
        "fallback": fallback == null ? null : fallback,
      };
}

class Navigation {
  Navigation({
    this.links,
    this.attributes,
    this.text,
    this.title,
    this.ref,
    this.items,
  });

  List<TeamLink> links;
  NavigationAttributes attributes;
  String text;
  String title;
  String ref;
  List<NavigationItem> items;

  factory Navigation.fromJson(Map<String, dynamic> json) => Navigation(
        links: json["links"] == null
            ? null
            : List<TeamLink>.from(
                json["links"].map((x) => TeamLink.fromJson(x))),
        attributes: json["attributes"] == null
            ? null
            : NavigationAttributes.fromJson(json["attributes"]),
        text: json["text"] == null ? null : json["text"],
        title: json["title"] == null ? null : json["title"],
        ref: json["\u0024ref"] == null ? null : json["\u0024ref"],
        items: json["items"] == null
            ? null
            : List<NavigationItem>.from(
                json["items"].map((x) => NavigationItem.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "links": links == null
            ? null
            : List<dynamic>.from(links.map((x) => x.toJson())),
        "attributes": attributes == null ? null : attributes.toJson(),
        "text": text == null ? null : text,
        "title": title == null ? null : title,
        "\u0024ref": ref == null ? null : ref,
        "items": items == null
            ? null
            : List<dynamic>.from(items.map((x) => x.toJson())),
      };
}

class NavigationAttributes {
  NavigationAttributes({
    this.root,
  });

  String root;

  factory NavigationAttributes.fromJson(Map<String, dynamic> json) =>
      NavigationAttributes(
        root: json["root"] == null ? null : json["root"],
      );

  Map<String, dynamic> toJson() => {
        "root": root == null ? null : root,
      };
}

class NavigationItem {
  NavigationItem({
    this.links,
    this.title,
    this.ref,
  });

  List<TeamLink> links;
  String title;
  String ref;

  factory NavigationItem.fromJson(Map<String, dynamic> json) => NavigationItem(
        links: json["links"] == null
            ? null
            : List<TeamLink>.from(
                json["links"].map((x) => TeamLink.fromJson(x))),
        title: json["title"] == null ? null : json["title"],
        ref: json["\u0024ref"] == null ? null : json["\u0024ref"],
      );

  Map<String, dynamic> toJson() => {
        "links": links == null
            ? null
            : List<dynamic>.from(links.map((x) => x.toJson())),
        "title": title == null ? null : title,
        "\u0024ref": ref == null ? null : ref,
      };
}

class Tier3NavTeam {
  Tier3NavTeam({
    this.teamId,
    this.sportId,
    this.leagueId,
    this.teamName,
    this.teamLocation,
    this.recordSummary,
    this.standingSummary,
  });

  String teamId;
  String sportId;
  String leagueId;
  String teamName;
  String teamLocation;
  String recordSummary;
  String standingSummary;

  factory Tier3NavTeam.fromJson(Map<String, dynamic> json) => Tier3NavTeam(
        teamId: json["teamId"] == null ? null : json["teamId"],
        sportId: json["sportId"] == null ? null : json["sportId"],
        leagueId: json["leagueId"] == null ? null : json["leagueId"],
        teamName: json["teamName"] == null ? null : json["teamName"],
        teamLocation:
            json["teamLocation"] == null ? null : json["teamLocation"],
        recordSummary:
            json["recordSummary"] == null ? null : json["recordSummary"],
        standingSummary:
            json["standingSummary"] == null ? null : json["standingSummary"],
      );

  Map<String, dynamic> toJson() => {
        "teamId": teamId == null ? null : teamId,
        "sportId": sportId == null ? null : sportId,
        "leagueId": leagueId == null ? null : leagueId,
        "teamName": teamName == null ? null : teamName,
        "teamLocation": teamLocation == null ? null : teamLocation,
        "recordSummary": recordSummary == null ? null : recordSummary,
        "standingSummary": standingSummary == null ? null : standingSummary,
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
