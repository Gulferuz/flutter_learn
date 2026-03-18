import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/auth/widgets/styled_button.dart';
import 'package:untitled/feature/cart/bloc/counter_bloc.dart';
import 'package:untitled/feature/cart/mixins/promo_code_mixin.dart';
import 'package:untitled/ui_components/total_amount_page.dart';
import 'package:untitled/feature/payment/view/checkout_page.dart';
import 'package:untitled/feature/cart/widgets/template_bag.dart';
import 'package:untitled/feature/cart/widgets/template_bottom_sheet.dart';
import 'package:untitled/feature/cart/widgets/template_promocode_page.dart';

@RoutePage(name: 'MyBagPageRoute')
class MyBagPage extends StatefulWidget {
  const MyBagPage({super.key});

  @override
  State<MyBagPage> createState() => _MyBagPageState();
}

class _MyBagPageState extends State<MyBagPage> with PromoCodeMixin {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterBloc(),
      child: Expanded(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'My Bag',
                        style: AppTextStyles.Headline
                      ),
                      SizedBox(height: 16),
                      TemplateBag(),
                      TemplatePromocodePage(
                        onPressed: () {
                          showModalPromo(context);
                          context.router.maybePop();
                        },
                      ),
                      TotalAmountPage(),
                    ],
                  ),
                ),
              ),
            ),
            StyledButton(
              text: 'CHECK OUT',
              onPressed: () {
                context.router.push(CheckoutPageRoute());
                context.router.maybePop();
              },
              size: Size(343, 48),
              background: Primary,
              textColor: White,
            ),
          ],
        ),
      ),
    );
  }
}
