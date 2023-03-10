import 'package:flutter/material.dart';
import '../Models/chat_models.dart';
import '../Services/api_service.dart';

class ChatProvider with ChangeNotifier {
  List<ChatModel> chatList = [];
  List<ChatModel> get getChatList {
    return chatList;
  }

  void addUserMessage({required String msg}) {
    chatList.add(ChatModel(msg: msg, chatIndex: 0));
    notifyListeners();
  }

  Future<void> sendMessageAndGetAnswer({required String msg, required String chosenModelId}) async {
    chatList.addAll(
      await ApiService.sendMessage(
        message: msg,
        modelId: chosenModelId,
      ),
    );
    notifyListeners();
  }
}
