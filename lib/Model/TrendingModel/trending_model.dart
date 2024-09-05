class TrendingModel {
  String name = "";
  String filterType = "";
  String createUser = "";
  String heartCount = "";
  bool isRemote = true;
  String image = "";
  String previewImage = "";
  String video = "";
// Constructor
  TrendingModel({
    required this.name,
    required this.filterType,
    required this.createUser,
    required this.heartCount,
    required this.isRemote,
    required this.image,
    required this.previewImage,
    required this.video,
  });
  
  // Factory method to create a TrendingModel from JSON
  factory TrendingModel.fromJson(Map<String, dynamic> json) {
    return TrendingModel(
      name: json['name'] ?? "",
      filterType: json['filterType'] ?? "",
      createUser: json['createUser'] ?? "",
      heartCount: json['heartCount'] ?? "",
      isRemote: json['isRemote'] ?? true,
      image: json['image'] ?? "",
      previewImage: json['previewImage'] ?? "",
      video: json['video'] ?? "",
    );
  }

}
