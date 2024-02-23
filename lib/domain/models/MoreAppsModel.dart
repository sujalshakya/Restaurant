class MoreAppsModel{
  String languageType;
  String applicationName;
  String appicon;
  String playstoreLink;
  String IosLink;
  String banner;

  MoreAppsModel({
    required this.languageType,
    required this.applicationName,
    required this.appicon,
    required this.playstoreLink,
    required this.IosLink,
    required this.banner,
  });

  factory MoreAppsModel.fromJson(Map<String, dynamic> json) {
    return MoreAppsModel(
      languageType: json['languageType'] ?? "",
      applicationName: json['applicationName'] ?? "",
      appicon: json['appIcon'] ?? "",
      playstoreLink: json['playstoreLink'] ?? "",
      IosLink: json['ios_link'] ?? "",
      banner: json['image'] ?? "",
    );
  }
}