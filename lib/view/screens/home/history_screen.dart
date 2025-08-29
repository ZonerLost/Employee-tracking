import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:employee_tracking_app/config/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_fonts.dart';
import '../../../generated/assets.dart';
import '../../custom/common_image_view_widget.dart';
import '../../custom/custom_progress_indicator.dart';
import '../../custom/my_text_widget.dart';

class HistoryScreen extends StatelessWidget {
  const HistoryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60.0),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.vertical(bottom: Radius.circular(15)),
            color: kPrimaryColor,
          ),
          child: Stack(
            children: [
              CommonImageView(imagePath: Assets.imagesMaskgroup),
              AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                automaticallyImplyLeading: false,
                title: MyText(
                  text: "Task History",
                  size: 18,
                  weight: FontWeight.w600,
                  color: kQuaternaryColor,
                  fontFamily: AppFonts.inter,
                ),
                centerTitle: true,
              ),
            ],
          ),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              DatePickerExample(),
              SizedBox(height: 12),
              MyText(text: "This Week’s Performance", size: 14, weight: FontWeight.w600),
              SizedBox(height: 12),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6,vertical: 12),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFEEF2FF),
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
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Mileage",
                                size: 14,
                                weight: FontWeight.w600,
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  MyText(
                                    text: "125",
                                    size: 27,
                                    weight: FontWeight.w600,
                                    color: kBlueColor,
                                    fontFamily: AppFonts.inter,
                                  ),
                                  MyText(
                                    text: "miles",
                                    size: 14,
                                    weight: FontWeight.w400,
                                    color: kBlueColor,
                                      fontFamily: AppFonts.inter
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CommonImageView(
                            svgPath: Assets.svgLocation1,
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(width: 10,),
                  Expanded(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 6,vertical: 12),
                      decoration: ShapeDecoration(
                        color: const Color(0xFFEEF2FF),
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
                      child: Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              MyText(
                                text: "Hours",
                                size: 14,
                                weight: FontWeight.w600,
                              ),
                              SizedBox(height: 15,),
                              Row(
                                children: [
                                  MyText(
                                    text: "32.5",
                                    size: 27,
                                    weight: FontWeight.w600,
                                    color: kBlueColor,
                                    fontFamily: AppFonts.inter,
                                  ),
                                  MyText(
                                    text: "hrs",
                                    size: 14,
                                    weight: FontWeight.w400,
                                    color: kBlueColor,
                                      fontFamily: AppFonts.inter
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CommonImageView(
                            svgPath: Assets.svgClock1,
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        CustomLinearProgress(
                          label: "Completed",
                          progress: 0.75, // 75%
                          backgroundColor: Colors.grey[300]!,
                          progressColor: Color(0xFF4F8B33),
                        ),
                        SizedBox(height: 10,),
                        CustomLinearProgress(
                          label: "Pending",
                          progress: 0.75, // 75%
                          backgroundColor: Colors.grey[300]!,
                          progressColor: Color(0xFFDA2B2B),
                        ),
                        SizedBox(height: 10,),
                        CustomLinearProgress(
                          label: "Skipped",
                          progress: 0.80, // 75%
                          backgroundColor: Colors.grey[300]!,
                          progressColor: Color(0xFFE87619),
                        )




                      ],
                    ),
                  ),
                  SizedBox(width: 10,),
                  CustomCircularProgress(
                    progress: 0.58, // 58%
                    size: 100,
                    strokeWidth: 14,
                  ),
                ],
              ),
              SizedBox(height: 12),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(text: "Today", size: 14, weight: FontWeight.w600),
                  CommonImageView(svgPath: Assets.svgUilCalender),
                ],
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
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Expanded(
                                            child: Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                MyText(
                                                  text: "2:30 PM",
                                                  size: 14,
                                                  weight: FontWeight.w600,
                                                ),
                                                SizedBox(height: 3),
                                                Row(
                                                  children: [
                                                    MyText(
                                                      text: "Lawn Sign Drop",
                                                      size: 13,
                                                      weight: FontWeight.w400,
                                                      color: kGreyHColor,
                                                    ),
                                                    SizedBox(width: 5),
                                                    CommonImageView(
                                                      svgPath:
                                                          Assets.svgLocation,
                                                    ),
                                                    MyText(
                                                      text: "456 Oak Avenue",
                                                      size: 13,
                                                      weight: FontWeight.w600,
                                                      color: kBlueColor,
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          CommonImageView(
                                            svgPath: Assets.svgTablerCamera,
                                          ),
                                        ],
                                      ),
                                      Divider(color: kTFBorderColor),

                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          MyText(
                                            text: "Completed at 2:45 PM",
                                            size: 14,
                                            weight: FontWeight.w600,
                                            color: const Color(0xFF5AB62F),
                                          ),
                                          Container(
                                            padding: const EdgeInsets.symmetric(
                                              horizontal: 12,
                                              vertical: 6,
                                            ),
                                            clipBehavior: Clip.antiAlias,
                                            decoration: ShapeDecoration(
                                              color: const Color(0x3341AB10),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(25),
                                              ),
                                            ),
                                            child: MyText(
                                              text: "Completed",
                                              size: 13,
                                              weight: FontWeight.w600,
                                              color: Color(0xFF41AB10),
                                              fontFamily: AppFonts.inter,
                                            ),
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
                      ],
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}





class DatePickerExample extends StatelessWidget {
  const DatePickerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyDateTimeLine(
      initialDate: DateTime.now(),
      onDateChange: (date) {
        // Handle the selected date
      },
      headerProps: const EasyHeaderProps(
        monthPickerType: MonthPickerType.switcher,
        showHeader: false, // Hide the header like your example
      ),
      dayProps: EasyDayProps(
        height: 70,
        width: 55,
        dayStructure: DayStructure.dayStrDayNum, // Show day + date
        inactiveDayStyle: DayStyle(
          dayNumStyle: const TextStyle(
            fontSize: 16,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
          dayStrStyle: const TextStyle(
            fontSize: 12,
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        activeDayStyle: DayStyle(
          dayNumStyle: const TextStyle(
            fontSize: 16,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
          dayStrStyle: const TextStyle(
            fontSize: 12,
            color: Colors.white,
            fontWeight: FontWeight.w500,
          ),
          decoration: BoxDecoration(
            color: const Color(0xFF5668FF), // Blue color
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
    );
  }
}
