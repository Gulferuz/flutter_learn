import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';

class LeftColumn extends StatefulWidget {
  const LeftColumn({super.key});

  @override
  State<LeftColumn> createState() => _LeftColumnState();
}

class _LeftColumnState extends State<LeftColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 196,
            decoration: BoxDecoration(color: White),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Summer',
                  style: AppTextStyles.Headline.copyWith(color: Primary),
                ),
                Text(
                  'sale',
                  style: AppTextStyles.Headline.copyWith(color:Primary),
                ),
              ],
            ),
          ),
          Stack(
            children: [
              Image.asset(
                'assets/image/girl.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 20,
                bottom: 12,
                child: Text(
                  'Black',
                  style: AppTextStyles.Headline.copyWith(color: White),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
