import 'package:employee_tracking_app/view/screens/auth/reset_password_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:pinput/pinput.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_fonts.dart';
import '../../../config/constants/app_sizes.dart';
import '../../../generated/assets.dart';
import '../../custom/common_image_view_widget.dart';
import '../../custom/custom_animated_row.dart';
import '../../custom/my_button.dart';
import '../../custom/my_text_widget.dart';
import '../../custom/my_textfeild.dart';


class VerificationScreen extends StatelessWidget {
  const VerificationScreen({super.key});

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
                  text: "Verification",
                  size: 24,
                  weight: FontWeight.w600,
                  color: kBlackColor,
                  fontFamily: AppFonts.airbnb,
                ),
                SizedBox(height: 12,),
                MyText(
                  text: "We’ve send you the verification\ncode on +1 2620 0323 7631",
                  size: 15,
                  weight: FontWeight.w400,
                  fontFamily: AppFonts.airbnb,
                  lineHeight: 1.5,
                ),
                SizedBox(height: 26,),
                Pinput(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  length: 4,
                  defaultPinTheme: PinTheme(
                    width: 55,
                    height: 55,
                    textStyle: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w400,
                        fontFamily: AppFonts.airbnb,
                        color: kBlackColor
                    ),
                    decoration: BoxDecoration(
                        color: kQuaternaryColor, // Center color
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kTFBorderColor, width: 1)
                    ),
                    //margin: EdgeInsets.only(left: 8),
                  ),
                  focusedPinTheme: PinTheme(
                    width: 55,
                    height: 55,
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      fontFamily: AppFonts.airbnb,
                      color: kBlackColor,
                    ),
                    decoration: BoxDecoration(
                        color: kQuaternaryColor,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: kPrimary2Color, width: 1)),
                    // margin: EdgeInsets.only(left: 8),
                  ),
                  submittedPinTheme: PinTheme(
                    width: 55,
                    height: 55,
                    textStyle: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w400,
                      color: kBlackColor,
                      fontFamily: AppFonts.airbnb,
                    ),
                    decoration: BoxDecoration(
                      color: kQuaternaryColor,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(color: kTFBorderColor, width: 1),
                    ),
                    // margin: EdgeInsets.only(left: 8),
                  ),
                  preFilledWidget: MyText(
                    text: "-",
                    size: 24,
                    weight: FontWeight.w400,
                    color: kTFBorderColor,
                  ),
                  onCompleted: (pin) {},
                ),
                SizedBox(height: 40,),
                MyButton(onTap: (){
                  Get.to(() => ResetPasswordScreen());
                }, buttonText: "CONTINUE",),
                SizedBox(height: 12,),
                Align(
                  alignment: Alignment.center,
                  child: Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Re-send code in ',
                          style: TextStyle(
                            color: kBlackColor,
                            fontSize: 15,
                            fontFamily: AppFonts.airbnb,
                            fontWeight: FontWeight.w400,
                            height: 1.67,
                          ),
                        ),
                        TextSpan(
                          text: ' ',
                          style: TextStyle(
                            color:kBlackColor,
                            fontSize: 15,
                            fontFamily: AppFonts.airbnb,
                            fontWeight: FontWeight.w400,
                            height: 1.67,
                          ),
                        ),
                        TextSpan(
                          text: '0:20',
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
                )

              ],

            ),
          ),
        ),
      ),
    );
  }
}
