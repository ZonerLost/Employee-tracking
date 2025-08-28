import 'package:employee_tracking_app/config/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_fonts.dart';
import '../../../generated/assets.dart';
import '../../custom/common_image_view_widget.dart';
import '../../custom/my_text_widget.dart';



class RemindersScreen extends StatelessWidget {
   RemindersScreen({super.key});
  final RxBool switchValue = false.obs;
  final RxBool switchValue2 = false.obs;

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
              CommonImageView(
                imagePath:Assets.imagesMaskgroup,
              ),
              AppBar(
                elevation: 0,
                backgroundColor: Colors.transparent,
                leading: IconButton(
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: MyText(
                  text: "Reminders",
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
      body: Padding(
        padding: AppSizes.DEFAULT,
        child: Column(
          children: [
            SizedBox(height: 25,),
            Row(

              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "Log Consumption",
                        size: 14,
                        weight: FontWeight.w700,
                        fontFamily: AppFonts.poppins,
                        color: kPrimaryColor,
                      ),
                      SizedBox(height: 5,),
                      MyText(
                        text:  'Remind yourself to begin your daily wellbeing practice. ',
                        size: 12,
                        weight: FontWeight.w400,
                        fontFamily: AppFonts.poppins,
                        color: kGreyTTDColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15,),
                Obx(
                      () => Switch(
                    value: switchValue.value,
                    onChanged: (val) {
                      switchValue.value = val;
                    },
                    activeThumbColor: kQuaternaryColor,
                    activeTrackColor: kPrimary2Color, // Active thumb color
                    inactiveThumbColor: kQuaternaryColor, // Inactive thumb color
                    inactiveTrackColor: Colors.grey.shade300, // Inactive track color
                        trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25,),
            Row(

              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      MyText(
                        text: "Health Metrics & Trends",
                        size: 14,
                        weight: FontWeight.w700,
                        fontFamily: AppFonts.poppins,
                        color: kPrimaryColor,
                      ),
                      SizedBox(height: 5,),
                      MyText(
                        text:  'Remind yourself to begin your daily wellbeing practice. ',
                        size: 12,
                        weight: FontWeight.w400,
                        fontFamily: AppFonts.poppins,
                        color: kGreyTTDColor,
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 15,),
                Obx(
                      () => Switch(
                    value: switchValue2.value,
                    onChanged: (val) {
                      switchValue2.value = val;
                    },
                    activeThumbColor: kQuaternaryColor,
                    activeTrackColor: kPrimary2Color, // Active thumb color
                    inactiveThumbColor: kQuaternaryColor, // Inactive thumb color
                    inactiveTrackColor: Colors.grey.shade300, // Inactive track color
                        trackOutlineColor: WidgetStateProperty.all(Colors.transparent),
                    materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    padding: EdgeInsets.zero,
                  ),
                ),
              ],
            ),

          ],
        ),
      ),
    );
  }
}
