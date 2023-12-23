import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 9.v),
      decoration: AppDecoration.outlineGray900021.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          CustomImageView(
            imagePath: userprofileItemModelObj?.userImage,
            height: 96.adaptSize,
            width: 96.adaptSize,
            radius: BorderRadius.circular(
              48.h,
            ),
            margin: EdgeInsets.only(top: 3.v),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 6.v,
              bottom: 2.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    userprofileItemModelObj.fullName!,
                    style: CustomTextStyles.bodyLargeGray90002,
                  ),
                ),
                SizedBox(height: 4.v),
                Padding(
                  padding: EdgeInsets.only(left: 4.h),
                  child: Text(
                    userprofileItemModelObj.professionalTitle!,
                    style: theme.textTheme.bodyMedium,
                  ),
                ),
                SizedBox(height: 16.v),
                SizedBox(
                  width: 193.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: CustomElevatedButton(
                          height: 32.v,
                          text: "lbl_decline".tr,
                          margin: EdgeInsets.only(right: 2.h),
                          buttonTextStyle: CustomTextStyles.bodySmallGray700,
                        ),
                      ),
                      Expanded(
                        child: CustomElevatedButton(
                          height: 32.v,
                          text: "lbl_accept".tr,
                          margin: EdgeInsets.only(left: 2.h),
                          buttonStyle: CustomButtonStyles.fillYellowTL4,
                          buttonTextStyle:
                              CustomTextStyles.bodySmallLightgreen900_1,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
