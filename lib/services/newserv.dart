 import 'package:newsapp/models/article_model.dart';
 import 'package:dio/dio.dart';
//import'package:flutter/material.dart';
class NewsService{
  final Dio dio;
  NewsService(this.dio);
  Future<List<ArticleModel>> getNews({required String category}) async {
    try {
      var response = await dio.get
        (
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=3c88955c487e4d9db668f011dd85e737&category=$category');

      Map<String, dynamic>jsonData = response.data;
      List<dynamic> articles = jsonData['articles']; //list of maps
      List<ArticleModel>articlesList = [];

      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          subtitle: article['description'],
        );

        articlesList.add(articleModel);
      }
      return articlesList;
    }
    catch (e) {
      return [];
    }
  }}