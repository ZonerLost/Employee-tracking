import 'package:employee_tracking_app/view/custom/my_text_widget.dart';
import 'package:employee_tracking_app/view/splash_service/onboarding_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import '../../config/constants/app_colors.dart';
import '../screens/auth/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late AnimationController _logoController;
  late AnimationController _progressController;
  late Animation<double> _logoAnimation;
  late Animation<double> _progressAnimation;

  @override
  void initState() {
    super.initState();

    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    _logoController = AnimationController(
      duration: const Duration(milliseconds: 1200),
      vsync: this,
    );

    _progressController = AnimationController(
      duration: const Duration(milliseconds: 2000),
      vsync: this,
    );

    _logoAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _logoController, curve: Curves.elasticOut),
    );

    _progressAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _progressController, curve: Curves.easeInOut),
    );

    _startAnimations();
    _navigateToHome();
  }

  void _startAnimations() {
    _logoController.forward();
    Future.delayed(const Duration(milliseconds: 1500), () {
      _progressController.forward();
    });
  }

  void _navigateToHome() {
    Future.delayed(const Duration(milliseconds: 3500), () {
      if (mounted) {
        Get.offAll(() => OnboardingScreen());
      }
    });
  }

  @override
  void dispose() {
    _logoController.dispose();
    _progressController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ScaleTransition(
              scale: _logoAnimation,
              child: Container(
                width: 122,
                height: 122,
                decoration: const ShapeDecoration(
                  color: Colors.white,
                  shape: OvalBorder(),
                ),
              ),
            ),
            const SizedBox(height: 15),
            FadeTransition(
              opacity: _progressAnimation,
              child: MyText(
                text: "Employee Tracking",
                size: 24,
                weight: FontWeight.bold,
                color: kQuaternaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
