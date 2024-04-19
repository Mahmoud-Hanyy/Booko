import 'package:booko/core/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class BookAction extends StatelessWidget {
  const BookAction({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Expanded(
            child: CustomButton(
              text: '19.99 €',
              backgroundColor: Colors.white,
              textColor: Colors.black,
              borderRadius: BorderRadius.only(
                  topLeft:Radius.circular(12),
                  bottomLeft: Radius.circular(12)
              ),
            )
        ),
        Expanded(
            child: CustomButton(
              text: "Free Preview",
              backgroundColor: Colors.deepOrangeAccent,
              textColor: Colors.white,
              borderRadius: BorderRadius.only(
                  topRight:Radius.circular(12),
                  bottomRight: Radius.circular(12)
              ),
            )
        ),
      ],
    );
  }
}