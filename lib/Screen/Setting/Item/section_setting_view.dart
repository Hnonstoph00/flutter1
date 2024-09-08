import 'package:flutter/material.dart';

class SettingModel {
  final String name;
  final List<SettingItemModel> items;
  SettingModel(this.name, this.items);

  static List<SettingModel> getSettingSection() {
    return [
      SettingModel("About", [
        SettingItemModel("lib/assets/images/setting_rate_icon",
            "Rate Us on App Store", true),
        SettingItemModel(
            "lib/assets/images/setting_share_icon", "Share this App", true),
        SettingItemModel(
            "lib/assets/images/setting_send_icon", "Send Feedback", false)
      ]),
      SettingModel("Term & Privacy", [
        SettingItemModel(
            "lib/assets/images/setting_term_icon", "Term & Conditions", true),
        SettingItemModel(
            "lib/assets/images/setting_privacy_icon", "Privacy policy", false),
      ]),
      SettingModel("Upgrade Premium", [
        SettingItemModel(
            "lib/assets/images/setting_upgrade_icon", "Upgrade Premium", true),
        SettingItemModel(
            "lib/assets/images/setting_restore_icon", "Restore", false)
      ]),
      SettingModel("App Settings", [
        SettingItemModel(
            "lib/assets/images/setting_language_icon", "Language", false),
      ]),
    ];
  }
}

class SettingItemModel {
  final String title;
  final String icon;
  final bool isShowline;

  SettingItemModel(this.icon, this.title, this.isShowline);
}

class SectionSettingView extends StatelessWidget {
  final SettingModel model;
  const SectionSettingView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(model.name),
        Container(
          decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.black),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: model.items
                .map((item) => ItemSettingView(model: item))
                .toList(),
          ),
        )
      ],
    );
  }
}

class ItemSettingView extends StatelessWidget {
  final SettingItemModel model;
  const ItemSettingView({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 40,
        child: Column(
          children: [
            Row(
              children: <Widget>[
                Image(image: AssetImage(model.icon)),
                const SizedBox(
                  width: 12,
                ),
                Text(model.title),
              ],
            ),
            const SizedBox(
              height: 1,
            ),
            Container(
              height: model.isShowline ? 1 : 0,
              color: Colors.grey,
            )
          ],
        ));
  }
}
