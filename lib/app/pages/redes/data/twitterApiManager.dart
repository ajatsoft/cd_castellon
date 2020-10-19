import 'dart:convert';

import 'package:cd_castellon/app/pages/redes/data/models/tweetList.dart';
import 'package:tweet_ui/models/api/tweet.dart';
import 'package:twitter_api/twitter_api.dart';

import 'constants.dart';
import 'models/twitter_model.dart';

class TwitterApiManager {
  static TwitterApiManager _instance = TwitterApiManager._internal();

  factory TwitterApiManager() {
    return _instance;
  }

  TwitterApiManager._internal();

  final _twitterAuth = twitterApi(
      consumerKey: Constants.TWITTER_API_KEY,
      consumerSecret: Constants.TWITTER_API_SECRET_KEY,
      token: Constants.TWITTER_API_TOKEN,
      tokenSecret: Constants.TWITTER_API_TOKEN_SECRET);

  Future<List<Tweet>> getNextStatuses(double maxId) async {
    var response = await _twitterAuth
        .getTwitterRequest("GET", "statuses/user_timeline.json", options: {
      "screen_name": "CD_Castellon",
      "count": "50",
      "tweet_mode": "extended",
      "max_id": maxId.toString()
    });

    return TweetList.fromJson(json.decode(response.body)).tweets;
  }

  Future<List<Tweet>> getStatuses() async {
    var response = await _twitterAuth
        .getTwitterRequest("GET", "statuses/user_timeline.json", options: {
      "screen_name": "CD_Castellon",
      "count": "50",
      "tweet_mode": "extended",
    });

    return TweetList.fromJson(json.decode(response.body)).tweets;
  }

  void printWrapped(String text) {
    final pattern = new RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  Future getTweet() async {
    final response = await _twitterAuth.getTwitterRequest(
        'GET', 'search/tweets.json', options: {
      'q': 'cd castellon',
      'count': '1000',
      'lang': 'en',
      'exclude_replies': 'true'
    });

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      return data['statuses'].map((item) {
        return Twitter(
            name: item['user']['name'],
            username: item['user']['screen_name'],
            image: item['user']['profile_image_url'],
            status: item['text'],
            createdAt: item['created_at']);
      }).toList();
    }
  }

//   Future<List> getTwitterTimeline() async {
//     Future twitterRequest = _twitterAuth.getTwitterRequest(
//       "GET",
//       "statuses/user_timeline.json",
//       options: {
//         // "user_id": "19025957",
//         "screen_name": "CD_Castellon",
//         "count": "3200",
//         // "trim_user": "true",
//         // "tweet_mode": "extended",
//       },
//     );
//     var res = await twitterRequest;
// // Print off the response
//     var tweets = json.decode(res.body);
//     return tweets;
//   }
}
