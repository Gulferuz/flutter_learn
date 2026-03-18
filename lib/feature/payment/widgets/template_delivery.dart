import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';

class TemplateDelivery extends StatelessWidget {
  const TemplateDelivery({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 72,
          width: 100,
          decoration: BoxDecoration(
            color: White,
            borderRadius: BorderRadius.circular(8.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/image/fedex.png'),
              Text(
                ' 2-3 days',
                style: GoogleFonts.metrophobic(
                  fontSize: 11,
                  fontWeight: FontWeight.w400,
                  color: Color(0XFF9B9B9B),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
