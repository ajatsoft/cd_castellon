import 'dart:io';

class AdsConfiguration {
  String getAppId() {
    if (Platform.isIOS) {
      return "IOS_APP_ID";
    } else if (Platform.isAndroid) {
      return "ajatsoft.cd_castellon";
    }
    return null;
  }

  static String getNativeAdNewsList() {
    if (Platform.isIOS) {
      return "ca-app-pub-5849370961147264/5112428593";
    } else if (Platform.isAndroid) {
      return "ca-app-pub-5849370961147264/2677836947";
    }
    return null;
  }

  static String getNativeAdNewsPage() {
    if (Platform.isIOS) {
      return "ca-app-pub-5849370961147264/3175696243";
    } else if (Platform.isAndroid) {
      return "ca-app-pub-5849370961147264/8121735319";
    }
    return null;
  }

  static String getBanerNextPartido() {
    if (Platform.isIOS) {
      return "ca-app-pub-5849370961147264/5011344487";
    } else if (Platform.isAndroid) {
      return "ca-app-pub-5849370961147264/8105762750";
    }
    return null;
  }
}
