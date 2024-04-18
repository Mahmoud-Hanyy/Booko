import 'package:booko/features/home/presentation/views/home_details_view.dart';
import 'package:booko/features/home/presentation/views/home_view.dart';
import 'package:booko/features/splash/presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter{
  static const kHomeView = '/home';
  static const kBookDetailsView = '/book_details_view';
  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: kBookDetailsView,
        builder: (context, state) => const BookDetailsView(),
      ),
    ],
  );
}