import 'package:booko/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Icon(Icons.star, color: Colors.amberAccent,),
        const SizedBox(width: 6.3,),
        const Text('4.5', style: Styles.textStyle16,),
        const SizedBox(width: 5,),
        Text('(200)', style: Styles.textStyle14.copyWith(
            color: Colors.grey
        ),),
      ],
    );
  }
}