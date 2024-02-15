import 'package:flutter/material.dart';
import 'package:newsapp/widgets/newslistviewbuilder.dart';
class CategorView extends StatelessWidget {
  const CategorView({super.key,required this.category});
final String category;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body:CustomScrollView(
          slivers: [
            Newslistviewbuilder(
              category:category ,
            )
          ],
        )
    );}}
