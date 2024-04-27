import 'package:flutter/material.dart';
import 'package:new_app/models/category_model.dart';
import 'package:new_app/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key,});
final List<CategoryModel> categories =const [
   CategoryModel(image: 'assets/business.jpg', categoryName: 'Business'),
   CategoryModel(image: 'assets/entertainment.jpg', categoryName: 'Entertainment'),
   CategoryModel(image: 'assets/health.jpg', categoryName: 'Health'),
   CategoryModel(image: 'assets/science.jpg', categoryName: 'Science'),
   CategoryModel(image: 'assets/technology.jpeg', categoryName: 'Technology'),
   CategoryModel(image: 'assets/general.jpg', categoryName: 'General'),

 

];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 85,
     
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
       scrollDirection: Axis.horizontal,
       itemCount: categories.length,
       itemBuilder: (context, index) {
         
       
       return CategoryCard(
        category: categories[index],
       );
      
       },),
    );
  }
}
