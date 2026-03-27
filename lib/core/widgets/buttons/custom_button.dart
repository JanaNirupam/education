import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;

  const CustomButton({Key? key, required this.label, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(primary: AppColors.primary),
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
