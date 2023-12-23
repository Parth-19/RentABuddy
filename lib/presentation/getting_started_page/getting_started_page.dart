import 'bloc/getting_started_bloc.dart';
import 'models/getting_started_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';

// ignore_for_file: must_be_immutable
class GettingStartedPage extends StatefulWidget {
  const GettingStartedPage({Key? key})
      : super(
          key: key,
        );

  @override
  GettingStartedPageState createState() => GettingStartedPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<GettingStartedBloc>(
      create: (context) => GettingStartedBloc(GettingStartedState(
        gettingStartedModelObj: GettingStartedModel(),
      ))
        ..add(GettingStartedInitialEvent()),
      child: GettingStartedPage(),
    );
  }
}

class GettingStartedPageState extends State<GettingStartedPage>
    with AutomaticKeepAliveClientMixin<GettingStartedPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GettingStartedBloc, GettingStartedState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.outlineOnPrimary,
              child: Column(
                children: [
                  SizedBox(height: 16.v),
                  Column(
                    children: [
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
                      SizedBox(height: 16.v),
                      Card(
                        clipBehavior: Clip.antiAlias,
                        elevation: 0,
                        color: appTheme.gray90002,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder4,
                        ),
                        child: Container(
                          height: 593.v,
                          width: 350.h,
                          decoration: AppDecoration.fillGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder4,
                          ),
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImage2,
                                height: 593.v,
                                width: 350.h,
                                radius: BorderRadius.circular(
                                  4.h,
                                ),
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 593.v,
                                  width: 350.h,
                                  child: Stack(
                                    alignment: Alignment.center,
                                    children: [
                                      Align(
                                        alignment: Alignment.center,
                                        child: Padding(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 24.h),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              _buildSwipeRightIfYou(
                                                context,
                                                swipeRightText:
                                                    "msg_swipe_right_if_you".tr,
                                                ifPersonAlsoText:
                                                    "msg_if_the_person_also".tr,
                                              ),
                                              SizedBox(height: 51.v),
                                              Divider(
                                                color: appTheme.gray90001,
                                              ),
                                              SizedBox(height: 51.v),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 4.h,
                                                  right: 31.h,
                                                ),
                                                child: _buildSwipeLeftToPass(
                                                  context,
                                                  swipeLeftToPassText:
                                                      "msg_swipe_left_to_pass"
                                                          .tr,
                                                  ifThePersonIsText:
                                                      "msg_if_the_person_is".tr,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                          padding: EdgeInsets.symmetric(
                                            horizontal: 24.h,
                                            vertical: 169.v,
                                          ),
                                          decoration: AppDecoration.fillGray5001
                                              .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder4,
                                          ),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(right: 1.h),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 8.v),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "msg_swipe_right_if_you"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleLarge,
                                                          ),
                                                          SizedBox(height: 5.v),
                                                          SizedBox(
                                                            width: 215.h,
                                                            child: Text(
                                                              "msg_if_the_person_also"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .bodySmallGray90002
                                                                  .copyWith(
                                                                height: 1.67,
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgFrameGray9000244x44,
                                                      height: 44.adaptSize,
                                                      width: 44.adaptSize,
                                                      margin: EdgeInsets.only(
                                                        left: 41.h,
                                                        bottom: 31.v,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: EdgeInsets.only(
                                                  left: 4.h,
                                                  right: 32.h,
                                                ),
                                                child: Row(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgFrame44x44,
                                                      height: 44.adaptSize,
                                                      width: 44.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          bottom: 31.v),
                                                    ),
                                                    Padding(
                                                      padding: EdgeInsets.only(
                                                        left: 24.h,
                                                        top: 4.v,
                                                      ),
                                                      child: Column(
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            "msg_swipe_left_to_pass"
                                                                .tr,
                                                            style: theme
                                                                .textTheme
                                                                .titleLarge,
                                                          ),
                                                          SizedBox(
                                                              height: 10.v),
                                                          SizedBox(
                                                            width: 198.h,
                                                            child: Text(
                                                              "msg_if_the_person_is"
                                                                  .tr,
                                                              maxLines: 2,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              style: CustomTextStyles
                                                                  .bodySmallGray90002
                                                                  .copyWith(
                                                                height: 1.67,
                                                              ),
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
                      SizedBox(height: 15.v),
                      Container(
                        height: 105.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          color:
                              theme.colorScheme.onErrorContainer.withOpacity(1),
                          borderRadius: BorderRadius.vertical(
                            top: Radius.circular(6.h),
                          ),
                          boxShadow: [
                            BoxShadow(
                              color: appTheme.gray90002.withOpacity(0.32),
                              spreadRadius: 2.h,
                              blurRadius: 2.h,
                              offset: Offset(
                                0,
                                17,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Common widget
  Widget _buildSwipeRightIfYou(
    BuildContext context, {
    required String swipeRightText,
    required String ifPersonAlsoText,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 8.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                swipeRightText,
                style: theme.textTheme.titleLarge!.copyWith(
                  color: appTheme.gray90002,
                ),
              ),
              SizedBox(height: 5.v),
              SizedBox(
                width: 215.h,
                child: Text(
                  ifPersonAlsoText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallGray90002.copyWith(
                    color: appTheme.gray90002,
                    height: 1.67,
                  ),
                ),
              ),
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgFrameGray9000244x44,
          height: 44.adaptSize,
          width: 44.adaptSize,
          margin: EdgeInsets.only(
            left: 41.h,
            bottom: 31.v,
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildSwipeLeftToPass(
    BuildContext context, {
    required String swipeLeftToPassText,
    required String ifThePersonIsText,
  }) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: ImageConstant.imgFrame44x44,
          height: 44.adaptSize,
          width: 44.adaptSize,
          margin: EdgeInsets.only(bottom: 31.v),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 24.h,
            top: 4.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                swipeLeftToPassText,
                style: theme.textTheme.titleLarge!.copyWith(
                  color: appTheme.gray90002,
                ),
              ),
              SizedBox(height: 10.v),
              SizedBox(
                width: 198.h,
                child: Text(
                  ifThePersonIsText,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodySmallGray90002.copyWith(
                    color: appTheme.gray90002,
                    height: 1.67,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
