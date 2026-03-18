import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled/core/router/app_router.dart';
import 'package:untitled/feature/auth/view/forgot_password_page.dart';
import 'package:untitled/feature/auth/view/login_page.dart';
import 'package:untitled/feature/auth/view/signup_page.dart';
import 'package:untitled/feature/payment/view/add_shipping_address.dart';
import 'package:untitled/feature/catalog/view/categories2_page.dart';
import 'package:untitled/feature/catalog/view/categories_page.dart';
import 'package:untitled/feature/payment/view/checkout_page.dart';
import 'package:untitled/feature/dashboard/view/dashboard_page.dart';
import 'package:untitled/feature/profile/view/my_profile.dart';
import 'package:untitled/feature/catalog/view/new_collection.dart';
import 'package:untitled/feature/payment/view/payment_methods.dart';
import 'package:untitled/feature/dashboard/view/sale_page.dart';
import 'package:untitled/feature/dashboard/view/success2_page.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(routerConfig: _appRouter.config());
  }
}
