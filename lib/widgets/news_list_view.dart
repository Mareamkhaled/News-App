//import "package:dio/dio.dart";
import "package:flutter/material.dart";
import "package:new_app/models/article_model.dart";
import "package:new_app/widgets/news_tile.dart";
class NewsListView extends StatelessWidget{
  final  List<ArticleModel> articles;
    // bool isLoading = true;
    const NewsListView({super.key, required this.articles, });
    @override
  

    // Future<void> getGeneralNews() async {
    //   articles= await NewsServices(Dio()).getNews();
    //   // isLoading = false;
    //   setState(() {
        
    //   });
  @override
  Widget build(BuildContext context) {
     //final li = lists. length; 
     //////////////////////////////////////////////////////
     //*******************NewsServices(Dio()).getNews();  // this way will call this method a lot and this is bad
       return SliverList(
                  delegate: SliverChildBuilderDelegate(
                  childCount: articles.length,
                  (context, index) {
                    return  Padding(
                      padding: const EdgeInsets.only(bottom: 22),
                      child: NewsTile(
                        articleModel: articles[index] ,
                      ),
                    );
                 },
                 )
                 );
    
   
    
    
    
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
    
