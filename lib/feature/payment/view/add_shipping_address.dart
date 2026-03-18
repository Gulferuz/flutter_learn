import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:untitled/core/constants/app_colors.dart';
import 'package:untitled/core/constants/app_text_styles.dart';
import 'package:untitled/feature/auth/widgets/styled_button.dart';
import 'package:untitled/feature/dashboard/view/success2_page.dart';

@RoutePage(name: 'AddShippingAddressRoute')
class AddShippingAddress extends StatefulWidget {
  const AddShippingAddress({super.key});

  @override
  State<AddShippingAddress> createState() => _AddShippingAddressState();
}

class _AddShippingAddressState extends State<AddShippingAddress> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController cityController = TextEditingController();
  final TextEditingController regionCOntroller = TextEditingController();
  final TextEditingController zipCodeController = TextEditingController();
  final TextEditingController countryController = TextEditingController();

  String? checkFields(String? value) {
    if (value == null || value.isEmpty) {
      return '!';
    }
    return null;
  }

  void checkButtonSaveAddress() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (_) => Success2Page()),
      );
    }
  }

  void dispose() {
    nameController.dispose();
    addressController.dispose();
    cityController.dispose();
    regionCOntroller.dispose();
    zipCodeController.dispose();
    countryController.dispose();
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
          'Adding Shipping Address',
          style: AppTextStyles.Headline3,
        ),
      ),
      body: Form(
        key: _formKey,
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                SizedBox(height: 12),
                TextFormField(
                  controller: nameController,
                  validator: (value) => checkFields(value),
                  decoration: InputDecoration(
                    hintText: 'Full name',
                    fillColor: White,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: White, width: 1),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  validator: (value) => checkFields(value),
                  controller: addressController,
                  decoration: InputDecoration(
                    hintText: 'Address',
                    fillColor: White,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: White, width: 1),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  validator: (value) => checkFields(value),
                  controller: cityController,
                  decoration: InputDecoration(
                    hintText: 'City',
                    fillColor: White,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: White, width: 1),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  validator: (value) => checkFields(value),
                  controller: regionCOntroller,
                  decoration: InputDecoration(
                    hintText: 'State/Province/Region',
                    fillColor: White,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: White, width: 1),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  validator: (value) => checkFields(value),
                  controller: zipCodeController,
                  decoration: InputDecoration(
                    hintText: 'Zip Code (Postal Code)',
                    fillColor: White,
                    filled: true,
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: White, width: 1),
                    ),
                  ),
                ),
                SizedBox(height: 12),
                TextFormField(
                  validator: (value) => checkFields(value),
                  controller: countryController,
                  decoration: InputDecoration(
                    hintText: 'Country',
                    fillColor: White,
                    filled: true,
                    suffixIcon: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.arrow_forward_ios),
                    ),
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 20,
                      horizontal: 20,
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide(color: White, width: 1),
                    ),
                  ),
                ),
                Spacer(),
                StyledButton(
                  text: 'SAVE ADDRESS',
                  onPressed: checkButtonSaveAddress,
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
