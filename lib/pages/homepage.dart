//import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
//import 'package:newsapp/services/newserv.dart';
import 'package:newsapp/widgets/categorieslistview.dart';
//import 'package:newsapp/widgets/categorycard.dart';
//import 'package:newsapp/widgets/news_tile.dart';
//import 'package:newsapp/models/article_model.dart';
//import 'package:newsapp/widgets/newslistview.dart';
import 'package:newsapp/widgets/newslistviewbuilder.dart';
class HomeView extends StatelessWidget {
  const HomeView({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.transparent,
        title:const Row(
          mainAxisSize: MainAxisSize.min,
          children:[
            Text('News '
              ,style: TextStyle(
                  color: Colors.black
              ),
            ),
             Text(' Cloud'
              ,style: TextStyle(
                  color: Colors.orange
              ) ,
            ),
          ],
        ),
      ),
      body: const Padding(
        padding:  EdgeInsets.symmetric(horizontal: 16),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers:[
            SliverToBoxAdapter(
                child: CategoryList()),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 32,
              ),
            ),
            Newslistviewbuilder(
              category :'general',
            ),
          ],
        ),

        //const SliverToBoxAdapter(
        //   child: NewsListView(),
        //  ),


      ),
    );
  }
}

