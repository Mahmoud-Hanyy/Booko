import 'package:booko/core/utils/styles.dart';
import 'package:flutter/material.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key,
    this.mainAxisAlignment = MainAxisAlignment.start,
  });

  final MainAxisAlignment mainAxisAlignment ;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: mainAxisAlignment,
      children: const [
         Icon(Icons.star, color: Colors.amberAccent,size: 14, ),
         SizedBox(width: 6.3,),
         Text('4.5', style: Styles.textStyle16,),
         SizedBox(width: 5,),
        Opacity(
          opacity: 0.5,
          child: Text('(200)', style: Styles.textStyle14
          ),
        ),
      ],
    );
  }
}
