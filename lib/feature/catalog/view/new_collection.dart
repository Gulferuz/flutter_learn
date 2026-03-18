import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/ui_components/bottom_navigation_bar.dart';
import 'package:untitled/feature/catalog/widgets/left_column.dart';
import 'package:untitled/feature/catalog/widgets/right_column.dart';

@RoutePage(name: 'NewCollectionRoute')
class NewCollection extends StatefulWidget {
  const NewCollection({super.key});

  @override
  State<NewCollection> createState() => _NewCollectionState();
}

class _NewCollectionState extends State<NewCollection> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // bottomNavigationBar: MyBottomNavigationBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Stack(
                children: [
                  Image.asset(
                    'assets/image/girl.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Positioned(
                    right: 20,
                    bottom: 35,
                    child: Text(
                      'New collection',
                      style: AppTextStyles.Headline.copyWith(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(child: LeftColumn()),
                  Expanded(child: RightColumn()),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
