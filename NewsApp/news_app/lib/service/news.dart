import 'package:dio/dio.dart';
import 'package:news_app/model/news_model.dart';

class NewsService {
  GetNews() async {
    final String apiket;
    final dio = Dio();
    final response = await dio.get(
      'https://newsapi.org/v2/top-headlines?country=us&category=business&apiKey=be4a937a4f284462be1dd1a644c7f2a3',
    );
   List<NewsModel> News =[
    

   ];
  }
}
