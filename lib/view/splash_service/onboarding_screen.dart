import 'package:employee_tracking_app/config/constants/app_fonts.dart';
import 'package:employee_tracking_app/config/constants/app_sizes.dart';
import 'package:employee_tracking_app/view/custom/common_image_view_widget.dart';
import 'package:employee_tracking_app/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart'; // Import GetX
import '../../config/constants/app_colors.dart';
import '../../generated/assets.dart';

class OnboardingScreen extends StatelessWidget {
  OnboardingScreen({Key? key}) : super(key: key);

  final PageController _pageController = PageController();
  final RxInt currentPage = 0.obs;

  // List of onboarding images
  final List<String> images = [
    Assets.imagesB1,
    Assets.imagesB2,
    Assets.imagesB3,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Image Slider
              SizedBox(
                height: 300,
                child: PageView.builder(
                  controller: _pageController,
                  itemCount: images.length,
                  onPageChanged: (index) {
                    currentPage.value = index;
                  },
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CommonImageView(
                        imagePath: images[index],
                      ),
                    );
                  },
                ),
              ),

              // Title & Subtitle
              Column(
                children: [
                  MyText(
                    text: "Enjoy Your Time",
                    size: 32,
                    weight: FontWeight.w900,
                    fontFamily: AppFonts.poppins,
                    lineHeight: 0.75,
                    letterSpacing: 0.32,
                  ),
                  const SizedBox(height: 16),
                  MyText(
                    text: "When You Are Confused About\nManaging Your Task Come To Us",
                    size: 14,
                    color: kGreyHColor,
                    weight: FontWeight.w600,
                    fontFamily: AppFonts.poppins,
                    lineHeight: 1.71,
                    letterSpacing: 0.14,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 16),

                  // Dots Indicator with Obx
                  Obx(
                        () => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        images.length,
                            (index) => _buildDot(index == currentPage.value),
                      ),
                    ),
                  ),
                ],
              ),

              // Buttons
              Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF3A6FF7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        // Navigate to login
                      },
                      child: const Text(
                        "LOG IN",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  SizedBox(
                    width: double.infinity,
                    height: 50,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFF7CB8FF),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      onPressed: () {
                        // Navigate to sign up
                      },
                      child: const Text(
                        "SIGN UP",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDot(bool isActive) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 15,
      height: 3,
      decoration: BoxDecoration(
        color: isActive ? kPrimary2Color : Colors.grey[300],
        borderRadius: BorderRadius.circular(2),
      ),
    );
  }
}
