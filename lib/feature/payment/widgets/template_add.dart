import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/constants/app_colors.dart';

import '../../../core/router/app_router.gr.dart';

class TemplateAdd extends StatelessWidget {
  const TemplateAdd({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topRight,
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          color: Black,
          // borderRadius: BorderRadius.circular(8.0),
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: IconButton(
          padding: EdgeInsets.zero,
          constraints: BoxConstraints(),
          onPressed: () {
            context.router.push(AddShippingAddressRoute());
            context.router.maybePop();
          },
          icon: Icon(Icons.add, color: White),
        ),
      ),
    );
  }
}
