import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/payment/view/add_shipping_address.dart';
import 'package:untitled/feature/payment/widgets/template_add.dart';
import 'package:untitled/feature/payment/widgets/template_adress_page.dart';

@RoutePage(name: 'ShippingAddressPageRoute')
class ShippingAddressPage extends StatefulWidget {
  const ShippingAddressPage({super.key});

  @override
  State<ShippingAddressPage> createState() => _ShippingAddressPageState();
}

class _ShippingAddressPageState extends State<ShippingAddressPage> {
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
        centerTitle: true,
        title: Text(
          'Shipping Addresses',
          style: AppTextStyles.Headline3
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              TemplateAdressPage(onPressed: () {}, text: 'Edit'),
              SizedBox(height: 12),
              TemplateAdd(),
            ],
          ),
        ),
      ),
    );
  }
}
