import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';

class TemplateContainerCategory extends StatefulWidget {
  const TemplateContainerCategory({super.key});

  @override
  State<TemplateContainerCategory> createState() =>
      _TemplateContainerCategoryState();
}

class _TemplateContainerCategoryState extends State<TemplateContainerCategory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            for (int i = 1; i < 10; i++)
              Container(
                width: 343,
                height: 100,
                decoration: BoxDecoration(
                  color: White,
                  borderRadius: BorderRadius.circular(6.0),
                ),

                child: Padding(
                  padding: const EdgeInsets.all(6.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'New',
                        style: AppTextStyles.Headline3,
                      ),
                      Image.asset('assets/image/style.png'),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
