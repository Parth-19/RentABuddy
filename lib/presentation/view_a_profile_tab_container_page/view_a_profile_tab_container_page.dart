import 'bloc/view_a_profile_tab_container_bloc.dart';
import 'models/view_a_profile_tab_container_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/presentation/explore_page/explore_page.dart';
import 'package:renta_buddy/presentation/getting_started_page/getting_started_page.dart';

// ignore_for_file: must_be_immutable
class ViewAProfileTabContainerPage extends StatefulWidget {
  const ViewAProfileTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  ViewAProfileTabContainerPageState createState() =>
      ViewAProfileTabContainerPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<ViewAProfileTabContainerBloc>(
      create: (context) =>
          ViewAProfileTabContainerBloc(ViewAProfileTabContainerState(
        viewAProfileTabContainerModelObj: ViewAProfileTabContainerModel(),
      ))
            ..add(ViewAProfileTabContainerInitialEvent()),
      child: ViewAProfileTabContainerPage(),
    );
  }
}

class ViewAProfileTabContainerPageState
    extends State<ViewAProfileTabContainerPage> with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ViewAProfileTabContainerBloc,
        ViewAProfileTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.outlineOnPrimary,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 40.v,
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                        color:
                            theme.colorScheme.onErrorContainer.withOpacity(1),
                      ),
                    ),
                    SizedBox(height: 17.v),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                        padding: EdgeInsets.only(left: 20.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgFlatBlueGray900,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(top: 8.v),
                            ),
                            Container(
                              height: 32.v,
                              width: 182.h,
                              margin: EdgeInsets.only(left: 60.h),
                              decoration: BoxDecoration(
                                color: theme.colorScheme.onPrimaryContainer
                                    .withOpacity(1),
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
                                unselectedLabelColor: appTheme.lightGreen900,
                                unselectedLabelStyle: TextStyle(
                                  fontSize: 11.fSize,
                                  fontFamily: 'Inter',
                                  fontWeight: FontWeight.w400,
                                ),
                                indicatorPadding: EdgeInsets.all(
                                  2.0.h,
                                ),
                                indicator: BoxDecoration(
                                  color: theme.colorScheme.onPrimaryContainer
                                      .withOpacity(1),
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
                                      "lbl_be_a_buddy".tr,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 1508.v,
                      child: TabBarView(
                        controller: tabviewController,
                        children: [
                          GettingStartedPage(),
                          ExplorePage(),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
