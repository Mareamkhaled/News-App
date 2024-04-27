import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:new_app/models/article_model.dart";
import "package:new_app/services/news_services.dart";
import "package:new_app/widgets/news_tile.dart";
//import "package:new_app/models/news_model.dart";
//import "package:new_app/services/news_services.dart";
//import "package:new_app/widgets/news_tile.dart";

class NewsListView extends StatefulWidget {
  const NewsListView({super.key,});

  @override
  State<NewsListView> createState() => _NewsListViewState();
}

class _NewsListViewState extends State<NewsListView> {
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
     //final li = lists. length; 
     //////////////////////////////////////////////////////
     //*******************NewsServices(Dio()).getNews();  // this way will call this method a lot and this is bad
       return isLoading ? 
      const SliverToBoxAdapter(child: Center(child: CircularProgressIndicator())) :
        SliverList(delegate: SliverChildBuilderDelegate(
                  childCount: articles.length,
                  (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.only(bottom: 22),
                      child: NewsTile(
                        articleModel: articles[index] ,
                      ),
                    );
                 },));
    
   
    
    
    
    // SliverList(delegate: SliverChildBuilderDelegate(
  //   childCount: 6,
  //             (context, index) {
  //               return const NewsListView();
  //             }));
   
  
   
   // ListView.builder(
    //   //physics: const BouncingScrollPhysics(),
    //   shrinkWrap: true,
    //   physics: NeverScrollableScrollPhysics(),
    //     itemCount: lists.length,
    //     itemBuilder: (context, index) {
    //       return Padding(
    //         padding: const EdgeInsets.only(bottom: 22),
    //         child: NewsTile(
    //           list: lists[index],
    //         ),
    //       );
    //     });
  }
}
