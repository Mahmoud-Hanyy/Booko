import 'package:booko/core/utils/styles.dart';
import 'package:booko/features/search/presentation/views/widgets/custom_search_text_field.dart';
import 'package:booko/features/search/presentation/views/widgets/search_result_list_view.dart';
import 'package:flutter/material.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
      child: Column(
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 20,
          ),
          Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Search Results ',
                style: Styles.titleMedium,
              )),
          SizedBox(
            height: 20,
          ),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}
