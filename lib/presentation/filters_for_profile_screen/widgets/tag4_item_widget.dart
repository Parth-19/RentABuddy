import '../models/tag4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';

// ignore: must_be_immutable
class Tag4ItemWidget extends StatelessWidget {
  Tag4ItemWidget(
    this.tag4ItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  Tag4ItemModel tag4ItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.only(
        left: 12.h,
        top: 9.v,
        bottom: 9.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        tag4ItemModelObj.frame!,
        style: TextStyle(
          color: appTheme.gray900,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
      deleteIcon: CustomImageView(
        imagePath: ImageConstant.imgFrameGray900,
        height: 20.adaptSize,
        width: 20.adaptSize,
        margin: EdgeInsets.only(left: 6.h),
      ),
      onDeleted: () {},
      selected: (tag4ItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.yellow50,
      selectedColor: appTheme.yellow50,
      shape: (tag4ItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.gray900.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
