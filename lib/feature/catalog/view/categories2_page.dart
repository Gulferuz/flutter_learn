import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/ui_components/bottom_navigation_bar.dart';

class Categories2Page extends StatefulWidget {
  const Categories2Page({super.key});

  @override
  State<Categories2Page> createState() => _Categories2PageState();
}

class _Categories2PageState extends State<Categories2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: MyBottomNavigationBar(),
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        title: Text(
          'Categories',
          style: AppTextStyles.Headline3,
        ),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
        ],
      ),
      body: SafeArea(
        child: ElevatedButton(onPressed: () {}, child: Text('data')),
      ),
    );
  }
}
