import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/auth/widgets/styled_button.dart';
import 'package:untitled/ui_components/total_amount_page.dart';
import 'package:untitled/feature/payment/view/payment_methods.dart';
import 'package:untitled/feature/payment/view/shipping_address_page.dart';
import 'package:untitled/feature/dashboard/view/success_page.dart';
import 'package:untitled/feature/payment/widgets/template_adress_page.dart';

@RoutePage(name: 'CheckoutPageRoute')
class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            context.router.maybePop();
          },
          icon: Icon(Icons.arrow_back_ios),
        ),
        title: Text(
          'Checkout',
          style: AppTextStyles.Headline3,
        ),
        foregroundColor: Black,
      ),
      body: SafeArea(
        child: Expanded(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Shipping address',
                    style: AppTextStyles.text16x,
                  ),
                  SizedBox(height: 12),
                  TemplateAdressPage(
                    onPressed: () {
                      context.router.push(ShippingAddressPageRoute());
                    },
                    text: 'Change',
                  ),
                  SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'Payment',
                        style: AppTextStyles.text16x,
                      ),
                      TextButton(
                        onPressed: () {
                          context.router.push(PaymentMethodsRoute());
                        },
                        child: Text(
                          'Change',
                          style: AppTextStyles.text14x.copyWith(color: Primary),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 64,
                        height: 38,
                        decoration: BoxDecoration(
                          color:White,
                          borderRadius: BorderRadius.circular(6.0),
                        ),
                        child: Image.asset('assets/image/mastercard.png'),
                      ),
                      SizedBox(width: 12),
                      Text(
                        '**** **** **** 3947',
                        style: GoogleFonts.metrophobic(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                          color: Gray,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 32),
                  Text(
                    'Delivery method',
                    style: AppTextStyles.text16x,
                  ),
                  SizedBox(height: 12),
                  TotalAmountPage(),
                  TotalAmountPage(),
                  TotalAmountPage(),
                  StyledButton(
                    text: 'SUBMIT ORDER',
                    onPressed: () {
                      context.router.push(SuccessPageRouter());
                    },
                    size: Size(343, 48),
                    background: Primary,
                    textColor: White,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
