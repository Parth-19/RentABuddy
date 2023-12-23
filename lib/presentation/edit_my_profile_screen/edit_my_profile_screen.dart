import '../edit_my_profile_screen/widgets/editmyprofile_item_widget.dart';
import 'bloc/edit_my_profile_bloc.dart';
import 'models/edit_my_profile_model.dart';
import 'models/editmyprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_subtitle.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_title_image.dart';
import 'package:renta_buddy/widgets/app_bar/custom_app_bar.dart';
import 'package:renta_buddy/widgets/custom_drop_down.dart';
import 'package:renta_buddy/widgets/custom_elevated_button.dart';
import 'package:renta_buddy/widgets/custom_outlined_button.dart';
import 'package:renta_buddy/widgets/custom_switch.dart';
import 'package:renta_buddy/widgets/custom_text_form_field.dart';

class EditMyProfileScreen extends StatelessWidget {
  const EditMyProfileScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<EditMyProfileBloc>(
        create: (context) => EditMyProfileBloc(
            EditMyProfileState(editMyProfileModelObj: EditMyProfileModel()))
          ..add(EditMyProfileInitialEvent()),
        child: EditMyProfileScreen());
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
                    child: Column(children: [
                  Container(
                      height: 40.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.onErrorContainer
                              .withOpacity(1))),
                  SizedBox(height: 91.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text("msg_profile_completion".tr,
                                    style: theme.textTheme.titleSmall)),
                            Padding(
                                padding: EdgeInsets.only(left: 5.h),
                                child: Text("lbl_100".tr,
                                    style: CustomTextStyles
                                        .titleSmallOnPrimaryContainer))
                          ]))),
                  SizedBox(height: 16.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: SizedBox(
                          height: 12.v,
                          width: 350.h,
                          child: ClipRRect(
                              child: LinearProgressIndicator(value: 0)))),
                  SizedBox(height: 41.v),
                  _buildPhotos(context),
                  SizedBox(height: 20.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("lbl_about_me".tr,
                              style: theme.textTheme.titleLarge))),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("msg_make_it_easy_for".tr,
                              style: CustomTextStyles.bodySmallOnError))),
                  SizedBox(height: 13.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.h),
                      child: BlocSelector<EditMyProfileBloc, EditMyProfileState,
                              TextEditingController?>(
                          selector: (state) =>
                              state.shareafewwordsaboutyourselfyouController,
                          builder: (context,
                              shareafewwordsaboutyourselfyouController) {
                            return CustomTextFormField(
                                controller:
                                    shareafewwordsaboutyourselfyouController,
                                hintText: "msg_share_a_few_words".tr,
                                hintStyle:
                                    CustomTextStyles.bodySmallBluegray200,
                                textInputAction: TextInputAction.done,
                                suffix: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        -5.h, 30.v, 1.h, 1.v),
                                    child: CustomImageView(
                                        imagePath:
                                            ImageConstant.imgFrameBlueGray200,
                                        height: 12.adaptSize,
                                        width: 12.adaptSize)),
                                suffixConstraints:
                                    BoxConstraints(maxHeight: 85.v),
                                maxLines: 3);
                          })),
                  SizedBox(height: 13.v),
                  _buildSetAnHourlyRate(context),
                  SizedBox(height: 24.v),
                  _buildMyDetails(context),
                  SizedBox(height: 22.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 20.h),
                          child: Text("msg_optional_details".tr,
                              style: CustomTextStyles.bodySmallOnError))),
                  SizedBox(height: 12.v),
                  _buildTable2(context),
                  SizedBox(height: 34.v),
                  _buildFinnish(context),
                  SizedBox(height: 23.v),
                  SizedBox(
                      width: 262.h,
                      child: Divider(color: appTheme.blueGray200)),
                  SizedBox(height: 15.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 64.h),
                          child: Text("msg_what_are_you_waiting".tr,
                              style: theme.textTheme.titleLarge))),
                  SizedBox(height: 16.v),
                  CustomElevatedButton(
                      height: 36.v,
                      width: 166.h,
                      text: "msg_explore_your_livlihood".tr,
                      buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
                      buttonTextStyle:
                          CustomTextStyles.bodyMediumPrimaryContainer),
                  SizedBox(height: 52.v)
                ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 106.v,
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 20.h, right: 143.h),
              child: Row(children: [
                AppbarTitleImage(
                    imagePath: ImageConstant.imgArrowLeft,
                    onTap: () {
                      onTapArrowLeft(context);
                    }),
                AppbarSubtitle(
                    text: "lbl_edit_profile".tr,
                    margin: EdgeInsets.only(left: 97.h, top: 1.v, bottom: 1.v))
              ])),
          SizedBox(height: 15.v),
          Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(width: double.maxFinite, child: Divider()))
        ]),
        styleType: Style.bgFill);
  }

  /// Section Widget
  Widget _buildPhotos(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 9.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Text("lbl_photos".tr, style: theme.textTheme.titleLarge)),
          SizedBox(height: 13.v),
          Padding(
              padding: EdgeInsets.only(left: 11.h),
              child: Text("msg_the_main_photo_is".tr,
                  style: CustomTextStyles.bodySmallOnError)),
          SizedBox(height: 25.v),
          BlocSelector<EditMyProfileBloc, EditMyProfileState,
                  EditMyProfileModel?>(
              selector: (state) => state.editMyProfileModelObj,
              builder: (context, editMyProfileModelObj) {
                return StaggeredGridView.countBuilder(
                    shrinkWrap: true,
                    primary: false,
                    crossAxisCount: 4,
                    crossAxisSpacing: 12.h,
                    mainAxisSpacing: 12.h,
                    staggeredTileBuilder: (index) {
                      return StaggeredTile.fit(2);
                    },
                    itemCount:
                        editMyProfileModelObj?.editmyprofileItemList.length ??
                            0,
                    itemBuilder: (context, index) {
                      EditmyprofileItemModel model =
                          editMyProfileModelObj?.editmyprofileItemList[index] ??
                              EditmyprofileItemModel();
                      return EditmyprofileItemWidget(model);
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildSetAnHourlyRate(BuildContext context) {
    return SizedBox(
        height: 124.v,
        width: 357.h,
        child: Stack(alignment: Alignment.topRight, children: [
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  width: 147.h,
                  margin: EdgeInsets.only(top: 1.v),
                  child: Text("msg_looking_for_a_buddy_be".tr,
                      maxLines: 5,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleSmallOnError
                          .copyWith(height: 1.57)))),
          Align(
              alignment: Alignment.topRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 30.h),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    BlocSelector<EditMyProfileBloc, EditMyProfileState, bool?>(
                        selector: (state) => state.isSelectedSwitch,
                        builder: (context, isSelectedSwitch) {
                          return CustomSwitch(
                              value: isSelectedSwitch,
                              onChange: (value) {
                                context
                                    .read<EditMyProfileBloc>()
                                    .add(ChangeSwitchEvent(value: value));
                              });
                        }),
                    SizedBox(height: 22.v),
                    BlocSelector<EditMyProfileBloc, EditMyProfileState, bool?>(
                        selector: (state) => state.isSelectedSwitch1,
                        builder: (context, isSelectedSwitch1) {
                          return CustomSwitch(
                              value: isSelectedSwitch1,
                              onChange: (value) {
                                context
                                    .read<EditMyProfileBloc>()
                                    .add(ChangeSwitch1Event(value: value));
                              });
                        })
                  ]))),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                  padding: EdgeInsets.only(top: 81.v),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 29.v),
                            child: Text("lbl_0_to_500".tr,
                                style: CustomTextStyles.bodySmallGray500)),
                        CustomOutlinedButton(
                            height: 35.v,
                            width: 166.h,
                            text: "msg_set_an_hourly_rate".tr,
                            margin: EdgeInsets.only(bottom: 8.v),
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 6.h),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgFrameGray90002,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize)),
                            buttonStyle: CustomButtonStyles.outlineGray)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildMyDetails(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_my_details".tr, style: theme.textTheme.titleLarge),
          SizedBox(height: 27.v),
          Container(
              decoration: AppDecoration.outlineOnErrorContainer
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Column(mainAxisSize: MainAxisSize.min, children: [
                _buildFrame(context,
                    userImage: ImageConstant.imgFrameGray50016x16,
                    educationText: "lbl_occupation".tr,
                    addText: "lbl_add".tr),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      height: 44.v,
                      width: 33.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.h, vertical: 14.v),
                      decoration: AppDecoration.outlineOnErrorContainer1,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFrame16x16,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          alignment: Alignment.centerLeft)),
                  Container(
                      width: 186.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 13.v),
                      decoration: AppDecoration.outlineOnErrorContainer1,
                      child: Text("msg_gender_pronouns".tr,
                          style: theme.textTheme.bodyMedium)),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 13.v),
                      decoration: AppDecoration.outlineOnErrorContainer1,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("lbl_male".tr,
                                    style: CustomTextStyles.bodyMediumGray500),
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowRight,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin: EdgeInsets.only(left: 6.h))
                              ])))
                ]),
                _buildFrame(context,
                    userImage: ImageConstant.imgFrame1,
                    educationText: "lbl_education".tr,
                    addText: "lbl_add".tr),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Container(
                      height: 44.v,
                      width: 33.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 4.h, vertical: 14.v),
                      decoration: AppDecoration.outlineOnErrorContainer1,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFrame2,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                          alignment: Alignment.centerLeft)),
                  Container(
                      width: 186.h,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.h, vertical: 13.v),
                      decoration: AppDecoration.outlineOnErrorContainer1,
                      child: Text("lbl_location".tr,
                          style: theme.textTheme.bodyMedium)),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 12.h, vertical: 13.v),
                      decoration: AppDecoration.outlineOnErrorContainer1,
                      child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadiusStyle.roundedBorder4),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text("lbl_nv_89104".tr,
                                    style: CustomTextStyles.bodyMediumGray500),
                                CustomImageView(
                                    imagePath: ImageConstant.imgArrowRight,
                                    height: 16.adaptSize,
                                    width: 16.adaptSize,
                                    margin: EdgeInsets.only(left: 6.h))
                              ])))
                ])
              ]))
        ]));
  }

  /// Section Widget
  Widget _buildTable2(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 19.h, right: 27.h),
        decoration: AppDecoration.outlineOnErrorContainer,
        child: Column(children: [
          _buildFrame1(context,
              television: ImageConstant.imgFrame3,
              smoking: "lbl_height".tr,
              add: "lbl_add".tr),
          _buildFrame1(context,
              television: ImageConstant.imgTelevision,
              smoking: "lbl_smoking".tr,
              add: "lbl_add".tr),
          _buildFrame1(context,
              television: ImageConstant.imgFrame4,
              smoking: "lbl_drinking".tr,
              add: "lbl_add".tr),
          _buildFrame1(context,
              television: ImageConstant.imgFrame5,
              smoking: "lbl_pets".tr,
              add: "lbl_add".tr),
          _buildFrame1(context,
              television: ImageConstant.imgFrame6,
              smoking: "lbl_children".tr,
              add: "lbl_add".tr),
          _buildFrame1(context,
              television: ImageConstant.imgFlat,
              smoking: "lbl_zodiac_sign".tr,
              add: "lbl_add".tr),
          _buildFrame1(context,
              television: ImageConstant.imgFlatGray500,
              smoking: "lbl_religion".tr,
              add: "lbl_add".tr)
        ]));
  }

  /// Section Widget
  Widget _buildFinnish(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("msg_i_communicate_in".tr, style: theme.textTheme.titleLarge),
          SizedBox(height: 17.v),
          BlocSelector<EditMyProfileBloc, EditMyProfileState,
                  EditMyProfileModel?>(
              selector: (state) => state.editMyProfileModelObj,
              builder: (context, editMyProfileModelObj) {
                return CustomDropDown(
                    icon: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 11.v, 11.h, 10.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgArrowdownGray90002,
                            height: 14.adaptSize,
                            width: 14.adaptSize)),
                    hintText: "lbl_english".tr,
                    items: editMyProfileModelObj?.dropdownItemList ?? [],
                    prefix: Container(
                        margin: EdgeInsets.fromLTRB(12.h, 11.v, 6.h, 10.v),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgGlobe,
                            height: 14.adaptSize,
                            width: 14.adaptSize)),
                    prefixConstraints: BoxConstraints(maxHeight: 35.v),
                    onChanged: (value) {
                      context
                          .read<EditMyProfileBloc>()
                          .add(ChangeDropDownEvent(value: value));
                    });
              }),
          SizedBox(height: 13.v),
          CustomElevatedButton(
              height: 28.v,
              width: 77.h,
              text: "lbl_finnish".tr,
              rightIcon: Container(
                  margin: EdgeInsets.only(left: 5.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgFrameBlueGray900,
                      height: 16.adaptSize,
                      width: 16.adaptSize)),
              buttonStyle: CustomButtonStyles.fillGray,
              buttonTextStyle: theme.textTheme.bodySmall!)
        ]));
  }

  /// Common widget
  Widget _buildFrame(
    BuildContext context, {
    required String userImage,
    required String educationText,
    required String addText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 44.v,
          width: 33.h,
          padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 14.v),
          decoration: AppDecoration.outlineOnErrorContainer1,
          child: CustomImageView(
              imagePath: userImage,
              height: 16.adaptSize,
              width: 16.adaptSize,
              alignment: Alignment.centerLeft)),
      Container(
          width: 186.h,
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 13.v),
          decoration: AppDecoration.outlineOnErrorContainer1,
          child: Text(educationText,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.gray90002))),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v),
          decoration: AppDecoration.outlineOnErrorContainer1,
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(addText,
                        style: CustomTextStyles.bodyMediumGray500
                            .copyWith(color: appTheme.gray500)),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 6.h))
                  ])))
    ]);
  }

  /// Common widget
  Widget _buildFrame1(
    BuildContext context, {
    required String television,
    required String smoking,
    required String add,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      Container(
          height: 44.v,
          width: 32.h,
          padding: EdgeInsets.symmetric(horizontal: 4.h, vertical: 14.v),
          decoration: AppDecoration.outlineOnErrorContainer2,
          child: CustomImageView(
              imagePath: television,
              height: 16.adaptSize,
              width: 16.adaptSize,
              alignment: Alignment.centerLeft)),
      Container(
          width: 229.h,
          padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 12.v),
          decoration: AppDecoration.outlineOnErrorContainer2,
          child: Text(smoking,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: appTheme.gray90002))),
      Container(
          padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 13.v),
          decoration: AppDecoration.outlineOnErrorContainer2,
          child: Container(
              decoration:
                  BoxDecoration(borderRadius: BorderRadiusStyle.roundedBorder4),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(add,
                        style: CustomTextStyles.bodyMediumGray500
                            .copyWith(color: appTheme.gray500)),
                    CustomImageView(
                        imagePath: ImageConstant.imgArrowRight,
                        height: 16.adaptSize,
                        width: 16.adaptSize,
                        margin: EdgeInsets.only(left: 6.h))
                  ])))
    ]);
  }

  /// Navigates to the previous screen.
  onTapArrowLeft(BuildContext context) {
    NavigatorService.goBack();
  }
}
