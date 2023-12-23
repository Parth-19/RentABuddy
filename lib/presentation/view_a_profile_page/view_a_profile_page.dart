import '../view_a_profile_page/widgets/twelve_item_widget.dart';
import '../view_a_profile_page/widgets/twentynine_item_widget.dart';
import 'bloc/view_a_profile_bloc.dart';
import 'models/twelve_item_model.dart';
import 'models/twentynine_item_model.dart';
import 'models/view_a_profile_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class ViewAProfilePage extends StatefulWidget {
  const ViewAProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  ViewAProfilePageState createState() => ViewAProfilePageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ViewAProfileBloc>(
      create: (context) => ViewAProfileBloc(ViewAProfileState(
        viewAProfileModelObj: ViewAProfileModel(),
      ))
        ..add(ViewAProfileInitialEvent()),
      child: ViewAProfilePage(),
    );
  }
}

class ViewAProfilePageState extends State<ViewAProfilePage>
    with AutomaticKeepAliveClientMixin<ViewAProfilePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.h),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 4.h),
                        child: CustomIconButton(
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          alignment: Alignment.centerRight,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgFrameGray90036x36,
                          ),
                        ),
                      ),
                      SizedBox(height: 14.v),
                      Container(
                        height: 6.v,
                        width: 160.h,
                        decoration: BoxDecoration(
                          color: appTheme.orange5001,
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(
                            3.h,
                          ),
                          child: LinearProgressIndicator(
                            value: 0.49,
                            backgroundColor: appTheme.orange5001,
                            valueColor: AlwaysStoppedAnimation<Color>(
                              theme.colorScheme.onPrimaryContainer
                                  .withOpacity(1),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20.v),
                      _buildPlaylistContainer(context),
                      SizedBox(height: 32.v),
                      _buildClientTestimonialsContainer(context),
                      SizedBox(height: 50.v),
                      _buildAboutMeContainer(context),
                      SizedBox(height: 35.v),
                      _buildRecentOrdersContainer(context),
                      SizedBox(height: 35.v),
                      _buildUserProfileContainer(context),
                      SizedBox(height: 32.v),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomIconButton(
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            padding: EdgeInsets.all(10.h),
                            decoration: IconButtonStyleHelper.outlineRed,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgFrameRed60052x52,
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 48.h),
                            child: CustomIconButton(
                              height: 52.adaptSize,
                              width: 52.adaptSize,
                              padding: EdgeInsets.all(10.h),
                              decoration: IconButtonStyleHelper.outlineGreenA,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgFrameGreen800,
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 63.v),
                      Text(
                        "msg_hide_and_report".tr,
                        style: theme.textTheme.titleSmall,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylistContainer(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      color: appTheme.gray90002,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Container(
        height: 600.v,
        width: 350.h,
        decoration: AppDecoration.fillGray.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder4,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgImage5,
              height: 600.v,
              width: 350.h,
              radius: BorderRadius.circular(
                4.h,
              ),
              alignment: Alignment.center,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 20.h,
                  vertical: 18.v,
                ),
                decoration: AppDecoration.gradientBlackToBlack,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    SizedBox(height: 58.v),
                    Text(
                      "msg_parth_maheshwari".tr,
                      style: CustomTextStyles.headlineSmallOnErrorContainer,
                    ),
                    SizedBox(height: 12.v),
                    Padding(
                      padding: EdgeInsets.only(right: 4.h),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 1.v,
                              bottom: 7.v,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 193.h,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Container(
                                        width: 67.h,
                                        padding: EdgeInsets.symmetric(
                                          horizontal: 6.h,
                                          vertical: 2.v,
                                        ),
                                        decoration:
                                            AppDecoration.fillYellow.copyWith(
                                          borderRadius:
                                              BorderRadiusStyle.circleBorder10,
                                        ),
                                        child: Text(
                                          "lbl_he_him_his".tr,
                                          style: CustomTextStyles
                                              .bodySmallGray90011,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 3.v),
                                        child: Text(
                                          "msg_looking_for_a_buddy".tr,
                                          style: CustomTextStyles
                                              .bodySmallOnErrorContainer_1,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                SizedBox(height: 6.v),
                                Row(
                                  children: [
                                    CustomImageView(
                                      imagePath: ImageConstant
                                          .imgFrameOnerrorcontainer16x16,
                                      height: 16.adaptSize,
                                      width: 16.adaptSize,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 4.h),
                                      child: Text(
                                        "lbl_tech_junkie".tr,
                                        style: CustomTextStyles
                                            .bodySmallOnErrorContainer_1,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgFrameOnerrorcontainer50x50,
                            height: 50.adaptSize,
                            width: 50.adaptSize,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonialsContainer(BuildContext context) {
    return Container(
      width: 350.h,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 18.v,
      ),
      decoration: AppDecoration.outlineGray90002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder4,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgFrameRed600,
                height: 16.adaptSize,
                width: 16.adaptSize,
              ),
              Padding(
                padding: EdgeInsets.only(left: 8.h),
                child: Text(
                  "msg_2_0_kilometres_away".tr,
                  style: CustomTextStyles.bodySmallGray90002,
                ),
              ),
            ],
          ),
          SizedBox(height: 14.v),
          Text(
            "msg_vile_parle_mumbai".tr,
            style: CustomTextStyles.titleLargeSemiBold,
          ),
          SizedBox(height: 2.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAboutMeContainer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_about_me".tr,
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 20.v),
        SizedBox(
          width: 350.h,
          child: Text(
            "msg_it_would_be_wonderful".tr,
            maxLines: 5,
            overflow: TextOverflow.ellipsis,
            style: theme.textTheme.bodyMedium!.copyWith(
              height: 1.57,
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRecentOrdersContainer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_my_details".tr,
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 16.v),
        BlocSelector<ViewAProfileBloc, ViewAProfileState, ViewAProfileModel?>(
          selector: (state) => state.viewAProfileModelObj,
          builder: (context, viewAProfileModelObj) {
            return Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                viewAProfileModelObj?.twentynineItemList.length ?? 0,
                (index) {
                  TwentynineItemModel model =
                      viewAProfileModelObj?.twentynineItemList[index] ??
                          TwentynineItemModel();

                  return TwentynineItemWidget(
                    model,
                    onSelectedChipView: (value) {
                      context.read<ViewAProfileBloc>().add(
                          UpdateChipViewEvent(index: index, isSelected: value));
                    },
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildUserProfileContainer(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "msg_i_communicate_in".tr,
          style: theme.textTheme.titleLarge,
        ),
        SizedBox(height: 17.v),
        BlocSelector<ViewAProfileBloc, ViewAProfileState, ViewAProfileModel?>(
          selector: (state) => state.viewAProfileModelObj,
          builder: (context, viewAProfileModelObj) {
            return Wrap(
              runSpacing: 8.v,
              spacing: 8.h,
              children: List<Widget>.generate(
                viewAProfileModelObj?.twelveItemList.length ?? 0,
                (index) {
                  TwelveItemModel model =
                      viewAProfileModelObj?.twelveItemList[index] ??
                          TwelveItemModel();

                  return TwelveItemWidget(
                    model,
                    onSelectedChipView: (value) {
                      context.read<ViewAProfileBloc>().add(UpdateChipView1Event(
                          index: index, isSelected: value));
                    },
                  );
                },
              ),
            );
          },
        ),
      ],
    );
  }
}
