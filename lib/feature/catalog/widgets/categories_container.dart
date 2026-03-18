import 'package:flutter/cupertino.dart';

import '../../../core/constants/app_text_styles.dart';

class CategoriesContainer extends StatefulWidget {
  const CategoriesContainer({super.key});

  @override
  State<CategoriesContainer> createState() => _CategoriesContainerState();
}

class _CategoriesContainerState extends State<CategoriesContainer> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 343,
        height: 100,
        decoration: BoxDecoration(
          color: Color(0xFFDB3022),
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Center(
          child: Column(
            spacing: 0,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                  'SUMMER SALES',
                  style: AppTextStyles.Headline2
              ),
              Text(
                  'Up to 50% off',
                  style: AppTextStyles.text14x
              ),
            ],
          ),
        ),
      ),
    );
  }
}
