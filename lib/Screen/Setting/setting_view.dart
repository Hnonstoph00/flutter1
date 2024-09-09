import 'package:flutter/material.dart';
import 'package:flutter_application_1/Screen/Setting/Item/section_setting_view.dart';

class SettingView extends StatelessWidget {
  List<SettingModel> models = SettingModel.getSettingSection();
  SettingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              _buildBackButton(context),
              ...models.map((item) => SectionSettingView(model: item)).toList(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildBackButton(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
          padding: const EdgeInsets.only(top: 10, left: 16, bottom: 16),
          child: GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: const SizedBox(
              child:
                  Image(image: AssetImage("lib/assets/images/back_icon.png")),
            ),
          )),
    );
  }
}
