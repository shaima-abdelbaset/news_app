import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:newsapp/models/article_model.dart';
import 'package:newsapp/services/newserv.dart';
import 'package:newsapp/widgets/newslistview.dart';
/*
class  extends StatefulWidget {
  const Newslistviewbuilder({
    super.key,
  });

  @override
  State<Newslistviewbuilder> createState() => _NewslistviewbuilderState();
}

class _NewslistviewbuilderState extends State<Newslistviewbuilder> {
 // List<ArticleModel> articles=[];
  bool isloading=true;
  @override
  void initState(){
    super.initState();
    getGeneralNews();
  }
  Future<void>getGeneralNews() async{
    articles=await NewsService(Dio()).getNews();
    isloading=false;
    setState(() {

    });
  }
 */

  //class Newslistviewbuilder extends StatelessWidget {
  //@override
  //Widget build(BuildContext context) {
    //return FutureBuilder(
      //future:NewsService(Dio()).getNews() ,
        //builder: (context,snapshot){
      //if (snapshot.hasData) {
        //return NewsListView(
          //  articles: snapshot.data!,
        //);
      //}else if (snapshot.hasError){
        //  const  SliverToBoxAdapter(
          //  child: Text('ops error'),
      //);
        //  else {
          //  return const SliverToBoxAdapter(
            //    child: Center(
              //      child: CircularProgressIndicator(),),) ;
      //}
    //}});

    /*
    return isloading?
    SliverToBoxAdapter(
        child: Center(
            child: CircularProgressIndicator())) :
        articles.isNotEmpty?
    NewsListView(
        articles: articles
    ):
           const  SliverToBoxAdapter(
              child: Text('ops error'),
            );

     */
 // }
//}.
class Newslistviewbuilder extends StatefulWidget {
  const Newslistviewbuilder({super.key,required this.category});
  final String category;

  @override
  State<Newslistviewbuilder> createState() => _NewslistviewbuilderState();
}

class _NewslistviewbuilderState extends State<Newslistviewbuilder> {
  List<ArticleModel>articles=[];
  //bool isloading=true;
  var future;
  @override
  void initState(){
    super.initState();
   future= NewsService(Dio()).getNews(category:widget.category );
   // getGeneralNews();
  }
  //Future<void>getGeneralNews() async {
    //articles = await NewsService(Dio()).getNews(category:category);
    //isloading = false;
    //setState(() {});
 // }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
      future: future,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return NewsListView(
            articles: snapshot.data!,
          );
        } else if (snapshot.hasError) {
          return const SliverToBoxAdapter(
            child: Text('ops error'),
          );
        } else {
          return const SliverToBoxAdapter(
            child: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }}