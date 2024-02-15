import 'package:flutter/material.dart';
import 'package:newsapp/models/category_model.dart';
import 'package:newsapp/widgets/categeoryview.dart';
//import 'package:newsapp/widgets/categorieslistview.dart';
class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key,required this.category});
final CategoryModel category;
  // This widget is the root of your application.
  @override

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.of(context).
         push(MaterialPageRoute
          (builder: (context){
          return  CategorView(category:category.txt,
          );
        },
        ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 16),
        child: Container(
          height: 85,
          width: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: AssetImage(category.image),
              fit: BoxFit.fill,
            ),
          //  color: Colors.amberAccent,

          ),
          child:  Center(
            child: Text(category.txt,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 18,
              ),
            ),
          ),
        ),
      ),
    );
  }}