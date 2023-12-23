import 'bloc/message_a_matched_profile_bloc.dart';
import 'models/message_a_matched_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_leading_image.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_trailing_image.dart';
import 'package:renta_buddy/widgets/app_bar/custom_app_bar.dart';
import 'package:renta_buddy/widgets/custom_elevated_button.dart';
import 'package:renta_buddy/widgets/custom_icon_button.dart';
import 'package:renta_buddy/widgets/custom_text_form_field.dart';

class MessageAMatchedProfileScreen extends StatelessWidget {
  const MessageAMatchedProfileScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<MessageAMatchedProfileBloc>(
      create: (context) =>
          MessageAMatchedProfileBloc(MessageAMatchedProfileState(
        messageAMatchedProfileModelObj: MessageAMatchedProfileModel(),
      ))
            ..add(MessageAMatchedProfileInitialEvent()),
      child: MessageAMatchedProfileScreen(),
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
                  padding: EdgeInsets.symmetric(vertical: 20.v),
                  child: Column(
                    children: [
                      _buildHeaderRow(context),
                      SizedBox(height: 20.v),
                      Divider(),
                      SizedBox(height: 34.v),
                      Text(
                        "lbl_today".tr,
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                      SizedBox(height: 19.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.h),
                          child: Text(
                            "lbl_08_42_pm".tr,
                            style: CustomTextStyles
                                .bodySmallEpilogueErrorContainer,
                          ),
                        ),
                      ),
                      SizedBox(height: 12.v),
                      CustomElevatedButton(
                        height: 46.v,
                        width: 89.h,
                        text: "lbl_hi_there".tr,
                        margin: EdgeInsets.only(right: 20.h),
                        buttonStyle:
                            CustomButtonStyles.fillOnPrimaryContainerTL8,
                        buttonTextStyle:
                            CustomTextStyles.bodyMediumOnErrorContainer,
                        alignment: Alignment.centerRight,
                      ),
                      SizedBox(height: 10.v),
                      Align(
                        alignment: Alignment.centerRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: 20.h),
                          child: Text(
                            "lbl_sent".tr,
                            style: CustomTextStyles
                                .bodySmallEpilogueErrorContainer,
                          ),
                        ),
                      ),
                      Spacer(),
                      _buildMessageContainer1(context),
                      SizedBox(height: 8.v),
                      _buildMessageContainer2(context),
                      SizedBox(height: 8.v),
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
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrame24x24,
          margin: EdgeInsets.only(left: 20.h),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgFrameGray9000224x24,
          margin: EdgeInsets.only(
            left: 12.h,
            right: 20.h,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildHeaderRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage12,
            height: 100.adaptSize,
            width: 100.adaptSize,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 12.h,
              top: 4.v,
              bottom: 19.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "lbl_shreyash_25".tr,
                      style: theme.textTheme.titleLarge,
                    ),
                    SizedBox(height: 8.v),
                    CustomElevatedButton(
                      height: 24.v,
                      width: 77.h,
                      text: "lbl_he_him_his2".tr,
                      buttonStyle: CustomButtonStyles.fillYellow,
                      buttonTextStyle: CustomTextStyles.bodySmallGray90011,
                    ),
                  ],
                ),
                SizedBox(height: 6.v),
                Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFrame11,
                      height: 16.adaptSize,
                      width: 16.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "lbl_entrepreneur".tr,
                        style: CustomTextStyles.bodySmallGray90002,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFramePrimary,
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.only(
              left: 19.h,
              top: 9.v,
              bottom: 79.v,
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 64.v),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(7.h),
              decoration: IconButtonStyleHelper.outlineOnPrimaryContainerTL18,
              child: CustomImageView(
                imagePath: ImageConstant.imgArrowrightGray900,
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageContainer1(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 17.v,
      ),
      decoration: AppDecoration.outlineGray900024.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(right: 41.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameDeepPurpleA400,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(bottom: 1.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Text(
                    "msg_invite_your_match".tr,
                    style: CustomTextStyles.bodyMediumDeeppurpleA400,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 8.v),
          Text(
            "msg_break_the_ice_and".tr,
            style: CustomTextStyles.bodySmall11,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMessageContainer2(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 19.h),
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: AppDecoration.fillOnErrorContainer,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              right: 17.h,
            ),
            child: BlocSelector<MessageAMatchedProfileBloc,
                MessageAMatchedProfileState, TextEditingController?>(
              selector: (state) => state.messageController,
              builder: (context, messageController) {
                return CustomTextFormField(
                  controller: messageController,
                  hintText: "msg_type_a_message".tr,
                  hintStyle: CustomTextStyles.bodyLargeBluegray200,
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(12.h, 12.v, 15.h, 11.v),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgFlatGray9000220x20,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 43.v,
                  ),
                  contentPadding: EdgeInsets.only(
                    left: 16.h,
                    top: 11.v,
                    bottom: 11.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.fillGrayTL21,
                  fillColor: appTheme.gray10001,
                );
              },
            ),
          ),
          SizedBox(height: 17.v),
          Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 44.v,
                  width: 212.h,
                  margin: EdgeInsets.only(bottom: 4.v),
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgButton9,
                        height: 44.adaptSize,
                        width: 44.adaptSize,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                        alignment: Alignment.centerLeft,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 42.h),
                        child: CustomIconButton(
                          height: 44.adaptSize,
                          width: 44.adaptSize,
                          padding: EdgeInsets.all(12.h),
                          decoration:
                              IconButtonStyleHelper.fillOnPrimaryContainer,
                          alignment: Alignment.centerLeft,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgLaptopPrimarycontainer,
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgButton9Onprimarycontainer,
                        height: 44.adaptSize,
                        width: 44.adaptSize,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                        alignment: Alignment.center,
                      ),
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgButton9Onprimarycontainer44x44,
                        height: 44.adaptSize,
                        width: 44.adaptSize,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                        alignment: Alignment.centerRight,
                        margin: EdgeInsets.only(right: 42.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgButton944x44,
                        height: 44.adaptSize,
                        width: 44.adaptSize,
                        radius: BorderRadius.circular(
                          4.h,
                        ),
                        alignment: Alignment.centerRight,
                      ),
                    ],
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgButton91,
                  height: 44.adaptSize,
                  width: 44.adaptSize,
                  radius: BorderRadius.circular(
                    4.h,
                  ),
                  margin: EdgeInsets.only(top: 4.v),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
