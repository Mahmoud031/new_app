import 'package:dio/dio.dart';
import 'package:news_app2/models/article_model.dart';

final dio = Dio();
Future<List<ArticleModel>> getNews() async {
   var response = await dio.get(
      'https://newsapi.org/v2/top-headlines?apiKey=bc92c2a41bc84396813f37a74c3e619d&country=us&category=sport');
  //علي حسب نوع البيانات بحدد الداتا تايب سواء ليست او ماب
  Map<String, dynamic> jsonData = response.data;

  List<dynamic> articles = jsonData['articles'];

  List<ArticleModel> articlesList = [];

  for (var article in articles) {
    ArticleModel articleModel = ArticleModel(
        image: article['urlToImage'], title: article['title'], subTitle: article['description']);
    articlesList.add(articleModel);
  }
  return articlesList;
}
