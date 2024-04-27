import 'package:flutter/material.dart';
import 'package:new_app/widgets/categories_list_view.dart';
import 'package:new_app/widgets/news_list_view_builder.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});
   
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'News',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
              Text(
                'Cloud',
                style: TextStyle(
                    color: Colors.orange,
                    fontSize: 25,
                    fontWeight: FontWeight.w500),
              ),
            ],
          ),
        ),
         body: 
        //   const CustomScrollView(
        //   slivers: [
        //     SliverToBoxAdapter(child: CategoriesListView()),
        //     SliverToBoxAdapter(
        //       child: SizedBox(
        //         height: 32,
        //        ),
        //     ),
          //     // const SliverToBoxAdapter(
        //     //  child:  NewsListView()
        //     // )
        //   ],
        //  )
         
         
         const Padding(
           padding: EdgeInsets.symmetric(horizontal: 16),
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: CategoriesListView()),
                SliverToBoxAdapter(child: SizedBox(
                height: 32, 
                 )),
                 NewsListViewBuilder(),
                // SliverToBoxAdapter( child: NewsListView())
              ],
            ),


          //  child: const Column(
          //   children: [
          //     CategoriesListView(),
          //     SizedBox(
          //       height: 32,
          //     ),
          //     Expanded(child: NewsListView()),
          //   ],
          //          ),
         )
        
        );
  }

  
}

