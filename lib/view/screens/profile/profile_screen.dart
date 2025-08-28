import 'package:employee_tracking_app/config/constants/app_fonts.dart';
import 'package:employee_tracking_app/config/constants/app_sizes.dart';
import 'package:employee_tracking_app/view/custom/common_image_view_widget.dart';
import 'package:employee_tracking_app/view/custom/my_button.dart';
import 'package:employee_tracking_app/view/custom/my_text_widget.dart';
import 'package:employee_tracking_app/view/custom/my_textfeild.dart';
import 'package:flutter/material.dart';

import '../../../config/constants/app_colors.dart';
import '../../../generated/assets.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

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
                  text: "Profile",
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
      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: MyButton(onTap: (){}, buttonText: "SAVE"),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            children: [
              SizedBox(height: 30,),
              Stack(
                children: [
                  CommonImageView(
                    imagePath: Assets.imagesUserProfile,
                    height: 110,
                  ),
                  Positioned(
                    right: 6,
                      bottom: 6,
                      child: CommonImageView(
                        imagePath: Assets.imagesUploadImage,
                        height: 20,
                      ),),
                ],
              ),
              SizedBox(height: 10,),
              MyText(
                text: "Unverified",
                size: 10,
                weight: FontWeight.w500,
                color: kBlueColor,
              ),
              SizedBox(height: 22,),
              MyTextField(
                label: "Name",
                radius: 6,
              ),
              MyTextField(
                label: "Email",
                radius: 6,
              ),
              MyTextField(
                label: "Phone Number",
                radius: 6,
              ),
              MyTextField(
                label: "Address",
                radius: 6,
              ),

            ],
          ),
        ),
      ),
    );
  }
}






