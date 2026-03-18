import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../core/router/app_router.gr.dart';

class TemplateListtilePage extends StatelessWidget {
  final Title title;
  final Text text;
  final VoidCallback onPressed;
  final VoidCallback onTap;

  const TemplateListtilePage({
    super.key,
    required this.text,
    required this.title,
    required this.onPressed,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      // minVerticalPadding: 20,
      onTap: onTap,
      contentPadding: EdgeInsets.only(left: 16, right: 0),
      title: title,
      subtitle: text,
      trailing: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        icon: Icon((Icons.arrow_forward_ios)),
      ),
    );
  }
}
