import 'bloc/new_matched_profile_notification_one_bloc.dart';
import 'models/new_matched_profile_notification_one_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_leading_image.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_trailing_image.dart';
import 'package:renta_buddy/widgets/app_bar/custom_app_bar.dart';
import 'package:renta_buddy/widgets/custom_text_form_field.dart';

class NewMatchedProfileNotificationOneScreen extends StatelessWidget {
  const NewMatchedProfileNotificationOneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<NewMatchedProfileNotificationOneBloc>(
      create: (context) => NewMatchedProfileNotificationOneBloc(
          NewMatchedProfileNotificationOneState(
        newMatchedProfileNotificationOneModelObj:
            NewMatchedProfileNotificationOneModel(),
      ))
        ..add(NewMatchedProfileNotificationOneInitialEvent()),
      child: NewMatchedProfileNotificationOneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 40.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: theme.colorScheme.onErrorContainer.withOpacity(1),
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 3.h,
                    vertical: 49.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      _buildMatchedProfile(context),
                      SizedBox(height: 13.v),
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          width: 313.h,
                          margin: EdgeInsets.symmetric(horizontal: 34.h),
                          child: Text(
                            "msg_you_ve_both_shown".tr,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.bodyMedium!.copyWith(
                              height: 1.57,
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Container(
                        margin: EdgeInsets.only(
                          left: 31.h,
                          right: 151.h,
                        ),
                        decoration: AppDecoration.outlineGray900023.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Container(
                          width: 200.h,
                          padding: EdgeInsets.symmetric(
                            horizontal: 8.h,
                            vertical: 3.v,
                          ),
                          decoration:
                              AppDecoration.fillOnPrimaryContainer.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(height: 4.v),
                              Container(
                                width: 172.h,
                                margin: EdgeInsets.only(right: 11.h),
                                child: Text(
                                  "msg_stuck_on_what_to".tr,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles.bodySmallGray5001
                                      .copyWith(
                                    height: 1.64,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgVectorOnprimarycontainer,
                        height: 7.v,
                        width: 14.h,
                        margin: EdgeInsets.only(left: 43.h),
                      ),
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.only(
                          left: 23.h,
                          right: 24.h,
                        ),
                        child: BlocSelector<
                            NewMatchedProfileNotificationOneBloc,
                            NewMatchedProfileNotificationOneState,
                            TextEditingController?>(
                          selector: (state) => state.messageController,
                          builder: (context, messageController) {
                            return CustomTextFormField(
                              controller: messageController,
                              hintText: "msg_type_a_message".tr,
                              hintStyle: CustomTextStyles.bodyLargeAmberA700,
                              textInputAction: TextInputAction.done,
                              alignment: Alignment.center,
                              prefix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(16.h, 12.v, 8.h, 11.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgLaptop,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                ),
                              ),
                              prefixConstraints: BoxConstraints(
                                maxHeight: 43.v,
                              ),
                              suffix: Container(
                                margin:
                                    EdgeInsets.fromLTRB(12.h, 12.v, 15.h, 11.v),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgFrameGray90020x20,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                ),
                              ),
                              suffixConstraints: BoxConstraints(
                                maxHeight: 43.v,
                              ),
                              contentPadding:
                                  EdgeInsets.symmetric(vertical: 11.v),
                              borderDecoration:
                                  TextFormFieldStyleHelper.fillYellow,
                              fillColor: appTheme.yellow50,
                            );
                          },
                        ),
                      ),
                      SizedBox(height: 24.v),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFrameBlueGray90024x24,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrameGray9000224x24,
          margin: EdgeInsets.symmetric(horizontal: 20.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMatchedProfile(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 39.v,
      ),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgGroup7,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 9.v),
          Padding(
            padding: EdgeInsets.only(left: 56.h),
            child: Text(
              "lbl_buddy_found".tr,
              style: CustomTextStyles.headlineLargeOnPrimaryContainer,
            ),
          ),
          SizedBox(height: 44.v),
          SizedBox(
            height: 205.v,
            width: 329.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage9,
                  height: 205.v,
                  width: 166.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  alignment: Alignment.centerRight,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage9205x166,
                  height: 205.v,
                  width: 166.h,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  alignment: Alignment.centerLeft,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage980x80,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  radius: BorderRadius.circular(
                    40.h,
                  ),
                  alignment: Alignment.center,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
