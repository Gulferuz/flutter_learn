import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';

class TemplateAdressPage extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const TemplateAdressPage({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 343,
        height: 108,
        decoration: BoxDecoration(
          color: White,
          borderRadius: BorderRadius.circular(8.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Jane Doe',
                    style: GoogleFonts.metrophobic(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Black,
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                      minimumSize: Size.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),

                    onPressed: onPressed,
                    child: Text(
                      text,
                      style: AppTextStyles.text14x.copyWith(color: Primary),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    '3 Newbridge Court',
                    style: GoogleFonts.metrophobic(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Black,
                    ),
                  ),
                  Text(
                    'Chino Hills, CA 91709, United States',
                    style: GoogleFonts.metrophobic(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Black,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
