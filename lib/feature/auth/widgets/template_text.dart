import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/constants/app_text_styles.dart';

class TemplateText extends StatelessWidget {
  const TemplateText({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Or sign up with social account',
      style: AppTextStyles.text14x,
    );
  }
}
