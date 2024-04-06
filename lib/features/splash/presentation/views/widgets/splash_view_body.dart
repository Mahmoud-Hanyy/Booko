import 'package:booko/constants.dart';
import 'package:booko/core/utils/assets.dart';
import 'package:booko/features/home/presentation/views/home_view.dart';
import 'package:booko/features/splash/presentation/views/widgets/sliding_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashViewBody extends StatefulWidget {
   const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}
class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slidingAnimation;

  @override
  void initState() {
    super.initState();
    initSlidingAnimation();
    navigateToHomeView();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetsData.logo),
          const SizedBox(
            height: 10,
          ),
          SlidingText(slidingAnimation: slidingAnimation)
        ],
      ),
    );
  }
  void initSlidingAnimation(){
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    slidingAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, -3),
    ).animate(animationController);
    animationController.forward();
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 3), () {
      Get.to(() => const HomeView(),
        transition: Transition.fade,
        duration: kTranstionDuration,
      );
    }
    );
  }
}