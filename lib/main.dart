import 'package:employee_tracking_app/view/custom/custom_progress_indicator.dart';
import 'package:employee_tracking_app/view/screens/auth/create_account_screen.dart';
import 'package:employee_tracking_app/view/screens/auth/reset_password_screen.dart';
import 'package:employee_tracking_app/view/screens/auth/verification_done_screen.dart';
import 'package:employee_tracking_app/view/screens/auth/verification_screen.dart';
import 'package:employee_tracking_app/view/screens/bottom_nav_bar/bottom_nav_bar_screen.dart';
import 'package:employee_tracking_app/view/screens/home/Map_view_screen.dart';
import 'package:employee_tracking_app/view/screens/home/chat_screen.dart';
import 'package:employee_tracking_app/view/screens/home/history_screen.dart';
import 'package:employee_tracking_app/view/screens/home/home_screen.dart';
import 'package:employee_tracking_app/view/screens/profile/notification_screen.dart';
import 'package:employee_tracking_app/view/screens/profile/privacy_policy_screen.dart';
import 'package:employee_tracking_app/view/screens/profile/profile_screen.dart';
import 'package:employee_tracking_app/view/screens/profile/reminders_screen.dart';
import 'package:employee_tracking_app/view/splash_service/onboarding_screen.dart';
import 'package:employee_tracking_app/view/splash_service/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'config/constants/app_fonts.dart';
import 'controller/select_role_controller/select_role_controller.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //await UserSimplePreferences.init();
  // ✅ Set bottom navigation bar color globally
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Optional
      statusBarIconBrightness: Brightness.dark, // Optional
      systemNavigationBarColor: Colors.black, // Bottom nav bar color
      systemNavigationBarIconBrightness: Brightness.light, // Icons color
    ),
  );

  Get.put(SelectRoleController());
  runApp(MyApp());
}

final String dummyImage2 = 'https://images.unsplash.com/photo-1494976388531-d1058494cdd8?q=80&w=1470&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
final String dummyImage1 = 'https://images.unsplash.com/photo-1535713875002-d1d0cf377fde?w=150&h=150&fit=crop&crop=face';
final String dummyImage = 'https://images.unsplash.com/photo-1506794778202-cad84cf45f1d?q=80&w=1974&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      debugShowMaterialGrid: false,
      title: "Passion Port",
      theme: ThemeData(
        fontFamily: AppFonts.poppins,
        useMaterial3: true,
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(backgroundColor: Colors.white),
      ),
      home: MapViewScreen(),
      defaultTransition: Transition.fadeIn,
      transitionDuration: const Duration(milliseconds: 500),
    );
  }
}
