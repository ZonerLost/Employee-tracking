import 'package:employee_tracking_app/config/constants/app_fonts.dart';
import 'package:employee_tracking_app/config/constants/app_sizes.dart';
import 'package:employee_tracking_app/view/custom/common_image_view_widget.dart';
import 'package:employee_tracking_app/view/custom/my_button.dart';
import 'package:employee_tracking_app/view/custom/my_text_widget.dart';
import 'package:employee_tracking_app/view/custom/my_textfeild.dart';
import 'package:flutter/material.dart';
import 'package:country_code_picker/country_code_picker.dart';
import '../../../config/constants/app_colors.dart';
import '../../../generated/assets.dart';

class ProfileScreen extends StatelessWidget {
  final bool showLeading;
  ProfileScreen({super.key, required this.showLeading});

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
                leading:
                    showLeading
                        ? IconButton(
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                          onPressed: () {
                            Navigator.pop(context);
                          },
                        )
                        : null,
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
          child: MyButton(onTap: () {}, buttonText: "SAVE"),
        ),
      ),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Padding(
          padding: AppSizes.DEFAULT,
          child: Column(
            children: [
              SizedBox(height: 30),
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
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              MyText(
                text: "Unverified",
                size: 10,
                weight: FontWeight.w600,
                color: kBlueColor,
              ),
              SizedBox(height: 22),
              MyTextField(label: "Name", radius: 6),
              MyTextField(label: "Email", radius: 6),
              MyTextField(
                label: "Phone number",
                  radius: 6,
                prefix: CountryCodePicker(
                  onChanged: (_) {}, // Required even if unused
                  initialSelection: 'ES', // Spain
                  //countryFilter: ['ES'], // Only allow Spain
                  showFlag: true,
                  showDropDownButton: true, // Hide dropdown icon
                  //enabled: false, // Disable interaction
                  textStyle: const TextStyle(color: Colors.black87),
                  padding: EdgeInsets.zero,
                ),
              ),
              MyTextField(label: "Address", radius: 6),
            ],
          ),
        ),
      ),
    );
  }
}
