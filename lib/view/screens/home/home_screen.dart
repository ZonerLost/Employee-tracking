import 'package:employee_tracking_app/config/constants/app_sizes.dart';
import 'package:flutter/material.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_fonts.dart';
import '../../../generated/assets.dart';
import '../../custom/common_image_view_widget.dart';
import '../../custom/my_text_widget.dart';
import 'bottom_sheet.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70), // Height of your custom app bar
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            color: kPrimaryColor,
          ),
          child: Stack(
            children: [
              CommonImageView(imagePath: Assets.imagesMaskgroup),
              SafeArea(
                child: Padding(
                  padding: AppSizes.HORIZONTAL,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "Good Morning",
                        size: 12,
                        weight: FontWeight.w400,
                        color: kQuaternaryColor,
                      ),
                      Row(
                        children: [
                          MyText(
                            text: "Rajesh Mehta",
                            size: 21,
                            weight: FontWeight.w600,
                            color: kQuaternaryColor,
                          ),
                          Spacer(),
                          CommonImageView(svgPath: Assets.svgBtnNotifications),
                          SizedBox(width: 25),
                          CommonImageView(
                            imagePath: Assets.imagesDrawer,
                            height: 20,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),

      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: AppSizes.DEFAULT,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 145,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 26,
                          vertical: 13,
                        ),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0x238A8F9B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonImageView(
                              imagePath: Assets.imagesPs,
                              height: 23,
                            ),
                            SizedBox(width: 6),
                            MyText(
                              text: "Pause Shift",
                              size: 13,
                              weight: FontWeight.w600,
                              color: kGreyBNB1Color,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(width: 12),
                      Container(
                        width: 145,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 26,
                          vertical: 13,
                        ),
                        clipBehavior: Clip.antiAlias,
                        decoration: ShapeDecoration(
                          color: const Color(0x238A8F9B),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(100),
                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            CommonImageView(
                              imagePath: Assets.imagesEs,
                              height: 23,
                            ),
                            SizedBox(width: 6),
                            MyText(
                              text: "End Shift",
                              size: 13,
                              weight: FontWeight.w600,
                              color: kGreyBNB1Color,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 8),
                  Stack(
                    children: [
                      CommonImageView(imagePath: Assets.imagesMap),

                      Positioned(
                        bottom: 30,
                        right: 30,
                        left: 30,
                        top: 30,
                        child: CommonImageView(
                          imagePath: Assets.imagesMapDetail,
                          height: 30,
                        ),
                      ),

                      Positioned(
                        right: 15,
                        top: 15,
                        child: Container(
                          width: 109,
                          height: 37.43,
                          padding: const EdgeInsets.symmetric(
                            horizontal: 5.51,
                            vertical: 4.40,
                          ),
                          decoration: ShapeDecoration(
                            color: kPrimary2Color,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.51),
                            ),
                          ),
                          child: Row(
                            children: [
                              CommonImageView(
                                imagePath: Assets.imagesMapView,
                                height: 20,
                              ),
                              SizedBox(width: 10),
                              MyText(
                                text: "Map View",
                                size: 14,
                                weight: FontWeight.w600,
                                color: kQuaternaryColor,
                                fontFamily: AppFonts.inter,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Positioned(
                        bottom: 15,
                        right: 15,
                        left: 15,
                        child: Container(
                          //width: 334,
                          height: 25,
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          decoration: BoxDecoration(
                            color: Colors.white.withValues(alpha: 0.62),
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
                    ],
                  ),
                  SizedBox(height: 8),
                  MyText(
                    text: "Current Task",
                    size: 14,
                    weight: FontWeight.w600,
                  ),
                  SizedBox(height: 8),
                  ListView.builder(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.only(bottom: 15),
                        child: Column(
                          children: [
                            Container(
                              decoration: ShapeDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment(0.02, -0.00),
                                  end: Alignment(1.00, 1.00),
                                  colors: [
                                    const Color(0xFFEDFFFA),
                                    const Color(0xFFFFEBF3),
                                  ],
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(13.03),
                                ),
                              ),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 18),
                                    child: Container(
                                      width: 3.72,
                                      height: 26.98,
                                      decoration: ShapeDecoration(
                                        color: const Color(0xFFF77307),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.only(
                                            topRight: Radius.circular(9.30),
                                            bottomRight: Radius.circular(9.30),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Expanded(
                                    child: Padding(
                                      padding: const EdgeInsets.all(12),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            children: [
                                              Expanded(
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    MyText(
                                                      text:
                                                          "123 Main Street, Amherst MA",
                                                      size: 14,
                                                      weight: FontWeight.w600,
                                                    ),
                                                    SizedBox(height: 3),
                                                    Row(
                                                      children: [
                                                        MyText(
                                                          text:
                                                              "Lawn Sign Drop",
                                                          size: 13,
                                                          weight:
                                                              FontWeight.w400,
                                                          color: kGreyHColor,
                                                        ),
                                                        SizedBox(width: 5),
                                                        MyText(
                                                          text:
                                                              "0.3 miles away",
                                                          size: 13,
                                                          weight:
                                                              FontWeight.w600,
                                                          color: kBlueColor,
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              CommonImageView(
                                                imagePath: Assets.imagesSend,
                                                height: 45,
                                              ),
                                            ],
                                          ),
                                          Divider(color: kTFBorderColor),

                                          MyText(
                                            text: "Notes:",
                                            size: 14,
                                            weight: FontWeight.w600,
                                            color: const Color(0xFFE52020),
                                          ),
                                          MyText(
                                            text:
                                                'RIng doorbell, avoid dog in backyard',
                                            size: 12,
                                            weight: FontWeight.w500,
                                            color: kGreyBNBColor,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 10),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 50,
                                    decoration: ShapeDecoration(
                                      color: kPrimary2Color,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                      ),
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CommonImageView(
                                          svgPath: Assets.svgCamera,
                                        ),
                                        SizedBox(width: 10),
                                        MyText(
                                          text: "MARK COMPLETED",
                                          size: 14,
                                          weight: FontWeight.w600,
                                          color: kQuaternaryColor,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(width: 12),
                                GestureDetector(
                                  onTap:(){
                                    BottomSheetHelper.skippedBottomSheet();
                                  },
                                  child: Container(
                                    width: 123,
                                    height: 48,
                                    decoration: ShapeDecoration(
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(15),
                                        side: BorderSide(
                                          // Border color and width
                                          color: kPrimary2Color,
                                          width: 1,
                                        ),
                                      ),
                                    ),
                                    child: Center(
                                      child: MyText(
                                        text: "SKIP",
                                        size: 13,
                                        weight: FontWeight.w600,
                                        color: kPrimary2Color,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
