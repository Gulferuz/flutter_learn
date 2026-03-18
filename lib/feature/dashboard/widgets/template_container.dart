import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';

class TemplateContainer extends StatefulWidget {
  final String text;
  final String text2;
  final String text3;
  final String text4;
  final String text5;
  final String text6;
  const TemplateContainer({super.key,
  required this.text,
    required this.text2,
    required this.text3,
    required this.text4,
    required this.text5,
    required this.text6,


  });

  @override
  State<TemplateContainer> createState() => _TemplateContainerState();
}

class _TemplateContainerState extends State<TemplateContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            for (int i = 1; i < 5; i++)
              Padding(
                padding: EdgeInsets.all(4),
                child: Container(
                  alignment: Alignment.topCenter,
                  height: 300,
                  width: 160,
                  decoration: BoxDecoration(color: White),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Stack(
                        clipBehavior: Clip.none,
                        children: [
                          SizedBox(height: 180, width: double.infinity),
                          Image.asset(
                            'assets/image/dress.png',
                            fit: BoxFit.cover,
                            width: double.infinity,
                          ),

                          Positioned(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 20,
                                width: 40,
                                decoration: BoxDecoration(
                                  color: Salehot,
                                  borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(12),
                                    bottom: Radius.circular(12),
                                  ),
                                ),
                                child: Center(
                                  child: Text(
                                    widget.text,
                                    style: GoogleFonts.metrophobic(
                                      fontSize: 11,
                                      fontWeight: FontWeight.w400,
                                      color: White,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: -24,
                            right: 7,
                            child: Center(
                              child: Container(
                                height: 36,
                                width: 36,
                                decoration: BoxDecoration(
                                  color: White,
                                  shape: BoxShape.circle,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Black.withOpacity(0.06),
                                      blurRadius: 8,
                                    ),
                                  ],
                                ),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.favorite_outline, size: 20),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 4),
                      Row(
                        children: <Widget>[
                          RatingBar.builder(
                            itemSize: 18,
                            initialRating: 3,
                            minRating: 2,
                            direction: Axis.horizontal,
                            allowHalfRating: true,
                            itemCount: 5,
                            itemPadding: EdgeInsets.symmetric(horizontal: 1.0),
                            itemBuilder: (context, _) =>
                                Icon(Icons.star, color: Colors.amber, size: 1),
                            onRatingUpdate: (rating) {
                              print(rating);
                            },
                          ),
                          Text(
                            widget.text2,
                            style: AppTextStyles.text11x,
                          ),
                        ],
                      ),
                      Text(
                        widget.text3,
                        style: AppTextStyles.text11x,
                      ),
                      Text(
                        widget.text4,
                        style: AppTextStyles.text16x,
                      ),

                      Row(
                        children: <Widget>[
                          Text(
                            widget.text5,
                            style: AppTextStyles.text14x,
                          ),
                          SizedBox(width: 4),
                          Text(
                            widget.text6,
                            style: AppTextStyles.text14x,
                          ),
                        ],
                      ),
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
