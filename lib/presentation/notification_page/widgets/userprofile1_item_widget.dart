import '../models/userprofile1_item_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';

// ignore: must_be_immutable
class Userprofile1ItemWidget extends StatelessWidget {
  Userprofile1ItemWidget(
    this.userprofile1ItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  Userprofile1ItemModel userprofile1ItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 16.v),
      decoration: AppDecoration.outlineGray900022.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(bottom: 28.v),
            color: appTheme.orange50,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadiusStyle.circleBorder18,
            ),
            child: Container(
              height: 36.adaptSize,
              width: 36.adaptSize,
              decoration: AppDecoration.fillOrange.copyWith(
                borderRadius: BorderRadiusStyle.circleBorder18,
              ),
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: userprofile1ItemModelObj?.userImage,
                    height: 36.adaptSize,
                    width: 36.adaptSize,
                    radius: BorderRadius.circular(
                      18.h,
                    ),
                    alignment: Alignment.center,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      height: 9.adaptSize,
                      width: 9.adaptSize,
                      decoration: BoxDecoration(
                        color: appTheme.greenA700,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                        border: Border.all(
                          color:
                              theme.colorScheme.onErrorContainer.withOpacity(1),
                          width: 1.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 218.h,
                child: Text(
                  userprofile1ItemModelObj.userName!,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallGray90002.copyWith(
                    height: 1.67,
                  ),
                ),
              ),
              SizedBox(height: 7.v),
              Text(
                userprofile1ItemModelObj.timeAgo!,
                style: CustomTextStyles.bodySmallGray500,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
