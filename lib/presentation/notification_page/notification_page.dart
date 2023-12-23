import '../notification_page/widgets/userprofile1_item_widget.dart';
import '../notification_page/widgets/userprofile_item_widget.dart';
import 'bloc/notification_bloc.dart';
import 'models/notification_model.dart';
import 'models/userprofile1_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';

// ignore_for_file: must_be_immutable
class NotificationPage extends StatefulWidget {
  const NotificationPage({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationPageState createState() => NotificationPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationBloc>(
      create: (context) => NotificationBloc(NotificationState(
        notificationModelObj: NotificationModel(),
      ))
        ..add(NotificationInitialEvent()),
      child: NotificationPage(),
    );
  }
}

class NotificationPageState extends State<NotificationPage>
    with AutomaticKeepAliveClientMixin<NotificationPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.outlineOnPrimary,
          child: Column(
            children: [
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 38.h,
                  right: 20.h,
                ),
                child: Column(
                  children: [
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 77.h),
                        child: Container(
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
                      ),
                    ),
                    SizedBox(height: 36.v),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildUserProfile(context),
                        SizedBox(height: 14.v),
                        _buildUserProfile1(context),
                      ],
                    ),
                    SizedBox(height: 18.v),
                    _buildTabBarMenu(context),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 15.h),
      child:
          BlocSelector<NotificationBloc, NotificationState, NotificationModel?>(
        selector: (state) => state.notificationModelObj,
        builder: (context, notificationModelObj) {
          return ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 5.0.v),
                child: SizedBox(
                  width: 185.h,
                  child: Divider(
                    height: 3.v,
                    thickness: 3.v,
                    color: appTheme.blueGray200,
                  ),
                ),
              );
            },
            itemCount: notificationModelObj?.userprofileItemList.length ?? 0,
            itemBuilder: (context, index) {
              UserprofileItemModel model =
                  notificationModelObj?.userprofileItemList[index] ??
                      UserprofileItemModel();
              return UserprofileItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfile1(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 14.h),
      child:
          BlocSelector<NotificationBloc, NotificationState, NotificationModel?>(
        selector: (state) => state.notificationModelObj,
        builder: (context, notificationModelObj) {
          return ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return SizedBox(
                height: 10.v,
              );
            },
            itemCount: notificationModelObj?.userprofile1ItemList.length ?? 0,
            itemBuilder: (context, index) {
              Userprofile1ItemModel model =
                  notificationModelObj?.userprofile1ItemList[index] ??
                      Userprofile1ItemModel();
              return Userprofile1ItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarMenu(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 11.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray70028x28,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Spacer(
            flex: 50,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrame10,
            height: 28.adaptSize,
            width: 28.adaptSize,
            margin: EdgeInsets.only(bottom: 2.v),
          ),
          Spacer(
            flex: 50,
          ),
          Container(
            height: 30.v,
            width: 32.h,
            margin: EdgeInsets.only(bottom: 2.v),
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgFrameOnprimarycontainer28x28,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  alignment: Alignment.bottomLeft,
                ),
                Align(
                  alignment: Alignment.topRight,
                  child: Container(
                    width: 18.h,
                    padding: EdgeInsets.symmetric(
                      horizontal: 5.h,
                      vertical: 1.v,
                    ),
                    decoration: AppDecoration.outlineOnErrorContainer3.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder7,
                    ),
                    child: Text(
                      "lbl_n".tr,
                      style: CustomTextStyles.bodySmallOnErrorContainer9,
                    ),
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgFrameGray700,
            height: 32.v,
            width: 87.h,
            margin: EdgeInsets.only(left: 25.h),
          ),
        ],
      ),
    );
  }
}
