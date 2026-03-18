import 'package:flutter/material.dart';
import 'package:untitled/core/constants/app_colors.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            width: 92,
            height: 64,
            decoration: BoxDecoration(
              color:White,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/image/google.png'),
            ),
          ),
          SizedBox(width: 12),
          Container(
            width: 92,
            height: 64,
            decoration: BoxDecoration(
              color: White,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Image.asset('assets/image/facebook.png'),
            ),
          ),
        ],
      ),
    );
  }
}
