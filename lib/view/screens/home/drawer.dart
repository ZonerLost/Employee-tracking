import 'package:employee_tracking_app/config/constants/app_sizes.dart';
import 'package:employee_tracking_app/view/custom/common_image_view_widget.dart';
import 'package:employee_tracking_app/view/custom/my_text_widget.dart';
import 'package:employee_tracking_app/view/screens/auth/login_screen.dart';
import 'package:employee_tracking_app/view/screens/profile/notification_screen.dart';
import 'package:employee_tracking_app/view/screens/profile/privacy_policy_screen.dart';
import 'package:employee_tracking_app/view/screens/profile/profile_screen.dart';
import 'package:employee_tracking_app/view/screens/profile/reminders_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../config/constants/app_colors.dart';
import '../../../generated/assets.dart';
import '../../splash_service/onboarding_screen.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: ListTileTheme(
        textColor: Colors.white,
        iconColor: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Profile Section
            Container(
              color: kPrimary2Color,
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  const CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                      'https://i.pravatar.cc/150?img=3',
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Column(
                        children: [
                          MyText(
                            text: "2209",
                            size: 16,
                            weight: FontWeight.w600,
                            color: kQuaternaryColor,
                          ),
                          SizedBox(height: 8,),
                          MyText(
                            text: "Project Done",
                            size: 16,
                            weight: FontWeight.w600,
                            color: kQuaternaryColor,
                          ),
                        ],
                      ),
                      SizedBox(width: 20,),
                      Column(
                        children: [
                          MyText(
                            text: "80",
                            size: 16,
                            weight: FontWeight.w600,
                            color: kQuaternaryColor,
                          ),
                          SizedBox(height: 8,),
                          MyText(
                            text: "Project Pending",
                            size: 16,
                            weight: FontWeight.w600,
                            color: kQuaternaryColor,
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),

            Padding(
              padding: AppSizes.HORIZONTAL,
              child: const Divider(color: kQuaternaryColor, thickness: 2,radius: BorderRadius.all(Radius.circular(15)),),
            ),

            // Menu Items
            Expanded(
              child: Container(
                color: kPrimary2Color,
                child: ListView(
                  padding: AppSizes.HORIZONTAL,
                  children: [
                    SizedBox(height: 25),
                    CustomChipButton(text: "Personal Information", onTap: () {Get.to(() => ProfileScreen(showLeading: true,));}),
                    CustomChipButton(text: "Reminders", onTap: () {Get.to(() => RemindersScreen());}),
                    CustomChipButton(text: "Notification", onTap: () {Get.to(() => NotificationScreen());}),
                    CustomChipButton(text: "Terms & Condition", onTap: () {Get.to(() => PrivacyPolicyScreen());}),
                    CustomChipButton(text: "Privacy Policy", onTap: () {Get.to(() => PrivacyPolicyScreen());}),
                    SizedBox(height: 25),
                    MyText(
                      text: "FAQ",
                      size: 16,
                      weight: FontWeight.w600,
                      color: kQuaternaryColor,
                    ),
                    SizedBox(height: 10),
                    MyText(
                      text: "Contact Forms",
                      size: 16,
                      weight: FontWeight.w600,
                      color: kQuaternaryColor,
                    ),
                    SizedBox(height: 10),
                    MyText(
                      text: "Phone Support",
                      size: 16,
                      weight: FontWeight.w600,
                      color: kQuaternaryColor,
                    ),
                    SizedBox(height: 25),
                    const Divider(color: kQuaternaryColor, thickness: 2,radius: BorderRadius.all(Radius.circular(15)),),

                  ],
                ),
              ),
            ),

            // Logout Button at Bottom
            Container(
              color:kPrimary2Color,
              child: ListTile(
                leading: CommonImageView(
                  svgPath: Assets.svgLogout,
                ),
                title: MyText(
                  text: "Logout",
                  size: 16,
                  weight: FontWeight.w600,
                  color: kQuaternaryColor,
                ),
                onTap: () {
                  Get.off(() => LoginScreen());
                },
              ),
            ),
          ],
        ),
      ),
    );
  }


}




class CustomChipButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomChipButton({
    super.key,
    required this.text,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Container(
          height: 32,
          decoration: ShapeDecoration(
            color: Colors.white,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
          ),
          child: Center(
            child: MyText(
              text: text,
              size: 12,
              weight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
