import 'bloc/browse_profiles_bloc.dart';
import 'models/browse_profiles_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';

// ignore_for_file: must_be_immutable
class BrowseProfilesPage extends StatefulWidget {
  const BrowseProfilesPage({Key? key})
      : super(
          key: key,
        );

  @override
  BrowseProfilesPageState createState() => BrowseProfilesPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<BrowseProfilesBloc>(
      create: (context) => BrowseProfilesBloc(BrowseProfilesState(
        browseProfilesModelObj: BrowseProfilesModel(),
      ))
        ..add(BrowseProfilesInitialEvent()),
      child: BrowseProfilesPage(),
    );
  }
}

class BrowseProfilesPageState extends State<BrowseProfilesPage>
    with AutomaticKeepAliveClientMixin<BrowseProfilesPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BrowseProfilesBloc, BrowseProfilesState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.outlineOnPrimary,
              child: Column(
                children: [
                  SizedBox(height: 49.v),
                  _buildParthMaheshwariSection(context),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildParthMaheshwariSection(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 38.h),
      child: Column(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage63,
            height: 497.v,
            width: 314.h,
            radius: BorderRadius.circular(
              4.h,
            ),
          ),
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 45.h),
              child: Text(
                "msg_parth_maheshwari2".tr,
                style: theme.textTheme.headlineSmall,
              ),
            ),
          ),
          SizedBox(height: 28.v),
          Padding(
            padding: EdgeInsets.only(
              left: 28.h,
              right: 14.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  width: 88.h,
                  child: Divider(
                    color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
                  ),
                ),
                SizedBox(
                  width: 92.h,
                  child: Divider(
                    color: appTheme.yellow300,
                    indent: 4.h,
                  ),
                ),
                SizedBox(
                  width: 92.h,
                  child: Divider(
                    color: appTheme.yellow300,
                    indent: 4.h,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
