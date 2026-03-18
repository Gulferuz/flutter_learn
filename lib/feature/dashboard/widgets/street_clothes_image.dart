import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_text_styles.dart';

class StreetClothesImage extends StatelessWidget {
  const StreetClothesImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/image/street.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 8,
          bottom: 16,
          child: Text(
            'Street clothes',
            style: AppTextStyles.Headline
          ),
        ),
      ],
    );
  }
}
