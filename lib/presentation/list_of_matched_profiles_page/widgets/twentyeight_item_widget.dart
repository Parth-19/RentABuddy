import '../models/twentyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';

// ignore: must_be_immutable
class TwentyeightItemWidget extends StatelessWidget {
  TwentyeightItemWidget(
    this.twentyeightItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  TwentyeightItemModel twentyeightItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 96.h,
      child: Align(
        alignment: Alignment.centerRight,
        child: Column(
          children: [
            CustomImageView(
              imagePath: twentyeightItemModelObj?.userImage,
              height: 96.adaptSize,
              width: 96.adaptSize,
              radius: BorderRadius.circular(
                48.h,
              ),
            ),
            SizedBox(height: 10.v),
            Text(
              twentyeightItemModelObj.userName!,
              style: CustomTextStyles.bodySmall11,
            ),
          ],
        ),
      ),
    );
  }
}
