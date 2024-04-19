import 'package:booko/core/utils/styles.dart';
import 'package:booko/features/home/presentation/views/widgets/book_action.dart';
import 'package:booko/features/home/presentation/views/widgets/book_rating.dart';
import 'package:booko/features/home/presentation/views/widgets/custom_book_details_app_bar.dart';
import 'package:booko/features/home/presentation/views/widgets/featured_list_view_item.dart';
import 'package:booko/features/home/presentation/views/widgets/similar_book_list_view.dart';
import 'package:flutter/material.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.2),
                  child: const FeaturedListViewItem(),
                ),
                const SizedBox(
                  height: 28,
                ),
                Text('The Good Egg',
                  style: Styles.textStyle30.copyWith(
                      fontWeight: FontWeight.bold
                  ),
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: 0.6,
                  child: Text('Jory John ',
                    style: Styles.textStyle18.copyWith(
                      fontWeight: FontWeight.w100,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                const BookRating(
                  mainAxisAlignment: MainAxisAlignment.center,
                ),
                const SizedBox(height: 37),
                const BookAction(),
                const Expanded(child: SizedBox(height: 50,)),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('You can also like ',
                    style: Styles.textStyle14.copyWith(
                      fontWeight: FontWeight.w600,
                    ),),
                ),
                const SizedBox(height: 16,),
                const SimilarBookListView(),
                const SizedBox(height: 40,),
              ],
            ),
          ),
        ),
      ],
    );
  }
}




