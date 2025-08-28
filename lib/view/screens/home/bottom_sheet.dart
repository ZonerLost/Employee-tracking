import 'package:employee_tracking_app/config/constants/app_fonts.dart';
import 'package:employee_tracking_app/view/custom/common_image_view_widget.dart';
import 'package:employee_tracking_app/view/custom/my_button.dart';
import 'package:employee_tracking_app/view/custom/my_text_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/constants/app_colors.dart';
import '../../../generated/assets.dart';

class BottomSheetHelper {
  static void skippedBottomSheet() {
    Get.bottomSheet(
      Container(
        padding: const EdgeInsets.all(20),
        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                MyText(
                  text: "Skipped Reason",
                  size: 16,
                  weight: FontWeight.w600,
                ),
                GestureDetector(
                  onTap: (){
                    Get.back();
                  },
                  child: MyText(
                    text: "Cancel",
                    size: 12,
                    weight: FontWeight.w500,
                    fontFamily: AppFonts.inter,
                  ),
                ),
              ],
            ),
            SizedBox(height: 25),
            SelectableList(
              items: [
                "No Soliciting sign",
                "Construction Zone",
                "Blocked Access",
                "Unable to Locate",
              ],
            ),
            SizedBox(height: 25),
            MyText(
              text: "Add Photos (Optional)",
              size: 14,
              weight: FontWeight.w400,
            ),
            SizedBox(height: 12),
            Container(
              width: 73,
              height: 69,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: kPrimary2Color),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: CommonImageView(svgPath: Assets.svgAddBlue),
              ),
            ),
            SizedBox(height: 30),
            MyButton(onTap: () {}, buttonText: "SUBMIT"),
          ],
        ),
      ),
      isScrollControlled: true,
      barrierColor: Colors.black.withOpacity(0.5),
    );
  }
}


class SelectableList extends StatelessWidget {
  final List<String> items;
  final RxInt selectedIndex = (-1).obs; // -1 means none selected

  SelectableList({super.key, required this.items});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(items.length, (index) {
        return GestureDetector(
          onTap: () => selectedIndex.value = index,
          child: Obx(
                () => Container(
              margin: const EdgeInsets.symmetric(vertical: 4),
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 16),
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 1, color: kPrimary2Color),
                  borderRadius: BorderRadius.circular(6),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: items[index],
                    size: 14,
                    weight: FontWeight.w500,
                  ),
                  Container(
                    width: 18,
                    height: 18,
                    decoration: BoxDecoration(
                      color: selectedIndex.value == index
                          ? kPrimary2Color
                          : Colors.transparent,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: selectedIndex.value == index
                            ? Colors.transparent
                            : kPrimary2Color,
                        width: 1,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      }),
    );
  }
}

