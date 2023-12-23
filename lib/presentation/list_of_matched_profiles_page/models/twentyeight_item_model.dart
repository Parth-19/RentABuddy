import '../../../core/app_export.dart';

/// This class is used in the [twentyeight_item_widget] screen.
class TwentyeightItemModel {
  TwentyeightItemModel({
    this.userImage,
    this.userName,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgAvatar2;
    userName = userName ?? "Jhon Doe";
    id = id ?? "";
  }

  String? userImage;

  String? userName;

  String? id;
}
