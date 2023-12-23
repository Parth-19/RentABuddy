import '../models/editmyprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';

// ignore: must_be_immutable
class EditmyprofileItemWidget extends StatelessWidget {
  EditmyprofileItemWidget(
    this.editmyprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  EditmyprofileItemModel editmyprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: editmyprofileItemModelObj?.image,
      height: 232.v,
      width: 228.h,
      radius: BorderRadius.circular(
        4.h,
      ),
    );
  }
}
