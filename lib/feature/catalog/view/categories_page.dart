import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/feature/catalog/widgets/categories_container.dart';
import 'package:untitled/ui_components/bottom_navigation_bar.dart';
import 'package:untitled/feature/catalog/widgets/template_container_category.dart';

class CategoriesPage extends StatefulWidget {
  const CategoriesPage({super.key});

  @override
  State<CategoriesPage> createState() => _CategoriesPageState();
}

class _CategoriesPageState extends State<CategoriesPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        // bottomNavigationBar: MyBottomNavigationBar(),
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          title: Text(
            'Categories',
            style: AppTextStyles.Headline3,
          ),
          centerTitle: true,
          actions: [
            IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
          ],
          bottom: TabBar(
            labelColor:Black,
            unselectedLabelColor: Primary,
            tabs: [
              Text(
                'Women',
                style: AppTextStyles.regular_16x
              ),
              Text(
                'Men',
                style: AppTextStyles.regular_16x,
              ),
              Text(
                'Kids',
                style: AppTextStyles.regular_16x,
              ),
            ],
          ),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 16),
                CategoriesContainer(),
                TemplateContainerCategory(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
