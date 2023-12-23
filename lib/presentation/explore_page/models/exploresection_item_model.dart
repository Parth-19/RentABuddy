import '../../../core/app_export.dart';

/// This class is used in the [exploresection_item_widget] screen.
class ExploresectionItemModel {
  ExploresectionItemModel({
    this.image,
    this.id,
  }) {
    image = image ?? ImageConstant.imgImage58184x163;
    id = id ?? "";
  }

  String? image;

  String? id;
}
