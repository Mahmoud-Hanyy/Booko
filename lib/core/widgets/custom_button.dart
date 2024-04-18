import 'package:booko/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key,
    required this.backgroundColor,
    required this.textColor,
    this.borderRadius,
    required this.text});

  final Color backgroundColor ;
  final Color textColor ;
  final BorderRadius? borderRadius ;
  final String text ;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
          onPressed: (){},
          style: TextButton.styleFrom(
            shape: RoundedRectangleBorder(
              borderRadius: borderRadius?? BorderRadius.circular(16),
            ),
            backgroundColor: backgroundColor,
          ),
          child: Text(text,style: Styles.textStyle18.copyWith(
            fontWeight: FontWeight.w900,
            color: textColor
          ),),
      ),
    );
  }
}
