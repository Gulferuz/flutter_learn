import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/catalog/view/categories_page.dart';
import 'package:untitled/feature/cart/view/my_bag_page.dart';
import 'package:untitled/feature/dashboard/widgets/dashboard_image.dart';
import 'package:untitled/feature/dashboard/widgets/view_all_page.dart';
import 'package:untitled/feature/favorites/favorite_page.dart';

import 'package:untitled/feature/profile/view/my_orders_page.dart';
import 'package:untitled/feature/profile/view/my_profile.dart';
import 'package:untitled/feature/catalog/view/new_collection.dart';
import 'package:untitled/feature/dashboard/view/sale_page.dart';
import 'package:untitled/feature/dashboard/widgets/template_container.dart';

import '../../../ui_components/bottom_navigation_bar.dart';

@RoutePage(name: 'DashboardPageRoute')
class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  int selectedIndex = 0;
  final List<Widget> widgetOptions = [
    MainPage(),
    MyBagPage(),
    FavoritePage(),
    MyProfile(),
    MyOrdersPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MyBottomNavigationBar(
        selectedIndex: selectedIndex,
        onSelectedBottom: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
      body: SafeArea(child: widgetOptions.elementAt(selectedIndex)),
    );
  }
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            DashboardImage(),
            ViewAllPage(
              text: 'New',
              text2: 'You’ve never seen it before!',
              onPressed: () {},
            ),
            TemplateContainer(
              text: '-20%',
              text2: '10',
              text3: 'Dorothy Perkins',
              text4: 'Evening Dress',
              text5: '15\$',
              text6: '12\$',
            ),
          ],
        ),
      ),
    );
  }
}
