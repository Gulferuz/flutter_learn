import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/core/router/app_router.gr.dart';
import 'package:untitled/feature/auth/widgets/styled_button.dart';

@RoutePage(name: 'MyOrdersPageRoute')
class MyOrdersPage extends StatefulWidget {
  const MyOrdersPage({super.key});

  @override
  State<MyOrdersPage> createState() => _MyOrdersPageState();
}

class _MyOrdersPageState extends State<MyOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back_ios)),
        actions: [IconButton(onPressed: () {}, icon: Icon(Icons.search))],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'My Orders',
                style:AppTextStyles.Headline,
              ),
              SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ChoiceChip(
                    label: Text(
                      'Delivered',
                      style: GoogleFonts.metrophobic(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),
                    ),
                    selected: true,
                    selectedColor: Colors.black,
                    labelStyle: TextStyle(color: Colors.white),
                    backgroundColor: Colors.grey.shade200,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    onSelected: (value) {},
                  ),
                  SizedBox(width: 12),
                  ChoiceChip(
                    label: Text(
                      'Processing',
                      style: GoogleFonts.metrophobic(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    selected: false,
                    labelStyle: TextStyle(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    onSelected: (value) {},
                  ),
                  SizedBox(width: 12),
                  ChoiceChip(
                    label: Text(
                      'Cancelled',
                      style: GoogleFonts.metrophobic(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    selected: false,
                    labelStyle: TextStyle(color: Colors.white),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                    onSelected: (value) {},
                  ),
                ],
              ),
              SizedBox(height: 12),
              Center(
                child: Container(
                  height: 170,
                  width: 343,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                'Order №1947034',
                                style: GoogleFonts.metrophobic(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.black,
                                ),
                              ),
                              Text(
                                '05-12-2019',
                                style: GoogleFonts.metrophobic(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w400,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  text: 'Tracking number:',
                                  style: GoogleFonts.metrophobic(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(width: 12),
                              RichText(
                                text: TextSpan(
                                  text: 'IW3475453455',
                                  style: GoogleFonts.metrophobic(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              RichText(
                                text: TextSpan(
                                  text: 'Quantity:',
                                  style: GoogleFonts.metrophobic(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4),
                              RichText(
                                text: TextSpan(
                                  text: '3',
                                  style: GoogleFonts.metrophobic(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                              Spacer(),
                              RichText(
                                text: TextSpan(
                                  text: 'Total Amount:',
                                  style: GoogleFonts.metrophobic(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(width: 4),
                              RichText(
                                text: TextSpan(
                                  text: '112\$',
                                  style: GoogleFonts.metrophobic(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            StyledButton(
                              text: 'Details',
                              onPressed: () {
                                context.router.push(OrderDetailsPageRoute());
                              },
                              size: Size(98, 36),
                              background: Colors.white,
                              textColor: Colors.black,
                            ),
                            TextButton(
                              onPressed: () {},
                              child: Text(
                                'Delivered',
                                style: GoogleFonts.metrophobic(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.green,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
