import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/feature/auth/bloc/auth_bloc.dart';
import 'package:untitled/ui_components/textformfield_auth.dart';
import '../widgets/styled_button.dart';

@RoutePage(name: 'ForgotPasswordPageRoute')
class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(create: (context) => AuthBloc(), child: ForgotView());
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
            child: BlocBuilder<AuthBloc, AuthState>(
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 25),
                    Text("Forgot Password", style: AppTextStyles.Headline),
                    SizedBox(height: 81),
                    Text(
                      'Please, enter your email address. You will receive a link to create a new password via email.',
                      style: AppTextStyles.text14x,
                    ),
                    SizedBox(height: 16),
                    TextformfieldAuth(
                      errorText: state.emailError,
                      onChange: (value) {
                        context.read<AuthBloc>().add(EmailChanged(value));
                      },
                      hintText: 'Email',
                      filled: true,
                    ),
                    SizedBox(height: 56),
                    StyledButton(
                      text: 'Send',
                      onPressed: () {
                        context.read<AuthBloc>().add(AuthForgotSubmit());
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
