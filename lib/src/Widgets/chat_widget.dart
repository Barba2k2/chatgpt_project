import 'package:chatgpt_project/src/Constants/constants.dart';
import 'package:chatgpt_project/src/Services/assets_manager.dart';
import 'package:chatgpt_project/src/Widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({
    super.key,
    required this.msg,
    required this.chatIndex,
  });

  final String msg;
  final int chatIndex;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Material(
          color: cardColor,
          child: Row(
            children: [
              Image.asset(
                AssetManager.userImage,
                width: 30,
                height: 30,
              ),
              const SizedBox(width: 8),
              const TextWidget(label: 'Hello, here your msg')
            ],
          ),
        )
      ],
    );
  }
}
