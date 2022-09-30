import 'package:solusidigital/model/news.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class NewsService {
  Future<List<News>> getNews() async {
    var urlNwes =
        Uri.parse('https://newsapi.org/v2/everything?domains=wsj.com');
    String tkn = 'c0fe8519c2fd463b99f17ce161373e62';

    var response = await http.get(
      urlNwes,
      headers: <String, String>{
        'Access-Control-Allow-Origin': "*",
        'Access-Control-Allow-Methods': "GET, HEAD",
        'Content-Type': 'application/json',
        'Authorization': tkn
      },
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['articles'];
      List<News> news = [];
      for (var item in data) {
        news.add(News.fromJson(item));
      }

      return news;
    } else {
      throw Exception('Gagal Mendaftar');
    }
  }
}
