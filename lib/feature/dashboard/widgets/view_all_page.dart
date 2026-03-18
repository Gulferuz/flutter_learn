import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_text_styles.dart';

import '../../../core/router/app_router.gr.dart';

class ViewAllPage extends StatelessWidget {
  final String text;
  final String text2;
  final VoidCallback onPressed;
  const ViewAllPage({super.key,
  required this.text,
    required this.onPressed,
    required this.text2,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                text,
                style: AppTextStyles.Headline,
              ),
              Text(
                text2,
                style: AppTextStyles.text11x,
              ),
            ],
          ),
          TextButton(
            onPressed: onPressed,
            child: Text(
              'View all',
              style: AppTextStyles.text11x,
            ),
          ),
        ],
      ),
    );
  }
}
