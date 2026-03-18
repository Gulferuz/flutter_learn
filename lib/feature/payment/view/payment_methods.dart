import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/feature/auth/widgets/styled_button.dart';
import 'package:untitled/feature/payment/widgets/template_add.dart';

@RoutePage(name: 'PaymentMethodsRoute')
class PaymentMethods extends StatefulWidget {
  const PaymentMethods({super.key});

  @override
  State<PaymentMethods> createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  void showModalPayment() {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return SingleChildScrollView(
          child: SizedBox(
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: <Widget>[
                      Text(
                        'Add new card',
                        style: GoogleFonts.headlandOne(
                          fontSize: 18,
                          fontWeight: FontWeight.w400,
                          color: Black,
                        ),
                      ),
                      SizedBox(height: 12),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Name on card',
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: White,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Card number',
                          fillColor: White,
                          filled: true,
                          suffixIcon: Image.asset(
                            'assets/image/mastercard.png',
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: White,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Expire Date',
                          fillColor: Colors.white,
                          filled: true,
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: White,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'CVV',
                          fillColor: White,
                          filled: true,
                          suffixIcon: IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.help, color: Gray),
                          ),
                          contentPadding: EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 20,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide: BorderSide(
                              color: White,
                              width: 1,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.check_box),
                          ),
                          SizedBox(width: 6),
                          Text(
                            'Set as default payment method',
                            style: GoogleFonts.metrophobic(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              color: Black,
                              letterSpacing: -0.15,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 12),
                      StyledButton(
                        text: 'ADD CARD',
                        onPressed: () {},
                        size: Size(343, 48),
                        background: Primary,
                        textColor: White,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }

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
          'Payment methods',
          style: AppTextStyles.Headline3,
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                'Your payment cards',
                style:AppTextStyles.text16x,
              ),
              SizedBox(height: 14),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 231,
                      width: 365,
                      decoration: BoxDecoration(
                        color: Black,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Image.asset('assets/image/chip.png'),
                            SizedBox(height: 30),
                            Text(
                              '* * * *  * * * *  * * * *  3947',
                              style: AppTextStyles.Headline2,
                            ),
                            Spacer(),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Card Holder Name',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color:White,
                                        letterSpacing: -0.41,
                                      ),
                                    ),
                                    Text(
                                      'Jennyfer Doe',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: White,
                                        letterSpacing: -0.41,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Expiry Date',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: White,
                                        letterSpacing: -0.41,
                                      ),
                                    ),
                                    Text(
                                      '05/23',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: White,
                                        letterSpacing: -0.41,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Image.asset('assets/image/mastercard.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   child: Container(
                  //     height: 241,
                  //     width: 241,
                  //     decoration: BoxDecoration(),
                  //   ),
                  // ),
                ],
              ),

              Row(
                children: <Widget>[
                  IconButton(onPressed: () {}, icon: Icon(Icons.check_box)),
                  SizedBox(width: 6),
                  Text(
                    'Use as default payment method',
                    style: GoogleFonts.metrophobic(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Black,
                      letterSpacing: -0.15,
                    ),
                  ),
                ],
              ),
              Stack(
                children: [
                  Center(
                    child: Container(
                      height: 231,
                      width: 365,
                      decoration: BoxDecoration(
                        color: Gray,
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(30.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topRight,
                              child: Image.asset('assets/image/visa.png'),
                            ),

                            SizedBox(height: 30),
                            Text(
                              '* * * *  * * * *  * * * *  3947',
                              style: GoogleFonts.metrophobic(
                                fontSize: 24,
                                fontWeight: FontWeight.w400,
                                color: White,
                              ),
                            ),
                            Image.asset('assets/image/chip.png'),
                            Spacer(),
                            Row(
                              children: <Widget>[
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Card Holder Name',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: White,
                                        letterSpacing: -0.41,
                                      ),
                                    ),
                                    Text(
                                      'Jennyfer Doe',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: White,
                                        letterSpacing: -0.41,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      'Expiry Date',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 10,
                                        fontWeight: FontWeight.w400,
                                        color: White,
                                        letterSpacing: -0.41,
                                      ),
                                    ),
                                    Text(
                                      '05/23',
                                      style: GoogleFonts.metrophobic(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w400,
                                        color: White,
                                        letterSpacing: -0.41,
                                      ),
                                    ),
                                  ],
                                ),
                                Spacer(),
                                Image.asset('assets/image/mastercard.png'),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  // Positioned(
                  //   child: Container(
                  //     height: 241,
                  //     width: 241,
                  //     decoration: BoxDecoration(),
                  //   ),
                  // ),
                ],
              ),
              Row(
                children: <Widget>[
                  IconButton(onPressed: () {}, icon: Icon(Icons.check_box)),
                  SizedBox(width: 6),
                  Text(
                    'Use as default payment method',
                    style: GoogleFonts.metrophobic(
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      color: Black,
                      letterSpacing: -0.15,
                    ),
                  ),
                ],
              ),
              TemplateAdd(),
            ],
          ),
        ),
      ),
    );
  }
}
