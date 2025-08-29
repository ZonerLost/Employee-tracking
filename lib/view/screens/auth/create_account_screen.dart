import 'package:employee_tracking_app/view/custom/custom_appbar.dart';
import 'package:employee_tracking_app/view/screens/auth/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_fonts.dart';
import '../../../config/constants/app_sizes.dart';
import '../../../generated/assets.dart';
import '../../custom/common_image_view_widget.dart';
import '../../custom/my_button.dart';
import '../../custom/my_text_widget.dart';
import '../../custom/my_textfeild.dart';



class CreateAccountScreen extends StatelessWidget {
   CreateAccountScreen({super.key});

  final RxBool switchValue = false.obs;
  final RxBool isPasswordHidden = true.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: CustomAppBar2(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: AppSizes.DEFAULT,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: CommonImageView(
                    svgPath: Assets.svgArrowLeft,
                  ),
                ),
                SizedBox(height: 20,),
                MyText(
                  text: "Sign up",
                  size: 24,
                  weight: FontWeight.w600,
                  color: kBlackColor,
                  fontFamily: AppFonts.airbnb,
                ),
                SizedBox(height: 20),
                MyTextField2(
                  hint: "Full name",
                  prefix: Padding(
                    padding: const EdgeInsets.all(12),
                    child: CommonImageView(svgPath: Assets.svgProfile),
                  ),
                ),
                MyTextField2(
                  hint: "abc@email.com",
                  prefix: Padding(
                    padding: const EdgeInsets.all(12),
                    child: CommonImageView(svgPath: Assets.svgEmail),
                  ),
                ),
                Obx(
                      () => MyTextField2(
                    hint: "Your password",
                    isObSecure: isPasswordHidden.value, // Hide/show password
                    prefix: Padding(
                      padding: const EdgeInsets.all(12),
                      child: CommonImageView(svgPath: Assets.svgLock),
                    ),
                    suffix: InkWell(
                      onTap: () {
                        isPasswordHidden.value = !isPasswordHidden.value;
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: CommonImageView(
                          svgPath:
                          isPasswordHidden.value
                              ? Assets.svgHidePassword
                              : Assets
                              .svgHidePassword, // Change icon based on state
                        ),
                      ),
                    ),
                  ),
                ),
                Obx(
                      () => MyTextField2(
                    hint: "Confirm password",
                    isObSecure: isPasswordHidden.value, // Hide/show password
                    prefix: Padding(
                      padding: const EdgeInsets.all(12),
                      child: CommonImageView(svgPath: Assets.svgLock),
                    ),
                    suffix: InkWell(
                      onTap: () {
                        isPasswordHidden.value = !isPasswordHidden.value;
                      },
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: CommonImageView(
                          svgPath:
                          isPasswordHidden.value
                              ? Assets.svgHidePassword
                              : Assets
                              .svgHidePassword, // Change icon based on state
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 40),
                MyButton(onTap: () {}, buttonText: "SIGN UP"),
                SizedBox(height: 40),
                Align(
                  alignment: Alignment.center,
                  child: MyText(
                    text: "OR",
                    size: 16,
                    weight: FontWeight.w600,
                    color: kGreyDColor,
                  ),
                ),
                SizedBox(height: 20),
                buildLoginButton(
                  svgPath: Assets.svgGoogle,
                  text: "Login with Google",
                  onTap: () {
                    print("Google login tapped");
                  },
                ),
                SizedBox(height: 20),
                buildLoginButton(
                  svgPath: Assets.svgFacebook,
                  text: "Login with Facebook",
                  onTap: () {
                    print("Facebook login tapped");
                  },
                ),
                SizedBox(height: 20),
                Align(
                  alignment: Alignment.center,
                  child: GestureDetector(
                    onTap: (){
                      Get.to(()=>LoginScreen());
                    },
                    child: Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Already have an account?  ',
                            style: TextStyle(
                              color: kBlackColor,
                              fontSize: 15,
                              fontFamily: AppFonts.airbnb,
                              fontWeight: FontWeight.w400,
                              height: 1.67,
                            ),
                          ),
                          TextSpan(
                            text: 'Signin',
                            style: TextStyle(
                              color: kPrimary2Color,
                              fontSize: 15,
                              fontFamily: AppFonts.airbnb,
                              fontWeight: FontWeight.w600,
                              height: 1.67,
                            ),
                          ),
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildLoginButton({
    required String svgPath,
    required String text,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        height: 56,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          shadows: [
            BoxShadow(
              color: const Color(0x3FD2D4E2),
              blurRadius: 30,
              offset: const Offset(0, 0),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CommonImageView(svgPath: svgPath),
            const SizedBox(width: 20),
            MyText(
              text: text,
              size: 16,
              weight: FontWeight.w400,
              color: kBlackColor,
            ),
          ],
        ),
      ),
    );
  }
}
