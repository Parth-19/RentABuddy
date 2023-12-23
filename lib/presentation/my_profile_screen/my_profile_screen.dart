import 'bloc/my_profile_bloc.dart';
import 'models/my_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/presentation/list_of_matched_profiles_page/list_of_matched_profiles_page.dart';
import 'package:renta_buddy/presentation/view_a_profile_tab_container_page/view_a_profile_tab_container_page.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_leading_image.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_trailing_image.dart';
import 'package:renta_buddy/widgets/app_bar/custom_app_bar.dart';
import 'package:renta_buddy/widgets/custom_bottom_bar.dart';
import 'package:renta_buddy/widgets/custom_elevated_button.dart';
import 'package:renta_buddy/widgets/custom_outlined_button.dart';
import 'package:renta_buddy/widgets/custom_text_form_field.dart';

class MyProfileScreen extends StatelessWidget {
  MyProfileScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MyProfileBloc>(
      create: (context) => MyProfileBloc(MyProfileState(
        myProfileModelObj: MyProfileModel(),
      ))
        ..add(MyProfileInitialEvent()),
      child: MyProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.only(bottom: 5.v),
              child: Column(
                children: [
                  Container(
                    height: 40.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                  SizedBox(height: 70.v),
                  _buildNinetyThree(context),
                  SizedBox(height: 35.v),
                  Divider(),
                  SizedBox(height: 30.v),
                  _buildContainer3(context),
                  SizedBox(height: 23.v),
                  _buildTable1(context),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 44.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgFlatBlueGray90024x24,
        margin: EdgeInsets.only(left: 20.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.symmetric(horizontal: 20.h),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildEditYourProfile(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 114.h,
      text: "msg_edit_your_profile".tr,
      margin: EdgeInsets.only(left: 5.h),
      rightIcon: Container(
        margin: EdgeInsets.only(left: 4.h),
        child: CustomImageView(
          imagePath: ImageConstant.imgArrowrightGray900,
          height: 12.adaptSize,
          width: 12.adaptSize,
        ),
      ),
      buttonStyle: CustomButtonStyles.fillYellow,
      buttonTextStyle: CustomTextStyles.bodySmallGray90011,
    );
  }

  /// Section Widget
  Widget _buildNinetyThree(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 136.v,
            width: 132.h,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    height: 132.adaptSize,
                    width: 132.adaptSize,
                    decoration: AppDecoration.fillGray300.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder66,
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgVector,
                      height: 128.v,
                      width: 65.h,
                      alignment: Alignment.centerLeft,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImage3,
                  height: 120.adaptSize,
                  width: 120.adaptSize,
                  radius: BorderRadius.circular(
                    60.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 87.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder10,
                    ),
                    child: Text(
                      "lbl_45_complete".tr,
                      style: CustomTextStyles.bodySmallPrimaryContainer,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 15.h,
              top: 39.v,
              bottom: 36.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "msg_parth_maheshwari".tr,
                      style: CustomTextStyles.bodyLargeEpilogueGray90002_1,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFrameGray50012x12,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      margin: EdgeInsets.only(
                        left: 4.h,
                        top: 4.v,
                        bottom: 2.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 13.v),
                _buildEditYourProfile(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUpgradeFrom(BuildContext context) {
    return CustomElevatedButton(
      height: 28.v,
      width: 122.h,
      text: "msg_upgrade_from_7_99".tr,
      buttonStyle: CustomButtonStyles.outlineGrayTL14,
      buttonTextStyle: CustomTextStyles.bodySmall11,
    );
  }

  /// Section Widget
  Widget _buildContainer3(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.all(16.h),
      decoration: AppDecoration.outlineOnPrimaryContainer.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(
                left: 7.h,
                top: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(left: 22.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgFramePurple200,
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            margin: EdgeInsets.only(
                              top: 3.v,
                              bottom: 12.v,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                              left: 23.h,
                              bottom: 4.v,
                            ),
                            child: Text(
                              "msg_rentabuddy_premium".tr,
                              style: CustomTextStyles
                                  .bodyLargeEpilogueOnErrorContainer,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgFramePurple200,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                            margin: EdgeInsets.only(
                              left: 23.h,
                              top: 11.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Padding(
                    padding: EdgeInsets.only(right: 10.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgFramePurple200,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          margin: EdgeInsets.only(
                            top: 18.v,
                            bottom: 1.v,
                          ),
                        ),
                        Expanded(
                          child: Container(
                            width: 223.h,
                            margin: EdgeInsets.only(left: 25.h),
                            child: Text(
                              "msg_unlock_exclusive".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.bodySmallOnErrorContainer
                                  .copyWith(
                                height: 1.64,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 2.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgFramePurple200,
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(left: 34.h),
                  ),
                  SizedBox(height: 4.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 27.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          _buildUpgradeFrom(context),
                          CustomImageView(
                            imagePath: ImageConstant.imgFramePurple200,
                            height: 8.adaptSize,
                            width: 8.adaptSize,
                            margin: EdgeInsets.only(
                              left: 32.h,
                              bottom: 20.v,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFramePurple200,
            height: 12.adaptSize,
            width: 12.adaptSize,
            margin: EdgeInsets.only(
              left: 24.h,
              top: 68.v,
              bottom: 36.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSoon(BuildContext context) {
    return CustomOutlinedButton(
      width: 67.h,
      text: "lbl_soon".tr,
      buttonTextStyle: theme.textTheme.labelLarge!,
    );
  }

  /// Section Widget
  Widget _buildFree(BuildContext context) {
    return CustomOutlinedButton(
      width: 100.h,
      text: "lbl_free".tr,
      buttonTextStyle: CustomTextStyles.labelLargeDeeppurpleA400,
    );
  }

  /// Section Widget
  Widget _buildAdvertisements(BuildContext context) {
    return BlocSelector<MyProfileBloc, MyProfileState, TextEditingController?>(
      selector: (state) => state.advertisementsController,
      builder: (context, advertisementsController) {
        return CustomTextFormField(
          width: 180.h,
          controller: advertisementsController,
          hintText: "lbl_zero_ads".tr,
          contentPadding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 17.v,
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildYouSayWhatYou(BuildContext context) {
    return BlocSelector<MyProfileBloc, MyProfileState, TextEditingController?>(
      selector: (state) => state.youSayWhatYouController,
      builder: (context, youSayWhatYouController) {
        return CustomTextFormField(
          width: 100.h,
          controller: youSayWhatYouController,
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTextInput(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 34.v),
      child:
          BlocSelector<MyProfileBloc, MyProfileState, TextEditingController?>(
        selector: (state) => state.textInputController,
        builder: (context, textInputController) {
          return CustomTextFormField(
            width: 311.h,
            controller: textInputController,
            hintText: "lbl_input_text".tr,
            textInputAction: TextInputAction.done,
            alignment: Alignment.bottomCenter,
            borderDecoration: TextFormFieldStyleHelper.underLineGray,
            filled: false,
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTable1(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 19.h,
        right: 22.h,
      ),
      decoration: AppDecoration.outlineGray50.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 180.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 14.v,
                ),
                decoration: AppDecoration.outlineGray501,
                child: Text(
                  "lbl_what_s_included".tr,
                  style: theme.textTheme.labelLarge,
                ),
              ),
              _buildSoon(context),
              _buildFree(context),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 180.h,
                padding: EdgeInsets.all(16.h),
                decoration: AppDecoration.outlineGray502,
                child: Text(
                  "msg_unlimited_swipes".tr,
                  style: CustomTextStyles.bodySmallGray9000211,
                ),
              ),
              Container(
                height: 48.v,
                width: 67.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.outlineGray502,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGrid,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                height: 48.v,
                width: 100.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 42.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.outlineGray502,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 10.v,
                ),
                decoration: AppDecoration.outlineGray502,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 3.v),
                    SizedBox(
                      width: 106.h,
                      child: Text(
                        "msg_get_swiggy_zomato".tr,
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                        style: CustomTextStyles.bodySmallGray9000211.copyWith(
                          height: 1.64,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 78.v,
                width: 67.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 31.v,
                ),
                decoration: AppDecoration.outlineGray502,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                height: 78.v,
                width: 100.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 42.h,
                  vertical: 31.v,
                ),
                decoration: AppDecoration.outlineGray502,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              _buildAdvertisements(context),
              Container(
                height: 48.v,
                width: 67.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 25.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.outlineGray502,
                child: CustomImageView(
                  imagePath: ImageConstant.imgGrid,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
              Container(
                height: 48.v,
                width: 100.h,
                padding: EdgeInsets.symmetric(
                  horizontal: 42.h,
                  vertical: 16.v,
                ),
                decoration: AppDecoration.outlineGray502,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmark,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.center,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 96.v,
            width: 347.h,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameOnerrorcontainer48x347,
                  height: 48.v,
                  width: 347.h,
                  alignment: Alignment.bottomCenter,
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 15.v,
                        ),
                        decoration: AppDecoration.outlineGray502,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 2.v),
                            Text(
                              "msg_you_say_what_you".tr,
                              style: CustomTextStyles.bodySmallGray9000211,
                            ),
                          ],
                        ),
                      ),
                      Container(
                        height: 48.v,
                        width: 67.h,
                        decoration: BoxDecoration(
                          color:
                              theme.colorScheme.onErrorContainer.withOpacity(1),
                          border: Border.all(
                            color: appTheme.gray50,
                            width: 1.h,
                            strokeAlign: strokeAlignCenter,
                          ),
                        ),
                      ),
                      _buildYouSayWhatYou(context),
                    ],
                  ),
                ),
                _buildTextInput(context),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Navigator.pushNamed(
            navigatorKey.currentContext!, getCurrentRoute(type));
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Framegray70028x28:
        return AppRoutes.listOfMatchedProfilesPage;
      case BottomBarEnum.Frameerrorcontainer:
        return AppRoutes.viewAProfileTabContainerPage;
      case BottomBarEnum.Frame30x32:
        return "/";
      case BottomBarEnum.Frame:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.listOfMatchedProfilesPage:
        return ListOfMatchedProfilesPage();
      case AppRoutes.viewAProfileTabContainerPage:
        return ViewAProfileTabContainerPage();
      default:
        return DefaultWidget();
    }
  }
}
