import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';

import '../widgets/template_bottom_sheet.dart';

mixin PromoCodeMixin {
  void showModalPromo(BuildContext context) {
    showModalBottomSheet<void>(
      isScrollControlled: true,
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: SizedBox(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      height: 36,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        boxShadow: [
                          BoxShadow(
                            blurRadius: 8,
                            offset: Offset(0, 3),
                            color: Gray.withOpacity(0.06),
                          ),
                        ],
                        color: White,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(35.0),
                          bottomLeft: Radius.circular(8.0),
                          bottomRight: Radius.circular(35.0),
                        ),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(left: 6.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Enter your promo code',
                              style: GoogleFonts.metrophobic(
                                fontSize: 14,
                                fontWeight: FontWeight.w500,
                                color: Gray,
                              ),
                            ),
                            Container(
                              height: 36,
                              width: 36,
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(16.0),
                              ),
                              child: IconButton(
                                padding: EdgeInsets.zero,
                                onPressed: () {},
                                icon: Icon(
                                  Icons.arrow_forward,
                                  color: White,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      'Your Promo Codes',
                      style: GoogleFonts.headlandOne(
                        fontSize: 18,
                        fontWeight: FontWeight.w400,
                        color: Black
                      ),
                    ),
                    SizedBox(height: 8),
                    for (int i = 0; i < 5; i++) TemplateBottomSheet(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}