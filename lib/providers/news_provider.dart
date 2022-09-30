import 'package:flutter/cupertino.dart';
import 'package:solusidigital/model/news.dart';
import 'package:solusidigital/service/news_service.dart';

class NewsProvider with ChangeNotifier {
  List<News> _news = [];
  List<News> get news => _news;
  set news(List<News> news) {
    _news = news;
    notifyListeners();
  }

  Future<void> getNews() async {
    try {
      List<News> news = await NewsService().getNews();
      _news = news;
    } catch (e) {
      print(e);
    }
  }
}
