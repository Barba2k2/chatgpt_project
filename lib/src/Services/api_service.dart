import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'package:chatgpt_project/src/Constants/api_constants.dart';
import 'package:chatgpt_project/src/Models/models_model.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static Future<List<ModelsModel> getModels() async {
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
      for(var value in jsonResponse['data']){
        temp.add(value);
        log('temp $value' as num);
      }
      return ModelsModel.modelsFromSnapshot(temp);
    } catch (error) {
      log('Error $error' as num);
      rethrow;
    }
  }
}
