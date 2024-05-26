import 'package:dio/dio.dart';
import 'package:newsapp/models/Article_models.dart';

class NewsService {

  final Dio dio = Dio();
  final String categoryName;

  NewsService(this.categoryName);
  Future<List<ArticleModels>> getNews() async {
    Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&category=$categoryName&apiKey=417a60d4f8134fd2b2d12ef1634685a8");
    Map<String, dynamic> jsonData = response.data;
    List<dynamic> articles = jsonData["articles"];
    List<ArticleModels> articleList = [];


    for (var i in articles) {
      ArticleModels articleModel = ArticleModels(
        image: i["urlToImage"],
        title: i["title"],
        subtitle: i["description"],
      );
      articleList.add(articleModel);
    }

    return articleList;
  }
}