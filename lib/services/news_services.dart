import 'package:dio/dio.dart';
import 'package:new_app/models/article_model.dart';
class NewsServices {
   final Dio dio;
   //final Dio dio = Dio();
   NewsServices(this.dio); 
  //NewsServices({required this.dio});

    

// getnews is a method
  Future<List<ArticleModel>> getNews() async {  
    //(not recommended) or var response = await dio.get('https://newsapi.org/v2/headlines?country=eg&apiKey=2ba79a18fdb6445daae819948c149be5&category=general');
  Response response = await dio.get('https://newsapi.org/v2/top-headlines?country=us&apiKey=2ba79a18fdb6445daae819948c149be5');
  // print(response);
   var jsonData = response.data;
   List<dynamic> articles = jsonData['articles'];
   List<ArticleModel> articlesList = [];

   for (var article in articles) {
    ArticleModel articleModel = ArticleModel(
      imagee: article['urlToImage'],
      title: article['title'],
      subtitle: article['description']);
     articlesList.add(articleModel); 
   }
   return articlesList;   //علشان انا حددت نوع ال return اللى هو Future<List<ArticleModel>>
  }  //convert map to object


  // void getSportsNews() async {
  // final response = await dio.get('https://newsapi.org/v2/everything?q=bitcoin&apiKey=2ba79a18fdb6445daae819948c149be5');
  // print(response);
  // }
  
}