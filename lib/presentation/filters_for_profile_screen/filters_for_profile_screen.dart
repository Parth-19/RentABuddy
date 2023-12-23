import '../filters_for_profile_screen/widgets/tag4_item_widget.dart';
import 'bloc/filters_for_profile_bloc.dart';
import 'models/filters_for_profile_model.dart';
import 'models/tag4_item_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_title.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_title_image.dart';
import 'package:renta_buddy/widgets/app_bar/custom_app_bar.dart';
import 'package:renta_buddy/widgets/custom_drop_down.dart';
import 'package:renta_buddy/widgets/custom_elevated_button.dart';
import 'package:renta_buddy/widgets/custom_switch.dart';

class FiltersForProfileScreen extends StatelessWidget {
  const FiltersForProfileScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FiltersForProfileBloc>(
      create: (context) => FiltersForProfileBloc(FiltersForProfileState(
        filtersForProfileModelObj: FiltersForProfileModel(),
      ))
        ..add(FiltersForProfileInitialEvent()),
      child: FiltersForProfileScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  height: 40.v,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onErrorContainer.withOpacity(1),
                  ),
                ),
                SizedBox(height: 105.v),
                _buildPreferredTable(context),
                SizedBox(height: 35.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 20.h),
                    child: Text(
                      "lbl_age_range".tr,
                      style: CustomTextStyles.bodySmallOnPrimaryContainer,
                    ),
                  ),
                ),
                SizedBox(height: 13.v),
                _buildAgeRangeColumn(context),
                SizedBox(height: 34.v),
                _buildDistanceColumn(context),
                SizedBox(height: 35.v),
                _buildLanguageColumn(context),
                SizedBox(height: 56.v),
                Divider(),
                SizedBox(height: 23.v),
                _buildFilterButtonsRow(context),
                SizedBox(height: 73.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 119.v,
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 163.h,
            ),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgFrameBlueGray90024x24,
                ),
                AppbarTitle(
                  text: "lbl_filters".tr,
                  margin: EdgeInsets.only(
                    left: 118.h,
                    bottom: 2.v,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 28.v),
          Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              width: double.maxFinite,
              child: Divider(),
            ),
          ),
        ],
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildPreferredTable(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_what_is_your_preferred".tr,
            style: CustomTextStyles.bodySmallOnPrimaryContainer,
          ),
          SizedBox(height: 13.v),
          Container(
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                _buildGenderRow(
                  context,
                  genderLabel: "lbl_male".tr,
                  checkmarkImage: ImageConstant.imgGrid,
                ),
                _buildGenderRow(
                  context,
                  genderLabel: "lbl_female".tr,
                  checkmarkImage: ImageConstant.imgCheckmark,
                ),
                _buildGenderRow(
                  context,
                  genderLabel: "lbl_nonbinary".tr,
                  checkmarkImage: ImageConstant.imgGrid,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAgeRangeColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.outlineGray3001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "lbl_18".tr,
                style: theme.textTheme.bodyMedium,
              ),
              Text(
                "lbl_80".tr,
                style: theme.textTheme.bodyMedium,
              ),
            ],
          ),
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: ImageConstant.imgSlider4,
            height: 22.v,
            width: 301.h,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDistanceColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_distance".tr,
            style: CustomTextStyles.bodySmallOnPrimaryContainer,
          ),
          SizedBox(height: 14.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 13.v,
            ),
            decoration: AppDecoration.outlineGray3001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder4,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: Padding(
                    padding: EdgeInsets.only(left: 59.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 1.v),
                          child: Text(
                            "lbl_10_km".tr,
                            style: CustomTextStyles.bodySmallGray500,
                          ),
                        ),
                        Text(
                          "lbl_80_km".tr,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 6.v),
                CustomImageView(
                  imagePath: ImageConstant.imgSlider4Orange5001,
                  height: 22.v,
                  width: 301.h,
                ),
                SizedBox(height: 24.v),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 210.h,
                        margin: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "msg_show_profiles_within".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: theme.textTheme.bodyMedium!.copyWith(
                            height: 1.57,
                          ),
                        ),
                      ),
                      BlocSelector<FiltersForProfileBloc,
                          FiltersForProfileState, bool?>(
                        selector: (state) => state.isSelectedSwitch,
                        builder: (context, isSelectedSwitch) {
                          return CustomSwitch(
                            margin: EdgeInsets.only(
                              left: 59.h,
                              bottom: 21.v,
                            ),
                            value: isSelectedSwitch,
                            onChange: (value) {
                              context
                                  .read<FiltersForProfileBloc>()
                                  .add(ChangeSwitchEvent(value: value));
                            },
                          );
                        },
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

  /// Section Widget
  Widget _buildLanguageColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_languages".tr,
            style: CustomTextStyles.bodySmallOnPrimaryContainer,
          ),
          SizedBox(height: 13.v),
          BlocSelector<FiltersForProfileBloc, FiltersForProfileState,
              FiltersForProfileModel?>(
            selector: (state) => state.filtersForProfileModelObj,
            builder: (context, filtersForProfileModelObj) {
              return CustomDropDown(
                icon: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 11.v, 11.h, 10.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowdownGray90002,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                ),
                hintText: "msg_select_languages".tr,
                items: filtersForProfileModelObj?.dropdownItemList ?? [],
                prefix: Container(
                  margin: EdgeInsets.fromLTRB(12.h, 11.v, 6.h, 10.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgGlobe,
                    height: 14.adaptSize,
                    width: 14.adaptSize,
                  ),
                ),
                prefixConstraints: BoxConstraints(
                  maxHeight: 35.v,
                ),
                onChanged: (value) {
                  context
                      .read<FiltersForProfileBloc>()
                      .add(ChangeDropDownEvent(value: value));
                },
              );
            },
          ),
          SizedBox(height: 13.v),
          BlocSelector<FiltersForProfileBloc, FiltersForProfileState,
              FiltersForProfileModel?>(
            selector: (state) => state.filtersForProfileModelObj,
            builder: (context, filtersForProfileModelObj) {
              return Wrap(
                runSpacing: 4.v,
                spacing: 4.h,
                children: List<Widget>.generate(
                  filtersForProfileModelObj?.tag4ItemList.length ?? 0,
                  (index) {
                    Tag4ItemModel model =
                        filtersForProfileModelObj?.tag4ItemList[index] ??
                            Tag4ItemModel();

                    return Tag4ItemWidget(
                      model,
                      onSelectedChipView: (value) {
                        context.read<FiltersForProfileBloc>().add(
                            UpdateChipViewEvent(
                                index: index, isSelected: value));
                      },
                    );
                  },
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFilterButtonsRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomElevatedButton(
            width: 171.h,
            text: "lbl_clear_all".tr,
            buttonTextStyle: CustomTextStyles.bodyLargeGray700,
          ),
          CustomElevatedButton(
            width: 171.h,
            text: "lbl_apply_filters".tr,
            margin: EdgeInsets.only(left: 8.h),
            buttonStyle: CustomButtonStyles.fillOnPrimaryContainer,
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildGenderRow(
    BuildContext context, {
    required String genderLabel,
    required String checkmarkImage,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 276.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 15.v,
          ),
          decoration: AppDecoration.outlineGray300,
          child: Text(
            genderLabel,
            style: theme.textTheme.bodyMedium!.copyWith(
              color: appTheme.gray90002,
            ),
          ),
        ),
        Container(
          height: 48.v,
          width: 74.h,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.outlineGray300,
          child: CustomImageView(
            imagePath: checkmarkImage,
            height: 20.adaptSize,
            width: 20.adaptSize,
            alignment: Alignment.centerRight,
          ),
        ),
      ],
    );
  }
}
