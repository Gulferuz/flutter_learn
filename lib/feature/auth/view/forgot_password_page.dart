import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/auth/bloc3/auth_forgot_bloc.dart';
import 'package:untitled/feature/auth/bloc3/auth_forgot_bloc.dart';
import 'package:untitled/ui_components/textformfield_auth.dart';
import 'package:untitled/feature/dashboard/view/dashboard_page.dart';
import '../widgets/styled_button.dart';

@RoutePage(name: 'ForgotPasswordPageRoute')
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthForgotBloc(),
      child: ForgotView(),
    );
  }
}

class ForgotView extends StatefulWidget {
  const ForgotView({super.key});

  @override
  State<ForgotView> createState() => _ForgotViewState();
}

class _ForgotViewState extends State<ForgotView> {




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: BlocBuilder<AuthForgotBloc, AuthForgotState>(
              builder: (context, state) {
                return Column(
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
                    TextformfieldAuth(
                      errorText: state.emailErrorForgot,
                        onChange: (value) {
                          context.read<AuthForgotBloc>().add(EmailChangedForgot(value));
                        },
                        hintText: 'Email',
                        filled: true),
                    SizedBox(height: 56),
                    StyledButton(
                      text: 'Send',
                      onPressed: () {
                        context.read<AuthForgotBloc>().add(AuthSubmitForgot());
                      },
                      size: Size(343, 48),
                      background: Primary,
                      textColor: White,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
