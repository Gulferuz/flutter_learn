import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/feature/auth/widgets/styled_button.dart';
import 'package:untitled/ui_components/textformfield_auth.dart';

import '../../cart/widgets/template_bottom_sheet.dart';

@RoutePage(name: 'SettingsPageRoute')
void showModalPromo(BuildContext context) {
  showModalBottomSheet<void>(
    isScrollControlled: true,
    context: context,
    builder: (BuildContext context) {
      return SingleChildScrollView(
        child: SizedBox(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: <Widget>[
                  Text('Password Change', style: AppTextStyles.Headline),
                  TextformfieldAuth(hintText: 'Old Password', filled: true),
                  Align(
                    alignment: Alignment.topRight,
                    child: Text(
                      'Forgot Password?',
                      style: AppTextStyles.text14x.copyWith(color: Colors.grey),
                    ),
                  ),
                  TextformfieldAuth(hintText: 'New Password', filled: true),
                  TextformfieldAuth(hintText: ' Repeat New Password', filled: true),
                  StyledButton(text: 'SAVE PASSWORD', onPressed: () {}),
                ],
              ),
            ),
          ),
        ),
      );
    },
  );
}

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController fullnamecontroller = TextEditingController();
  final TextEditingController dateofbirthcontroller = TextEditingController();
  final TextEditingController passwordcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        actions: [
          IconButton(onPressed: () {}, icon: Icon((Icons.search_rounded))),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text('Settings', style: AppTextStyles.Headline),
              SizedBox(height: 16),
              Text('Personal Information', style: AppTextStyles.text16x),
              TextformfieldAuth(
                controller: fullnamecontroller,
                hintText: 'Full name',
                filled: true,
              ),
              SizedBox(height: 12),
              TextformfieldAuth(
                controller: dateofbirthcontroller,
                hintText: 'Date of Birth',
                filled: true,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Payment', style: AppTextStyles.text16x),
                  TextButton(
                    onPressed: () {
                      showModalPromo(context);
                    },
                    child: Text(
                      'Change',
                      style: AppTextStyles.text14x.copyWith(
                        color: Color(0xFFDB3022),
                      ),
                    ),
                  ),
                ],
              ),
              TextformfieldAuth(
                controller: passwordcontroller,
                hintText: 'Full name',
                filled: true,
              ),
              SizedBox(height: 12),
              Text('Notifications', style: AppTextStyles.text16x),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Sales', style: AppTextStyles.text14x),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.toggle_off_outlined, color: Colors.green),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('New arrivals', style: AppTextStyles.text14x),
                  IconButton(onPressed: () {}, icon: Icon(Icons.toggle_off)),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text('Delivery status changes', style: AppTextStyles.text14x),
                  IconButton(onPressed: () {}, icon: Icon(Icons.toggle_off)),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
