import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/dashboard/widgets/street_clothes_image.dart';

import 'package:untitled/feature/dashboard/widgets/template_container.dart';
import 'package:untitled/feature/dashboard/widgets/view_all_page.dart';

import '../../../ui_components/bottom_navigation_bar.dart';

@RoutePage(name: 'SalePageRoute')
class SalePage extends StatefulWidget {
  const SalePage({super.key});

  @override
  State<SalePage> createState() => _SalePageState();
}

class _SalePageState extends State<SalePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: MyBottomNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              StreetClothesImage(),
              ViewAllPage(
                text: 'Sale',
                text2: 'Super summer sale',
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
              ViewAllPage(text: 'New', onPressed: () {}, text2: 'You’ve never seen it before!'),
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
      ),
    );
  }
}
