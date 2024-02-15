import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/categorycard.dart';
class CategoryList extends StatelessWidget {
   const CategoryList({super.key});

  // This widget is the root of your application.
   final List<CategoryModel> categories = const [
   CategoryModel(
     image: 'assets/bu.jpeg',
     txt: 'Business',
   ),
    CategoryModel(
   image:'assets/th.jpeg' ,
     txt: 'Entertainment',
   ),
   CategoryModel(
   image:'assets/th (1).jpeg' ,
     txt: 'Health',
   ),
   CategoryModel(
   image: 'assets/OIP.jpeg',
     txt: 'Science',
   ),
   CategoryModel(
   image:'assets/download.jpeg' ,
     txt: 'Technology',
   ),
   CategoryModel(
   image: 'assets/download (1).jpeg',
     txt: 'Sports',
   ),
   CategoryModel(
   image: 'assets/download (2).jpeg',
     txt: 'General',
   ),
   ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 85,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return  CategoryCard(
            category: categories[index],
            );

          }

      ),
    );
  }}