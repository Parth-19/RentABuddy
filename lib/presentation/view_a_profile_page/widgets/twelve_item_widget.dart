import '../models/twelve_item_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';

// ignore: must_be_immutable
class TwelveItemWidget extends StatelessWidget {
  TwelveItemWidget(
    this.twelveItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  TwelveItemModel twelveItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        twelveItemModelObj.englishNative!,
        style: TextStyle(
          color: appTheme.blueGray900,
          fontSize: 12.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w400,
        ),
      ),
      selected: (twelveItemModelObj.isSelected ?? false),
      backgroundColor: appTheme.gray10001,
      selectedColor: appTheme.gray10001,
      shape: (twelveItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray900.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                14.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
