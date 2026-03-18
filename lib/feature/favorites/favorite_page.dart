import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/feature/auth/widgets/styled_button.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search_rounded)),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Favorites', style: AppTextStyles.Headline),
              SizedBox(height: 12),
              // StyledButton(text: 'Summer', onPressed: () {}),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    width: 363,
                    height: 104,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    child: Row(
                      children: <Widget>[
                        Image.asset('assets/image/image_bag.png'),
                        SizedBox(width: 12),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Row(
                                  // crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Mango',
                                      style: AppTextStyles.text11x.copyWith(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    // IconButton(
                                    //   constraints: const BoxConstraints(),
                                    //   padding: EdgeInsets.zero,
                                    //   onPressed: () {}, icon: Icon(Icons.close,size: 18,),),
                                    InkWell(
                                      onTap: () {},
                                      child: Icon(Icons.close, size: 18),
                                    ),
                                  ],
                                ),
                                Text(
                                  'Longsleeve Violeta',
                                  style: AppTextStyles.text16x,
                                ),
                                SizedBox(height: 4),
                                Row(
                                  children: <Widget>[
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Color:',
                                            style: GoogleFonts.headlandOne(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' Black',
                                            style: GoogleFonts.headlandOne(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    SizedBox(width: 16),
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Size:',
                                            style: GoogleFonts.headlandOne(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.grey,
                                            ),
                                          ),
                                          TextSpan(
                                            text: ' L',
                                            style: GoogleFonts.headlandOne(
                                              fontSize: 11,
                                              fontWeight: FontWeight.w400,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  children: <Widget>[
                                    Text('46\$', style: AppTextStyles.text14x),
                                    SizedBox(width: 8),
                                    RatingBar.builder(
                                      itemSize: 18,
                                      initialRating: 3,
                                      minRating: 5,
                                      direction: Axis.horizontal,
                                      allowHalfRating: true,
                                      itemCount: 5,
                                      itemPadding: EdgeInsets.symmetric(
                                        horizontal: 1.0,
                                      ),
                                      itemBuilder: (context, _) => Icon(
                                        Icons.star,
                                        color: Colors.amber,
                                        size: 1,
                                      ),
                                      onRatingUpdate: (rating) {
                                        print(rating);
                                      },
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
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
