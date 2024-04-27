import 'package:flutter/material.dart';
import 'package:new_app/models/article_model.dart';


class NewsTile extends StatelessWidget {
  const NewsTile({super.key, required this.articleModel});
//final NewsModel list;
 final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            articleModel.imagee!
            
            ,height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
          
          )
            
            ),
            const SizedBox(
              height: 12,
            ),
             Text(
              articleModel.title
            , overflow: TextOverflow.ellipsis,
             maxLines: 2,
            style: const TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontWeight: FontWeight.w500
            ),
            
            ),
            const SizedBox(
              height: 8,
            ),
             Text(
                 articleModel.subtitle?? '', 
             maxLines: 2,
            style: const TextStyle(
              color: Color.fromARGB(255, 143, 142, 142),
              fontSize: 14,
              fontWeight: FontWeight.w500
            ),
            
            )
          
      ],
    );
  }
}