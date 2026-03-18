import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';

class RightColumn extends StatefulWidget {
  const RightColumn({super.key});

  @override
  State<RightColumn> createState() => _RightColumnState();
}

class _RightColumnState extends State<RightColumn> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Stack(
            children: [
              Image.asset(
                'assets/image/mens_hoodies.png',
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: 127,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Men’s',
                      style: AppTextStyles.Headline.copyWith(color: White),
                    ),
                    Text(
                      'hoodies',
                      style: AppTextStyles.Headline.copyWith(color: White),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
