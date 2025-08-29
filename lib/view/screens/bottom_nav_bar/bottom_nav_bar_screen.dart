import 'dart:developer';
import 'package:employee_tracking_app/view/screens/home/chat_screen.dart';
import 'package:employee_tracking_app/view/screens/home/history_screen.dart';
import 'package:employee_tracking_app/view/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/constants/app_colors.dart';
import '../../../../config/constants/app_fonts.dart';
import '../../../../generated/assets.dart';
import '../../custom/my_text_widget.dart';
import '../profile/profile_screen.dart';

class FanBottomNavBar extends StatefulWidget {
  const FanBottomNavBar({super.key});

  @override
  State<FanBottomNavBar> createState() => _FanBottomNavBarState();
}

class _FanBottomNavBarState extends State<FanBottomNavBar> {
  final RxInt currentIndex = 0.obs;

  late List<Map<String, dynamic>> items;

  @override
  void initState() {
    super.initState();
    updateItems();
  }

  void updateItems() {
    items = [
      {'image': Assets.imagesHome, 'label': 'Home'},
      {'image': Assets.imagesMessage, 'label': 'Message'},
      {'image': Assets.imagesCalendar, 'label': 'History'},
      {'image': Assets.imagesProfile1, 'label': 'Profile'},
    ];
  }

  final List<Widget> screens = [
    HomeScreen(),
    ChatUiScreen(),
    HistoryScreen(),
    ProfileScreen(showLeading: false,),
  ];

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => Scaffold(
        body: screens[currentIndex.value],
        bottomNavigationBar: Container(
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 1,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: const Color(0xFFE9E8EF),
              ),
            ),
          ),
          child: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
            onTap: (index) {
              currentIndex.value = index;
              log(currentIndex.value.toString());
              updateItems();
            },
            type: BottomNavigationBarType.fixed,
            currentIndex: currentIndex.value,
            selectedFontSize: 12,
            unselectedFontSize: 12,
            selectedLabelStyle: TextStyle(
              fontFamily: AppFonts.poppins,
              color: kDividerColor,
            ),
            unselectedLabelStyle: TextStyle(
              fontFamily: AppFonts.poppins,
              color: kDividerColor,
            ),
            selectedItemColor: kPrimaryColor,
            unselectedItemColor: kGreyTxColor,
            items: List.generate(items.length, (index) {
              final isActive = currentIndex.value == index;
              return BottomNavigationBarItem(
                tooltip: 'ss',
                icon: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      items[index]['image'],
                      color:
                          index == 4
                              ? null
                              : (isActive ? kPrimaryColor : kGreyBNBColor),
                      width: 28,
                    ),
                    const SizedBox(height: 4),
                    MyText(
                      text: items[index]['label'],
                      color: isActive ? kPrimaryColor : kGreyBNBColor,
                      size: 12,
                      weight: FontWeight.w500,
                      fontFamily: AppFonts.inter,
                    ),
                  ],
                ),
                label: '',
              );
            }),
          ),
        ),
      ),
    );
  }
}
