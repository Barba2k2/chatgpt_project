import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:chatgpt_project/src/Constants/api_constants.dart';
import 'package:chatgpt_project/src/Models/chat_models.dart';
import 'package:chatgpt_project/src/Models/models_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<ModelsModel>> getModels() async {
    try {
      var response = await http.get(
        Uri.parse('$BASE_URL/models'),
        headers: {'Autorization': 'Bearer $API_KEY'},
      );

      Map jsonResponse = jsonDecode(response.body);

      if (jsonResponse['error'] != null) {
        //debugPrint('jsonResponse[error] ${jsonResponse['error']['message']}');
        throw HttpException(jsonResponse['error']['message']);
      }
      //debugPrint('jsonResponse $jsonResponse');
      List temp = [];
      for (var value in jsonResponse['data']) {
        temp.add(value);
        // log('temp ${value['id']}' as num);
      }
      return ModelsModel.modelsFromSnapshot(temp);
    } catch (error) {
      log('Error $error' as num);
      rethrow;
    }
  }

  //Send message
  static Future<List<ChatModel>> sendMessage({
    required String message,
    required String modelId,
  }) async {
    try {
      var response = await http.get(
        Uri.parse('$BASE_URL/models'),
        headers: {
          'Autorization': 'Bearer $API_KEY',
          'Content-Type': 'application/josn',
        },
        body: jsonEncode(
          {
            'model': 'text-davinci-003',
            'prompt': 'Hello, whats is a Flutter?',
            'max-tokens': 100,
          },
        ),
      );

      Map jsonResponse = jsonDecode(response.body);

      if (jsonResponse['error'] != null) {
        //debugPrint('jsonResponse[error] ${jsonResponse['error']['message']}');
        throw HttpException(jsonResponse['error']['message']);
      }
      List<ChatModel> chatList = [];
      if (jsonResponse['choices'] > 0) {
        // log('jsonResponses[choices]text ${jsonResponse['choices'][0]['text']}' as num);
        List.generate(
          jsonResponse['choices'].length,
          (index) => ChatModel(
            msg: jsonResponse['choices'][index]['text'],
            chatIndex: 1,
          ),
        );
      }
      return chatList;
    } catch (error) {
      log('Error $error' as num);
      rethrow;
    }
  }
}
