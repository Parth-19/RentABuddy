import '../../../core/app_export.dart';

/// This class is used in the [editmyprofile_item_widget] screen.
class EditmyprofileItemModel {
  EditmyprofileItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImage4;
    id = id ?? "";
  }

  String? image;

  String? id;
}
