import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/auth/widgets/styled_button.dart';

@RoutePage(name: 'SuccessPageRouter')
class SuccessPage extends StatefulWidget {
  const SuccessPage({super.key});

  @override
  State<SuccessPage> createState() => _SuccessPageState();
}

class _SuccessPageState extends State<SuccessPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned.fill(
            child: Image.asset('assets/image/success.png', fit: BoxFit.cover),
          ),
          Positioned(
            // bottom: 10,
            left: 20,
            top: 130,
            right: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Success!',
                  style: AppTextStyles.Headline,
                ),
                SizedBox(height: 12),
                Text(
                  'Your order will be delivered soon.!',
                  style: AppTextStyles.text16x
                ),
                Text(
                  'Thank you for choosing our app!',
                  style: AppTextStyles.text16x,
                ),
                SizedBox(height: 12),
                StyledButton(
                  text: 'Continue shopping',
                  onPressed: () {
                    context.router.push(DashboardPageRoute());
                    context.router.maybePop();
                  },
                  size: Size(200, 36),
                  background: Primary,
                  textColor: White,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
