import 'package:booko/constants.dart';
import 'package:booko/core/utils/app_router.dart';
import 'package:booko/core/utils/service_locator.dart';
import 'package:booko/features/home/data/repos/home_repo_impl.dart';
import 'package:booko/features/home/presentation/manager/best_seller/best_seller_cubit.dart';
import 'package:booko/features/home/presentation/manager/featured_books/featured_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const Booko());
}

class Booko extends StatelessWidget {
  const Booko({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=> FeaturedBooksCubit(
          getIt.get<HomeRepoImpl>(),
              ),
        ),
        BlocProvider(create: (context)=> BestSellerCubit(
          getIt.get<HomeRepoImpl>(),
            ),
        ),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
        ),
      ),
    );
  }
}
