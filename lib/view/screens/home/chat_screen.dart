import 'package:employee_tracking_app/config/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../config/constants/app_colors.dart';
import '../../../config/constants/app_fonts.dart';
import '../../../generated/assets.dart';
import '../../custom/common_image_view_widget.dart';
import '../../custom/my_text_widget.dart';
import '../../custom/my_textfeild.dart';

class ChatUiScreen extends StatelessWidget {
  ChatUiScreen({super.key});

  final RxBool isSelectedMessage = false.obs;
  final RxList<Map<String, dynamic>> messages = <Map<String, dynamic>>[].obs;
  final TextEditingController messageController = TextEditingController();

  void sendMessage() {
    if (messageController.text.trim().isNotEmpty) {
      messages.add({
        "text": messageController.text,
        "isMe": true,
      });
      messageController.clear();

      // Simulate a bot reply
      Future.delayed(const Duration(milliseconds: 500), () {
        messages.add({
          "text": "Hello! This is a Testing Reply!!",
          "isMe": false,
        });
      });
    }
  }

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
                automaticallyImplyLeading: false,
                backgroundColor: Colors.transparent,
                title: MyText(
                  text: "Chat",
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
      body: Column(
        children: [
          Expanded(
            child: Obx(
                  () => ListView.builder(
                padding: const EdgeInsets.all(8),
                itemCount: messages.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onLongPress: () {
                      isSelectedMessage.value = true;
                    },
                    child: ChatBubble(
                      message: messages[index]["text"],
                      isMe: messages[index]["isMe"],
                    ),
                  );
                },
              ),
            ),
          ),
          SafeArea(
            child: Padding(
              padding: AppSizes.DEFAULT,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 22,vertical: 5),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  shadows: [
                    BoxShadow(
                      color: Color(0x21000000),
                      blurRadius: 20,
                      offset: Offset(5, 4),
                      spreadRadius: 0,
                    )
                  ],
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: TextField(
                        controller: messageController,
                        decoration: InputDecoration(
                          hintText: "Type your message...",
                          border: InputBorder.none, // removes border
                          isDense: true, // makes it more compact
                          contentPadding: EdgeInsets.symmetric(vertical: 8), // adjust padding
                        ),
                      ),
                    ),
                    const SizedBox(width: 10),
                    GestureDetector(
                      onTap: sendMessage,
                      child: CommonImageView(
                        svgPath: Assets.svgSendMessage,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class ChatBubble extends StatelessWidget {
  final String message;
  final bool isMe;

  const ChatBubble({
    super.key,
    required this.message,
    required this.isMe,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: isMe
            ? [
          Flexible(child: _buildBubble()),
          const SizedBox(width: 8),
          CommonImageView(
            imagePath: Assets.imagesSara,
            height: 24,
          ),
        ]
            : [
          CommonImageView(
            imagePath: Assets.imagesAdmin,
            height: 24,
          ),
          const SizedBox(width: 8),
          Flexible(child: _buildBubble()),
        ],
      ),
    );
  }

  Widget _buildBubble() {
    return Column(
      crossAxisAlignment: isMe ? CrossAxisAlignment.end : CrossAxisAlignment.start,
      children: [
        MyText(
          text: isMe ? "Sara" : "Admin",
          size: 10,
          weight: FontWeight.w600,
        ),
        Container(
          margin: const EdgeInsets.symmetric(vertical: 2),
          padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 12),
          decoration: BoxDecoration(
            color: isMe ? kPrimaryColor : Color(0xFFEEEEEE),
            borderRadius: isMe ? BorderRadius.only(
              topLeft: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ) :BorderRadius.only(
              topRight: Radius.circular(25),
              bottomLeft: Radius.circular(25),
              bottomRight: Radius.circular(25),
            ),
            border: isMe
                ? null
                : Border.all(
              color: Colors.white.withOpacity(0.1),
              width: 1,
            ),
          ),
          child: MyText(
            text: message,
            size: 14,
            weight: FontWeight.w400,
            color: isMe ? kQuaternaryColor :  kBlack2Color ,
          ),
        ),
      ],
    );
  }
}
