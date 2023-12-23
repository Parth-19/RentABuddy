import '../models/exploresection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';

// ignore: must_be_immutable
class ExploresectionItemWidget extends StatelessWidget {
  ExploresectionItemWidget(
    this.exploresectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ExploresectionItemModel exploresectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: exploresectionItemModelObj?.image,
      height: 184.v,
      width: 163.h,
      radius: BorderRadius.circular(
        8.h,
      ),
    );
  }
}
