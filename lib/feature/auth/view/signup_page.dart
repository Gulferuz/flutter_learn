import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/auth/bloc/auth_bloc.dart';
import 'package:untitled/feature/auth/bloc2/auth_sign_up_bloc.dart';
import 'package:untitled/feature/auth/view/forgot_password_page.dart';
import 'package:untitled/feature/auth/view/login_page.dart';
import 'package:untitled/feature/auth/widgets/template_text.dart';
import 'package:untitled/feature/auth/widgets/textButton_page.dart';
import 'package:untitled/ui_components/textformfield_auth.dart';
import 'package:untitled/feature/dashboard/view/dashboard_page.dart';

import '../widgets/social_button.dart';
import '../widgets/styled_button.dart';

@RoutePage(name: 'SignupPageRoute')
class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AuthSignUpBloc(),
      child: SignupView(),
    );
  }
}

class SignupView extends StatelessWidget {
  const SignupView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: BlocConsumer<AuthSignUpBloc, AuthSignUpState>(
            listener: (context, state) {
              print('LISTENER');
              print(state.statusSignUp);
              if (state.statusSignUp == AuthSignUpStatus.success) {
                context.router.push(DashboardPageRoute());
              }
            },
            builder: (context, state) {
              print('UISSSSS');
              print(state.nameErrorTextSign);
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  SizedBox(height: 25),
                  Text("Sign up", style: AppTextStyles.Headline),
                  SizedBox(height: 64),
                  TextformfieldAuth(
                    // controller: nameController,
                    hintText: 'Name',
                    filled: true,
                    errorText: state.nameErrorTextSign,
                    onChange: (value) {
                      context.read<AuthSignUpBloc>().add(
                        NameChangedSign(value),
                      );
                    },
                  ),
                  // Text(state.passwordErrorTextSign ?? "s",style: TextStyle(color: Colors.black),),
                  SizedBox(height: 10),
                  TextformfieldAuth(
                    // controller: emailController,
                    hintText: 'Email',
                    filled: true,
                    errorText: state.emailErrorTextSign,
                    onChange: (value) {
                      print(value);
                      context.read<AuthSignUpBloc>().add(
                        EmailChangedSign(value),
                      );
                    },
                    // validator: checkByEmptySign
                  ),
                  // Text(state.passwordErrorTextSign ?? "s",style: TextStyle(color: Colors.black),),
                  SizedBox(height: 10),
                  TextformfieldAuth(
                    hintText: 'Password',
                    filled: true,
                    errorText: state.passwordErrorTextSign,
                    // validator: checkByEmptySign,
                    onChange: (value) {
                      print('HEREEEEE');
                      print(value);
                      context.read<AuthSignUpBloc>().add(
                        PasswordChangedSign(value),
                      );
                    },
                    // validator: (value) => checkPasswordSignUp(value),
                  ),
                  // Text(state.passwordErrorTextSign ?? "s",style: TextStyle(color: Colors.black),),
                  SizedBox(height: 8),
                  // TextButton(onPressed: (gotoLoginPage), child: Text('Already have an account?'),),
                  TextbuttonPage(
                    onPressed: () => context.router.push(LoginPageRoute()),
                    text: 'Already have an account?',
                  ),
                  SizedBox(height: 36),
                  StyledButton(
                    text: 'Sign up',
                    onPressed: () {
                      // print(state.passwordValueSign);
                      // print(state.passwordErrorTextSign);
                      context.read<AuthSignUpBloc>().add(AuthSubmitSignUp());
                    },
                    size: Size(343, 48),
                    background: Primary,
                    textColor: White,
                  ),
                  Spacer(),
                  TemplateText(),
                  SocialButton(),
                  SizedBox(height: 12),
                ],
              );
            },
          ),
        ),
      ),
    );
  }
}
