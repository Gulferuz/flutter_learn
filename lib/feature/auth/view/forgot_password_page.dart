import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/ui_components/textformfield_auth.dart';
import 'package:untitled/feature/dashboard/view/dashboard_page.dart';
import '../widgets/styled_button.dart';

@RoutePage(name: 'ForgotPasswordPageRoute')
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController emailController = TextEditingController();

  String? checkForgotPassword(String? value) {
    if (value == null || value.isEmpty) {
      return 'Заполните поля';
    }
    return null;
  }

  void checkButtonForgotPassword() {
    if (_formKey.currentState!.validate()) {
      context.router.push(DashboardPageRoute());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(height: 25),
                Text(
                  "Forgot Password",
                  style: AppTextStyles.Headline,
                ),
                SizedBox(height: 81),
                Text(
                  'Please, enter your email address. You will receive a link to create a new password via email.',
                  style: AppTextStyles.text14x,
                ),
                SizedBox(height: 16),
                TextformfieldAuth(controller: emailController,
                    validator: (value) => checkForgotPassword(value),
                    hintText: 'Email',
                    filled: true),
                SizedBox(height: 56),
                StyledButton(
                  text: 'Send',
                  onPressed: (checkButtonForgotPassword),
                  size: Size(343, 48),
                  background: Primary,
                  textColor: White,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
