import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/auth/widgets/styled_button.dart';

@RoutePage(name: 'Succes2PageRoute')
class Success2Page extends StatefulWidget {
  const Success2Page({super.key});

  @override
  State<Success2Page> createState() => _Success2PageState();
}

class _Success2PageState extends State<Success2Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Image.asset('assets/image/bags.png'),
              SizedBox(height: 20),
              Text(
                'Success!',
                style: AppTextStyles.Headline
              ),
              SizedBox(height: 12),
              Text(
                'Your order will be delivered soon.!',
                style: AppTextStyles.text16x
              ),
              Text(
                'Thank you for choosing our app!',
                style: AppTextStyles.text16x
              ),
              SizedBox(height: 32),
              StyledButton(
                text: 'CONTINUE SHOPPING',
                onPressed: () {
                  context.router.push(DashboardPageRoute());
                  context.router.maybePop();
                },
                size: Size(343, 48),
                background: Primary,
                textColor: White,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
