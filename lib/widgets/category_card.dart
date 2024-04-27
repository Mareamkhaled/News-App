import 'package:flutter/material.dart';
import 'package:new_app/models/category_model.dart';

class CategoryCard extends StatelessWidget {
   const CategoryCard({super.key, required this.category});
 final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16),
      child: Container(
           height: 85,
           width: 160,
           decoration: BoxDecoration(
           // color: Colors.orange,
           
              borderRadius: BorderRadius.circular(16),
              image: DecorationImage(
                fit: BoxFit.fill,
                image: AssetImage(category.image)
                )
           ),
           child: Center(
             child: Text(category.categoryName, style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w500
                )),
           ),
         ),
    );
  }
}