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
            children:
                models.map((item) => SectionSettingView(model: item)).toList(),
          ),
        ),
      ),
    );
  }
}
