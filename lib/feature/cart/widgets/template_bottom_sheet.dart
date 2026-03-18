import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';

import '../../auth/widgets/styled_button.dart';

class TemplateBottomSheet extends StatelessWidget {
  const TemplateBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.0),
            child: Container(
              height: 80,
              width: double.infinity,
              decoration: BoxDecoration(
                color: White,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.only(right: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  textBaseline: TextBaseline.alphabetic,
                  children: <Widget>[
                    Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        color: Color(0xFFEB001B),
                        borderRadius: BorderRadius.circular(4.0),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            '10',
                            style: GoogleFonts.headlandOne(
                              fontSize: 34,
                              fontWeight: FontWeight.w700,
                              color: White,
                            ),
                          ),
                          Text(
                            '%\noff',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.metrophobic(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: White,
                              height: 1, // задаёт межстрочный интервал
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 12),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          'Personal offer',
                          style: GoogleFonts.metrophobic(
                            fontSize: 14,
                            fontWeight: FontWeight.w500,
                            color: Black,
                          ),
                        ),
                        Text(
                          'mypromocode2020',
                          style: GoogleFonts.metrophobic(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Black,
                          ),
                        ),
                      ],
                    ),
                    Spacer(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          '6 days remaining',
                          style: GoogleFonts.metrophobic(
                            fontSize: 11,
                            fontWeight: FontWeight.w400,
                            color: Gray,
                          ),
                        ),
                        StyledButton(
                          text: 'Apply',
                          onPressed: () {},
                          size: Size(93, 0),
                          background: Primary,
                          textColor: White,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
