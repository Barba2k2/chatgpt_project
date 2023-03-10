import 'package:chatgpt_project/src/Constants/constants.dart';
import 'package:chatgpt_project/src/Models/models_model.dart';
import 'package:chatgpt_project/src/Services/api_service.dart';
import 'package:chatgpt_project/src/Widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ModelsDrownDownWidget extends StatefulWidget {
  const ModelsDrownDownWidget({super.key});

  @override
  State<ModelsDrownDownWidget> createState() => _ModelsDrownDownWidgetState();
}

class _ModelsDrownDownWidgetState extends State<ModelsDrownDownWidget> {
  String currentModel = 'text-davinci-003';

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ModelsModel>>(
      future: ApiService.getModels(),
      builder: (context, snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: TextWidget(
              label: snapshot.error.toString(),
            ),
          );
        }
        return snapshot.data == null || snapshot.data!.isEmpty
            ? const SizedBox.shrink()
            : FittedBox(
              child: DropdownButton(
                  dropdownColor: scaffoldBackgroundColor,
                  iconEnabledColor: Colors.white,
                  items: List<DropdownMenuItem<String>>.generate(
                    snapshot.data!.length,
                    (index) => DropdownMenuItem(
                      value: snapshot.data![index].id,
                      child: TextWidget(
                        label: snapshot.data![index].id,
                        fontSize: 15,
                      ),
                    ),
                  ),
                  value: currentModel,
                  onChanged: (value) {
                    currentModel = value.toString();
                  },
                ),
            );
      },
    );
  }
}

/**/
