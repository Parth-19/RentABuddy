import '../../../core/app_export.dart';

/// This class is used in the [userprofile1_item_widget] screen.
class Userprofile1ItemModel {
  Userprofile1ItemModel({
    this.userImage,
    this.userName,
    this.timeAgo,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgRectangle36x36;
    userName = userName ??
        "User name lorem ipsum dolor sit amet, consectetur adipiscing elit.";
    timeAgo = timeAgo ?? "A few seconds ago";
    id = id ?? "";
  }

  String? userImage;

  String? userName;

  String? timeAgo;

  String? id;
}
