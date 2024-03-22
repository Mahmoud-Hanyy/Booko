import 'package:booko/core/utils/assets.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children:[
          Image.asset(AssetsData.logo),
          const SizedBox(
            height: 10,
          ),
          const Text('A smarter way to read ',
          textAlign: TextAlign.center
          ),
        ],
      ),
    );
  }
}
