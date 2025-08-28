import 'package:employee_tracking_app/config/constants/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_fonts.dart';
import '../../../generated/assets.dart';
import '../../custom/common_image_view_widget.dart';
import '../../custom/my_text_widget.dart';

class MapViewScreen extends StatelessWidget {
  const MapViewScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        /// Full-screen background image
        Positioned.fill(
          child: CommonImageView(
            imagePath: Assets.imagesM1,
            fit: BoxFit.cover,
          ),
        ),

        /// Main Scaffold content
        Scaffold(
          backgroundColor: Colors.transparent, // Make scaffold transparent
          appBar: PreferredSize(
            preferredSize: const Size.fromHeight(60.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(15),
                ),
                color: kPrimaryColor.withOpacity(0.9),
              ),
              child: Stack(
                children: [
                  CommonImageView(imagePath: Assets.imagesMaskgroup),
                  AppBar(
                    elevation: 0,
                    backgroundColor: Colors.transparent,
                    leading: IconButton(
                      icon: const Icon(Icons.arrow_back, color: Colors.white),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                    title: MyText(
                      text: "Map View",
                      size: 18,
                      weight: FontWeight.w600,
                      color: kQuaternaryColor,
                      fontFamily: AppFonts.inter,
                    ),
                    centerTitle: true,
                    actions: [
                      CommonImageView(
                        svgPath: Assets.svgMenu,
                      ),
                      SizedBox(width: 10,)
                    ],
                  ),
                ],
              ),
            ),
          ),
          bottomNavigationBar:  SafeArea(
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 15),
              decoration: BoxDecoration(
                color: Colors.white,
              ),
              child: Row(
                children: [
                  Container(
                    width: 15,
                    height: 15,
                    decoration: ShapeDecoration(
                      color: const Color(0xFF41AB10),
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(width: 5,),
                  MyText(
                    text: "2 Completed",
                    size: 12,
                    weight: FontWeight.w400,
                  ),
                  Spacer(),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFC41515),
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(width: 5,),
                  MyText(
                    text: "3 Pending",
                    size: 12,
                    weight: FontWeight.w400,),
                  Spacer(),
                  Container(
                    width: 15,
                    height: 15,
                    decoration: ShapeDecoration(
                      color: const Color(0xFFF77307),
                      shape: OvalBorder(),
                    ),
                  ),
                  SizedBox(width: 5,),
                  MyText(
                    text: "1 Skipped",
                    size: 12,
                    weight: FontWeight.w400,
                  ),
                ],
              ),
            ),
          ),
          body: Padding(
            padding: AppSizes.DEFAULT,
            child: Column(
              children: [
                Container(
                  height: 93.68,
                  padding: EdgeInsets.all(12),
                  decoration: ShapeDecoration(
                    color: const Color(0xF4373737),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(13.12),
                    ),
                    shadows: [
                      BoxShadow(
                        color: Color(0x0C000000),
                        blurRadius: 0.94,
                        offset: Offset(0, 0.94),
                        spreadRadius: 0.94,
                      )
                    ],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          CommonImageView(
                            imagePath: Assets.imagesArrowWhite,
                            height: 26,
                          ),
                          SizedBox(width: 5,),
                          MyText(
                            text: "Turn rigth onto california St",
                            size: 20,
                            weight: FontWeight.w600,
                            color: kQuaternaryColor,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          MyText(
                            text: "ETA 4 min",
                            size: 14,
                            weight: FontWeight.w600,
                            color: kQuaternaryColor,
                          ),
                          MyText(
                            text: "08 mi",
                            size: 14,
                            weight: FontWeight.w600,
                            color: kQuaternaryColor,
                          ),
                          MyText(
                            text: "11:77",
                            size: 14,
                            weight: FontWeight.w600,
                            color: kQuaternaryColor,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                CommonImageView(
                  imagePath: Assets.imagesMapDetail,
                ),

              ],
            ),
          ), // Empty body or your widgets
        ),
      ],
    );
  }
}
