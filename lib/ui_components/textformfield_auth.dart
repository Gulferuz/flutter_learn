import 'package:flutter/material.dart';

class TextformfieldAuth extends StatelessWidget {
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final String hintText;
  final bool filled;
  final String? errorText;


  const TextformfieldAuth({
    super.key,
    this.controller,
     this.validator,
    this.onChange,
    required this.hintText,
    required this.filled,
    this.errorText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autofocus: true,
      controller: controller,
      validator: validator,
      onChanged: (value) {
        if (onChange != null) {
          onChange!(value);
        }
        //можно получить доступ к блоку в дочерних виджетах, но родительский должен под BlocProvider чтобы это работало
        // context.read<AuthBloc>().add(
        //   AuthCheckName(value),
        // );
      },
      decoration: InputDecoration(
        hintText: hintText,
        errorText: errorText,
        filled: filled,
        fillColor: Colors.white,
        contentPadding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white, width: 1),
        ),
      ),
    );
  }
}
