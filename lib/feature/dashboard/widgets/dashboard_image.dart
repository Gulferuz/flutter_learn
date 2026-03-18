import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';

import '../../../core/router/app_router.gr.dart';

class DashboardImage extends StatelessWidget {
  const DashboardImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/image/fashion.png',
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        Positioned(
          left: 20,
          bottom: 53,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Fashion',
                style: GoogleFonts.metrophobic(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  color: White,
                  height: 1,
                ),
              ),
              Text(
                'Sale',
                style: GoogleFonts.metrophobic(
                  fontSize: 48,
                  fontWeight: FontWeight.w700,
                  color:White,
                  height: 1,
                ),
              ),
              SizedBox(height: 16),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  fixedSize: Size(164, 30),
                  backgroundColor: Primary,
                ),
                onPressed: () {
                  context.router.maybePop();
                  context.router.push(SalePageRoute());
                },
                child: Text(
                  'Check',
                  style: AppTextStyles.text14x,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
