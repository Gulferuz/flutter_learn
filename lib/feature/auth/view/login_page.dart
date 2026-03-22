import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/core/router/app_router.gr.dart';


import 'package:untitled/feature/auth/view/forgot_password_page.dart';
import 'package:untitled/feature/auth/widgets/template_text.dart';
import 'package:untitled/feature/auth/widgets/textButton_page.dart';
import 'package:untitled/ui_components/textformfield_auth.dart';
import 'package:untitled/feature/dashboard/view/dashboard_page.dart';
import '../bloc/auth_bloc.dart';
import '../widgets/social_button.dart';
import '../widgets/styled_button.dart';

@RoutePage(name: 'LoginPageRoute')
class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthBloc(),
      child: LoginView(),
    );
  }
}

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>(); // глобальное
  final TextEditingController emailController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }

  void gotoForgotPassword() {
    // логика если забыл пароль
    context.router.push(ForgotPasswordPageRoute());
  }

  // String? checkByEmpty(String? value) {
  //   //для формы textformfield
  //   if (value == null || value.isEmpty) {
  //     return 'Заполинте поля!';
  //   }
  //   return null;
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: BlocConsumer<AuthBloc, AuthState>(
              listener: (context, state) {
                if (state.status == AuthStatus.success) {
                  context.router.push(DashboardPageRoute());
                }
              },
              builder: (context, state) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(height: 25),
                    Text("Login", style: AppTextStyles.Headline),
                    SizedBox(height: 64),
                    SizedBox(height: 8),
                    TextformfieldAuth(

                      hintText: 'Email',
                      filled: true,
                      errorText: state.emailError,
                      onChange: (value) {
                        context.read<AuthBloc>().add(EmailChanged(value));
                      },

                    ),

                    SizedBox(height: 8),
                    TextformfieldAuth(
                      hintText: 'Password',
                      errorText: state.passwordErrorTxt,
                      onChange: (value) {
                        context.read<AuthBloc>().add(PasswordChanged(value));
                      },
                      filled: true,
                    ),

                    SizedBox(height: 2),
                    TextbuttonPage(
                      onPressed: (gotoForgotPassword),
                      text: 'Forgot your password?',
                    ),
                    SizedBox(height: 36),
                    StyledButton(
                      text: 'Login',
                      onPressed: () {
                        print(state.passwordValue);
                        print(state.passwordErrorTxt);
                        context.read<AuthBloc>().add(AuthSubmit());
                      },
                      size: Size(343, 48),
                      background: Primary,
                      textColor: White,
                    ),
                    SizedBox(height: 160),
                    TemplateText(),
                    SizedBox(height: 8),
                    Spacer(),
                    SocialButton(),
                    SizedBox(height: 24),
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
