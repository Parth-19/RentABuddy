import 'bloc/notification_tab_container_bloc.dart';
import 'models/notification_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/presentation/browse_profiles_page/browse_profiles_page.dart';
import 'package:renta_buddy/presentation/notification_page/notification_page.dart';
import 'package:renta_buddy/widgets/custom_icon_button.dart';

class NotificationTabContainerScreen extends StatefulWidget {
  const NotificationTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  NotificationTabContainerScreenState createState() =>
      NotificationTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<NotificationTabContainerBloc>(
      create: (context) =>
          NotificationTabContainerBloc(NotificationTabContainerState(
        notificationTabContainerModelObj: NotificationTabContainerModel(),
      ))
            ..add(NotificationTabContainerInitialEvent()),
      child: NotificationTabContainerScreen(),
    );
  }
}

class NotificationTabContainerScreenState
    extends State<NotificationTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NotificationTabContainerBloc,
        NotificationTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  Container(
                    height: 40.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                  SizedBox(height: 19.v),
                  _buildRentABuddyTab(context),
                  SizedBox(
                    height: 751.v,
                    child: TabBarView(
                      controller: tabviewController,
                      children: [
                        NotificationPage(),
                        BrowseProfilesPage(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildRentABuddyTab(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 22.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgFlatBlueGray900,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    margin: EdgeInsets.symmetric(vertical: 4.v),
                  ),
                  Container(
                    height: 32.v,
                    width: 182.h,
                    decoration: BoxDecoration(
                      color:
                          theme.colorScheme.onPrimaryContainer.withOpacity(1),
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
                    ),
                    child: TabBar(
                      controller: tabviewController,
                      labelPadding: EdgeInsets.zero,
                      labelColor: appTheme.lightGreen900,
                      labelStyle: TextStyle(
                        fontSize: 11.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                      unselectedLabelColor: appTheme.lime900,
                      unselectedLabelStyle: TextStyle(
                        fontSize: 11.fSize,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                      indicatorPadding: EdgeInsets.all(
                        2.0.h,
                      ),
                      indicator: BoxDecoration(
                        color:
                            theme.colorScheme.onPrimaryContainer.withOpacity(1),
                        borderRadius: BorderRadius.circular(
                          3.h,
                        ),
                      ),
                      tabs: [
                        Tab(
                          child: Text(
                            "lbl_rent_a_buddy2".tr,
                          ),
                        ),
                        Tab(
                          child: Text(
                            "lbl_find_a_buddy".tr,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 48.h),
            child: CustomIconButton(
              height: 36.adaptSize,
              width: 36.adaptSize,
              padding: EdgeInsets.all(10.h),
              child: CustomImageView(
                imagePath: ImageConstant.imgFrameGray90036x36,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
