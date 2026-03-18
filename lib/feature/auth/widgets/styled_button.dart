import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';



class StyledButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;
  final Size? size;
  final Color? background;
  final Color? textColor;

  const StyledButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.size,
    this.background ,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          fixedSize: size,
          backgroundColor: background,
          elevation: 10,
          shadowColor:Black.withOpacity(0.06),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
        ),
        child: Text(
          text,
          style: AppTextStyles.text14x.copyWith(color: White),
        ),
      ),
    );
  }
}
