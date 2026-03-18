import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/profile/view/my_orders_page.dart';
import 'package:untitled/feature/profile/view/settings_page.dart';
import 'package:untitled/feature/profile/widgets/template_listtile_page.dart';
@RoutePage(name: 'MyProfilePageRoute')
class MyProfile extends StatefulWidget {
  const MyProfile({super.key});

  @override
  State<MyProfile> createState() => _MyProfileState();
}

class _MyProfileState extends State<MyProfile> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,

      children: <Widget>[
        IconButton(onPressed: () {}, icon: Icon(Icons.search)),

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'My profile',
                style: AppTextStyles.Headline,
              ),
              SizedBox(height: 18),
              Row(
                children: <Widget>[
                  ClipOval(
                    child: Image.asset(
                      'assets/image/profile.png',
                      width: 64,
                      height: 64,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 16),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Matilda Brown',
                        style: GoogleFonts.headlandOne(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        'matildabrown@mail.com',
                        style: GoogleFonts.headlandOne(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              TemplateListtilePage(
                title: Title(color: Colors.black, child: Text('My orders')),
                text: Text('Already have 12 orders'),
                onPressed: () {
                  context.router.push(MyOrdersPageRoute());
                  context.router.maybePop();
                },
                onTap: () {
                  context.router.push(MyOrdersPageRoute());
                  context.router.maybePop();
                },
              ),
              TemplateListtilePage(
                title: Title(
                  color: Colors.black,
                  child: Text('Shipping addresses'),
                ),
                text: Text('3 ddresses'),
                onPressed: () {
                  context.router.maybePop();
                },
                onTap: () {},
              ),
              TemplateListtilePage(
                title: Title(
                  color: Colors.black,
                  child: Text('Payment methods'),
                ),
                text: Text('Visa  **34'),
                onPressed: () {
                  context.router.maybePop();
                },
                onTap: () {},
              ),
              TemplateListtilePage(
                title: Title(color: Colors.black, child: Text('Promocodes')),
                text: Text('You have special promocodes'),
                onPressed: () {
                  context.router.maybePop();
                },
                onTap: () {},
              ),
              TemplateListtilePage(
                title: Title(color: Colors.black, child: Text('My reviews')),
                text: Text('Reviews for 4 items'),
                onPressed: () {
                  context.router.maybePop();
                },
                onTap: () {},
              ),
              TemplateListtilePage(
                title: Title(color: Colors.black, child: Text('Settings')),
                text: Text('Notifications, password'),
                onPressed: () {
                  context.router.maybePop();
                },
                onTap: () {
                  context.router.push(SettingsPageRoute());
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
