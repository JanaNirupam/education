import 'package:flutter/material.dart';
import '../../theme/colors.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback? onPressed;
  final Color? color;
  final Color? textColor;
  final OutlinedBorder? shape;
  final double? height;
  final double? width;

  const CustomButton({
    Key? key,
    required this.label,
    this.onPressed,
    this.color,
    this.textColor,
    this.shape,
    this.height,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: color ?? AppColors.primary,
          shape: shape ?? RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
          textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          elevation: 0, // Removed shadow by setting elevation to 0
        ),
        onPressed: onPressed,
        child: Text(
          label,
          style: TextStyle(color: textColor ?? Colors.white),
        ),
      ),
    );
  }
}
