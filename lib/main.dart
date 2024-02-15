import 'package:flutter/material.dart';
import 'package:newsapp/pages/homepage.dart';
//import 'package:newsapp/services/newserv.dart';
//import 'package:dio/dio.dart';
void main() {

  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),

    );
  }}