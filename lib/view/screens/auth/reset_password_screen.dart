import 'package:employee_tracking_app/config/constants/app_sizes.dart';
import 'package:employee_tracking_app/view/custom/my_button.dart';
import 'package:employee_tracking_app/view/screens/auth/verification_done_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_fonts.dart';
import '../../../generated/assets.dart';
import '../../custom/common_image_view_widget.dart';
import '../../custom/my_text_widget.dart';
import '../../custom/my_textfeild.dart';



class ResetPasswordScreen extends StatelessWidget {
  const ResetPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding:AppSizes.DEFAULT,
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
                  text: "Resset Password",
                  size: 24,
                  weight: FontWeight.w600,
                  color: kBlackColor,
                  fontFamily: AppFonts.airbnb,
                ),
                SizedBox(height: 12,),
                MyText(
                  text: "Please enter your email address to\nrequest a password reset",
                  size: 15,
                  weight: FontWeight.w400,
                  fontFamily: AppFonts.airbnb,
                  lineHeight: 1.5,
                ),
                SizedBox(height: 26,),
                MyTextField2(
                  hint: "abc@email.com",
                  prefix: Padding(
                    padding: const EdgeInsets.all(12),
                    child: CommonImageView(svgPath: Assets.svgEmail),
                  ),
                ),
                SizedBox(height: 40,),
                MyButton(onTap: (){
                  Get.to(() => VerificationDoneScreen());
                }, buttonText: "SEND",),
                
              ],

            ),
          ),
        ),
      ),
    );
  }
}
