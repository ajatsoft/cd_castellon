import 'dart:convert';

import 'package:http/http.dart';

import 'models/youtube_model.dart';

class YoutubeService {
  Client client = Client();

  Future searchVideo(keyword) async {
    try {
      final response = await client.get(
          'https://www.googleapis.com/youtube/v3/search?part=snippet&channelId=UCs3Gqvp1tO-nK-XNzFlopsg&'
                  'q=' +
              keyword +
              '&key=AIzaSyBy6osMQFfaE_niFM1HHjmd484pgjSNx-o&maxResults=7');

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data['items'].map((item) {
          return Youtube(
              id: item['id']['videoId'],
              title: item['snippet']['title'],
              thumbnail: item['snippet']['thumbnails']['medium']['url'],
              channel: item['snippet']['channelTitle'],
              published: item['snippet']['publishedAt']);
        }).toList();
      }
    } catch (error) {
      print(error);
    }
  }
}
