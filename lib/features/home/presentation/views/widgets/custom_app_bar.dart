import 'package:booko/core/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(vertical: 40),
      child: Row(
        children: [
          const Text('Booko',style: Styles.bookoStyle),
          const Spacer(),
          IconButton(
              onPressed: (){},
              icon: const Icon(FontAwesomeIcons.magnifyingGlass)
          ),
        ],
      ),
    );
  }
}