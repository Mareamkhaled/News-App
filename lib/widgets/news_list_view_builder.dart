import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/models/article_model.dart';
import 'package:new_app/services/news_services.dart';
import 'package:new_app/widgets/news_list_view.dart';

class NewsListViewBuilder extends StatefulWidget {
  const NewsListViewBuilder({super.key});

  @override
  State<NewsListViewBuilder> createState() => _NewsListViewBuilderState();
}

class _NewsListViewBuilderState extends State<NewsListViewBuilder> {
     List<ArticleModel> articles =  [];
    bool isLoading = true;
    @override
  void initState() {  
   getGeneralNews();
    super.initState();
  }

    Future<void> getGeneralNews() async {
      articles= await NewsServices(Dio()).getNews();
      isLoading = false;
      setState(() {
        
      });
    }
  @override
  Widget build(BuildContext context) {
    return isLoading? const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) :NewsListView(articles: articles,);
  }
}
