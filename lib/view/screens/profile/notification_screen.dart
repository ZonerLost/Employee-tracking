import 'package:flutter/material.dart';

import '../../../config/constants/app_colors.dart';
import '../../../config/constants/app_fonts.dart';
import '../../../config/constants/app_sizes.dart';
import '../../../generated/assets.dart';
import '../../custom/common_image_view_widget.dart';
import '../../custom/my_text_widget.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({super.key});

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
                leading: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                title: MyText(
                  text: "Notifications",
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText(
                    text: "Today",
                    size: 12,
                    weight: FontWeight.w600,
                    color: kBlackColor,
                    fontFamily: AppFonts.poppins,
                  ),
                  MyText(
                    text: "clear all",
                    size: 10,
                    weight: FontWeight.w400,
                    color: kBlackColor,
                    fontFamily: AppFonts.inter,
                  ),
                ],
              ),
              buildCustomListTile(
                imagePath: Assets.imagesPaymentSuccess,
                title: "Payment Successfully!",
                subtitle:
                    "Lorem ipsum dolor sit amet consectetur. Ultricies tincidunt eleifend vitae",
                onTap: () {},
              ),
              buildCustomListTile(
                imagePath: Assets.imagesSpecialDiscount,
                title: "30% Special Discount!",
                subtitle:
                    "Lorem ipsum dolor sit amet consectetur. Ultricies tincidunt eleifend vitae",
                onTap: () {},
              ),
              SizedBox(height: 5),
              MyText(
                text: "Yesterday",
                size: 12,
                weight: FontWeight.w600,
                color: kBlackColor,
                fontFamily: AppFonts.poppins,
              ),
              SizedBox(height: 5),
              buildCustomListTile(
                imagePath: Assets.imagesPaymentSuccess,
                title: "Payment Successfully!",
                subtitle:
                    "Lorem ipsum dolor sit amet consectetur. Ultricies tincidunt eleifend vitae",
                onTap: () {},
              ),
              buildCustomListTile(
                imagePath: Assets.imagesCreditCard,
                title: "Credit Card added!",
                subtitle:
                    "Lorem ipsum dolor sit amet consectetur. Ultricies tincidunt eleifend vitae",
                onTap: () {},
              ),
              buildCustomListTile(
                imagePath: Assets.imagesAddMoney,
                title: "Added Money wallet Successfully!",
                subtitle:
                    "Lorem ipsum dolor sit amet consectetur. Ultricies tincidunt eleifend vitae",
                onTap: () {},
              ),
              buildCustomListTile(
                imagePath: Assets.imagesSpecialDiscount,
                title: "30% Special Discount!",
                subtitle:
                    "Lorem ipsum dolor sit amet consectetur. Ultricies tincidunt eleifend vitae",
                onTap: () {},
              ),
              SizedBox(height: 5),
              MyText(
                text: "May, 27 2025",
                size: 12,
                weight: FontWeight.w600,
                color: kBlackColor,
                fontFamily: AppFonts.poppins,
              ),
              SizedBox(height: 5),
              buildCustomListTile(
                imagePath: Assets.imagesPaymentSuccess,
                title: "Payment Successfully!",
                subtitle:
                    "Lorem ipsum dolor sit amet consectetur. Ultricies tincidunt eleifend vitae",
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildCustomListTile({
    required String imagePath,
    required String title,
    required String subtitle,
    VoidCallback? onTap,
  }) {
    return ListTile(
      onTap: onTap,
      contentPadding: EdgeInsets.zero,
      minVerticalPadding: 0,
      leading: CommonImageView(imagePath: imagePath, height: 45),
      title: MyText(
        text: title,
        size: 14,
        weight: FontWeight.w600,
        color: kBlackColor,
        fontFamily: AppFonts.inter,
      ),
      subtitle: MyText(
        text: subtitle,
        size: 10,
        weight: FontWeight.w400,
        color: kGreyTTDColor,
        fontFamily: AppFonts.inter,
      ),
    );
  }
}
