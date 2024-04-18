import 'package:booko/constants.dart';
import 'package:booko/core/utils/app_router.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Booko());
}
class Booko extends StatelessWidget {
  const Booko({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
      ),
    );
  }
}

