import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.userImage,
    this.fullName,
    this.professionalTitle,
    this.id,
  }) {
    userImage = userImage ?? ImageConstant.imgRectangle;
    fullName = fullName ?? "Full name";
    professionalTitle = professionalTitle ?? "Professional title";
    id = id ?? "";
  }

  String? userImage;

  String? fullName;

  String? professionalTitle;

  String? id;
}
