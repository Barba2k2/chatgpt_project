import 'package:chatgpt_project/src/Widgets/text_widget.dart';
import 'package:flutter/material.dart';

Color scaffoldBackgroundColor = const Color(0xFF343541);
Color cardColor = const Color(0xFF444654);

// List<String> models = [
//   'Model1',
//   'Model2',
//   'Model3',
//   'Model4',
//   'Model5',
//   'Model6',
// ];

// List<DropdownMenuItem<String>>? get getModelsItem {
//   List<DropdownMenuItem<String>>? modelsItems = List<DropdownMenuItem<String>>.generate(
//     models.length,
//     (index) => DropdownMenuItem(
//       child: TextWidget(
//         label: models[index],
//         fontSize: 15,
//       ),
//     ),
//   );
//   return modelsItems;
// }

final chatMessages = [
  {
    'msg': 'Hello, how are you?',
    'chatIndex': 0,
  },
  {
    'msg': 'Hello, I am ChatGPT, a large language model develop by OPenAI. I am here to assist you with your douts',
    "chatIndex": 1,
  },
  {
    'msg': 'What is Flutter?',
    'chatIndex': 0,
  },
  {
    'msg': 'Flutter is a open-source mobile aplication development framework created by Google.',
    "chatIndex": 1,
  },
];
