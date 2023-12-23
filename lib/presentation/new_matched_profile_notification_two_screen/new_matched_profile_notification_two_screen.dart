import 'bloc/new_matched_profile_notification_two_bloc.dart';
import 'models/new_matched_profile_notification_two_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/presentation/list_of_matched_profiles_page/list_of_matched_profiles_page.dart';
import 'package:renta_buddy/presentation/view_a_profile_tab_container_page/view_a_profile_tab_container_page.dart';
import 'package:renta_buddy/widgets/custom_bottom_bar.dart';
import 'package:renta_buddy/widgets/custom_elevated_button.dart';
import 'package:renta_buddy/widgets/custom_text_form_field.dart';

class NewMatchedProfileNotificationTwoScreen extends StatelessWidget {
  NewMatchedProfileNotificationTwoScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<NewMatchedProfileNotificationTwoBloc>(
      create: (context) => NewMatchedProfileNotificationTwoBloc(
          NewMatchedProfileNotificationTwoState(
        newMatchedProfileNotificationTwoModelObj:
            NewMatchedProfileNotificationTwoModel(),
      ))
        ..add(NewMatchedProfileNotificationTwoInitialEvent()),
      child: NewMatchedProfileNotificationTwoScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          height: 739.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              _buildUserSettingsRow(context),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 114.v),
                  child: SizedBox(
                    width: double.maxFinite,
                    child: Divider(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 20.h,
                    top: 140.v,
                  ),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 3.v),
                        child: Text(
                          "lbl_matches".tr,
                          style: theme.textTheme.titleLarge,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "lbl_7".tr,
                          style: CustomTextStyles.titleLargeInterBluegray900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: EdgeInsets.only(top: 346.v),
                  child: SizedBox(
                    width: 389.h,
                    child: Divider(),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text(
                    "lbl_chats".tr,
                    style: theme.textTheme.titleLarge,
                  ),
                ),
              ),
              _buildIsabellaAllenRow(context),
              _buildBrianMartinezRow(context),
              _buildEmilyTaylorRow(context),
              _buildAvaJonesRow(context),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 89.h),
                  child: Text(
                    "lbl_9".tr,
                    style: CustomTextStyles.titleLargeInterBluegray900,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFlatGray90002,
                height: 24.adaptSize,
                width: 24.adaptSize,
                alignment: Alignment.centerRight,
                margin: EdgeInsets.only(right: 20.h),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Container(
                  height: 96.v,
                  width: 48.h,
                  margin: EdgeInsets.only(top: 192.v),
                  padding: EdgeInsets.symmetric(vertical: 24.v),
                  decoration: AppDecoration.fillOnPrimaryContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder24,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFramePrimarycontainer48x24,
                    height: 48.v,
                    width: 24.h,
                    alignment: Alignment.centerRight,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgContrast,
                height: 96.adaptSize,
                width: 96.adaptSize,
                radius: BorderRadius.circular(
                  48.h,
                ),
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(
                  top: 192.v,
                  right: 58.h,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgUser,
                height: 96.adaptSize,
                width: 96.adaptSize,
                radius: BorderRadius.circular(
                  48.h,
                ),
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 128.h,
                  top: 192.v,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgAvatar2,
                height: 96.adaptSize,
                width: 96.adaptSize,
                radius: BorderRadius.circular(
                  48.h,
                ),
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(
                  left: 20.h,
                  top: 192.v,
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 39.h,
                    top: 297.v,
                  ),
                  child: Text(
                    "lbl_maria_white".tr,
                    style: CustomTextStyles.bodySmall11,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 297.v,
                    right: 67.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "lbl_anna_fernandez".tr,
                        style: CustomTextStyles.bodySmall11,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 27.h),
                        child: Text(
                          "lbl_jennifer_brown".tr,
                          style: CustomTextStyles.bodySmall11,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  margin: EdgeInsets.only(
                    left: 43.h,
                    right: 43.h,
                    bottom: 170.v,
                  ),
                  padding: EdgeInsets.symmetric(
                    horizontal: 42.h,
                    vertical: 16.v,
                  ),
                  decoration: AppDecoration.outlineGray900022.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder7,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 4.v),
                      SizedBox(
                        height: 116.v,
                        width: 96.h,
                        child: Stack(
                          alignment: Alignment.bottomCenter,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImage10,
                              height: 96.adaptSize,
                              width: 96.adaptSize,
                              radius: BorderRadius.circular(
                                48.h,
                              ),
                              alignment: Alignment.topCenter,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgImage1048x48,
                              height: 48.adaptSize,
                              width: 48.adaptSize,
                              radius: BorderRadius.circular(
                                8.h,
                              ),
                              alignment: Alignment.bottomCenter,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(left: 34.h),
                          child: Text(
                            "msg_new_match_found".tr,
                            style: CustomTextStyles.bodyLargeEpilogueGray90002,
                          ),
                        ),
                      ),
                      SizedBox(height: 16.v),
                      SizedBox(
                        width: 218.h,
                        child: Text(
                          "msg_someone_you_swiped".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodySmall!.copyWith(
                            height: 1.67,
                          ),
                        ),
                      ),
                      SizedBox(height: 22.v),
                      CustomElevatedButton(
                        height: 44.v,
                        width: 121.h,
                        text: "lbl_view_profile".tr,
                        buttonStyle:
                            CustomButtonStyles.outlineOnPrimaryContainerTL22,
                        buttonTextStyle: CustomTextStyles.bodyLarge16,
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: SizeUtils.height,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: appTheme.gray90002.withOpacity(0.4),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(top: 297.v),
                  child: Text(
                    "lbl_charles_morris".tr,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.bodySmall11,
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomBar(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserSettingsRow(BuildContext context) {
    return Align(
      alignment: Alignment.topCenter,
      child: Padding(
        padding: EdgeInsets.only(
          left: 19.h,
          top: 16.v,
          right: 19.h,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUserGray90002,
                    height: 23.v,
                    width: 27.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 10.v,
                    width: 65.h,
                    margin: EdgeInsets.only(bottom: 12.v),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20.v),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFlatBlueGray90024x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(
                    top: 6.v,
                    bottom: 5.v,
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: BlocSelector<
                        NewMatchedProfileNotificationTwoBloc,
                        NewMatchedProfileNotificationTwoState,
                        TextEditingController?>(
                      selector: (state) => state.searchController,
                      builder: (context, searchController) {
                        return CustomTextFormField(
                          controller: searchController,
                          hintText: "lbl_search".tr,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(12.h, 10.v, 6.h, 9.v),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrameGray9000216x16,
                              height: 16.adaptSize,
                              width: 16.adaptSize,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 35.v,
                          ),
                          contentPadding: EdgeInsets.only(
                            top: 9.v,
                            right: 30.h,
                            bottom: 9.v,
                          ),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildIsabellaAllenRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(
          top: 424.v,
          bottom: 236.v,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 15.v,
        ),
        decoration: AppDecoration.fillGray100,
        child: Row(
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAvatar2,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(top: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 4.v,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 156.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_isabella_allen".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "lbl_1_hours_ago".tr,
                            style: CustomTextStyles.bodySmallErrorContainer,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "msg_you_knock_knock".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBrianMartinezRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 78.v),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 15.v,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgUser,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(top: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 4.v,
                bottom: 2.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 171.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_brian_martinez".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "lbl_19_hours_ago".tr,
                            style: CustomTextStyles.bodySmallGray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 9.v),
                  Text(
                    "lbl_you_hi_d".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildEmilyTaylorRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 15.v,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgContrast,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(top: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 5.v,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 158.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_emily_taylor".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        Text(
                          "lbl_22_hours_ago".tr,
                          style: CustomTextStyles.bodySmallGray500,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Text(
                    "msg_haha_i_don_t_think".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAvaJonesRow(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 157.v),
        padding: EdgeInsets.symmetric(
          horizontal: 16.h,
          vertical: 15.v,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgAvatar2,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
              margin: EdgeInsets.only(top: 1.v),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 4.v,
                bottom: 3.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 138.h,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "lbl_ava_jones".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 2.v),
                          child: Text(
                            "lbl_2_hours_ago".tr,
                            style: CustomTextStyles.bodySmallGray500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "msg_it_makes_me_wonder".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ],
              ),
            ),
          ],
        ),
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
