import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hint;
  final TextEditingController? controller;

  const CustomTextField({Key? key, this.hint = '', this.controller}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        hintText: hint,
        border: OutlineInputBorder(),
        filled: true,
        fillColor: AppColors.background,
      ),
    );
  }
}
