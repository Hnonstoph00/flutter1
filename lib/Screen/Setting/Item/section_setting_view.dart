import 'package:flutter/material.dart';

class SettingModel {
  final String name;
  final List<SettingItemModel> items;
  SettingModel(this.name, this.items);

  static List<SettingModel> getSettingSection() {
    return [
      SettingModel("About", [
        SettingItemModel('lib/assets/images/setting_rate_icon.png',
            "Rate Us on App Store", true),
        SettingItemModel(
            'lib/assets/images/setting_share_icon.png', "Share this App", true),
        SettingItemModel(
            "lib/assets/images/setting_send_icon.png", "Send Feedback", false)
      ]),
      SettingModel("Term & Privacy", [
        SettingItemModel("lib/assets/images/setting_term_icon.png",
            "Term & Conditions", true),
        SettingItemModel("lib/assets/images/setting_privacy_icon.png",
            "Privacy policy", false),
      ]),
      SettingModel("Upgrade Premium", [
        SettingItemModel("lib/assets/images/setting_upgrade_icon.png",
            "Upgrade PremiumPremiumPremiumPremiumPremiumPremiumPremiumPremium", true),
        SettingItemModel(
            "lib/assets/images/setting_restore_icon.png", "Restore", false)
      ]),
      SettingModel("App Settings", [
        SettingItemModel(
            "lib/assets/images/setting_language_icon.png", "Language", false),
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
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Text(
              model.name,
              style: const TextStyle(
                color: Colors.blue, // Text color
                fontSize: 18,
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 16, left: 16, right: 16, bottom: 24),
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16),
            decoration: BoxDecoration(
              border: Border.all(width: 1, color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              children: model.items
                  .map((item) => ItemSettingView(model: item))
                  .toList(),
            ),
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
    return SizedBox(
      height: 48,
      child: Column(
        children: [
          SizedBox(height: 12,),
          Expanded(child: 
          Row(
            children: <Widget>[
              Image(image: AssetImage(model.icon)),
              const SizedBox(
                width: 12,
              ),
              Flexible(
                child: Text(
                  model.title,
                  style: const TextStyle(
                    color: Colors.black, // Text color
                    fontSize: 18,
                    decoration: TextDecoration.none,
                    // overflow: TextOverflow.ellipsis,
                  ),
                ),
              ),
            ],
          ),
          ),
          SizedBox(
            height: model.isShowline ? 12 : 12,
          ),
          Container(
            height: model.isShowline ? 1 : 0,
            color: Colors.grey,
          ),
          // const Expanded(child: Placeholder())
        ],
      ),
    );
  }
}
