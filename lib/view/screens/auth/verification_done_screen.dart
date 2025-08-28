import 'package:employee_tracking_app/config/constants/app_fonts.dart';
import 'package:employee_tracking_app/config/constants/app_sizes.dart';
import 'package:employee_tracking_app/view/custom/common_image_view_widget.dart';
import 'package:employee_tracking_app/view/custom/my_button.dart';
import 'package:employee_tracking_app/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../../../generated/assets.dart';



class VerificationDoneScreen extends StatelessWidget {
  const VerificationDoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: CommonImageView(
                    svgPath: Assets.svgArrowLeft,
                  ),
                ),
              ),
              Spacer(),
              CommonImageView(svgPath: Assets.svgVerificationDone,),
              SizedBox(height: 15,),
              MyText(
                text: 'Your OTP Verification \nhas been Done',
                size: 22,
                weight: FontWeight.w600,
                textAlign: TextAlign.center,
                fontFamily: AppFonts.inter,
              ),
              Spacer(),
              Spacer(),
              MyButton(onTap: (){}, buttonText: "OKEY"),

            ],
          ),
        ),
      ),
    );
  }
}
