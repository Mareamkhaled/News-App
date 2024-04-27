import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:new_app/services/news_services.dart';
import 'package:new_app/views/home_view.dart';

void main() {
  // getNews();   //NEWS
  NewsServices(Dio()).getNews();
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
       home: HomeView(),
    );
  }
}