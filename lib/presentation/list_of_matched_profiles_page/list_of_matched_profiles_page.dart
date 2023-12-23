import '../list_of_matched_profiles_page/widgets/twentyeight_item_widget.dart';
import 'bloc/list_of_matched_profiles_bloc.dart';
import 'models/list_of_matched_profiles_model.dart';
import 'models/twentyeight_item_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_title_image.dart';
import 'package:renta_buddy/widgets/app_bar/appbar_title_searchview.dart';
import 'package:renta_buddy/widgets/app_bar/custom_app_bar.dart';

// ignore_for_file: must_be_immutable
class ListOfMatchedProfilesPage extends StatelessWidget {
  const ListOfMatchedProfilesPage({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ListOfMatchedProfilesBloc>(
      create: (context) => ListOfMatchedProfilesBloc(ListOfMatchedProfilesState(
        listOfMatchedProfilesModelObj: ListOfMatchedProfilesModel(),
      ))
        ..add(ListOfMatchedProfilesInitialEvent()),
      child: ListOfMatchedProfilesPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
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
              Spacer(
                flex: 29,
              ),
              _buildUserProfile(context),
              SizedBox(height: 33.v),
              Divider(),
              SizedBox(height: 25.v),
              _buildRecentOrders(context),
              SizedBox(height: 26.v),
              _buildClientTestimonials(context),
              Spacer(
                flex: 70,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 115.v,
      centerTitle: true,
      title: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              right: 21.h,
            ),
            child: Row(
              children: [
                AppbarTitleImage(
                  imagePath: ImageConstant.imgFlatBlueGray90024x24,
                  margin: EdgeInsets.only(
                    top: 6.v,
                    bottom: 5.v,
                  ),
                ),
                BlocSelector<ListOfMatchedProfilesBloc,
                    ListOfMatchedProfilesState, TextEditingController?>(
                  selector: (state) => state.searchController,
                  builder: (context, searchController) {
                    return AppbarTitleSearchview(
                      margin: EdgeInsets.only(left: 20.h),
                      hintText: "lbl_search".tr,
                      controller: searchController,
                    );
                  },
                ),
              ],
            ),
          ),
          SizedBox(height: 19.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
        ],
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 20.h),
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
        SizedBox(height: 26.v),
        Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
            height: 120.v,
            child: BlocSelector<ListOfMatchedProfilesBloc,
                ListOfMatchedProfilesState, ListOfMatchedProfilesModel?>(
              selector: (state) => state.listOfMatchedProfilesModelObj,
              builder: (context, listOfMatchedProfilesModelObj) {
                return ListView.separated(
                  padding: EdgeInsets.only(left: 20.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (
                    context,
                    index,
                  ) {
                    return SizedBox(
                      width: 12.h,
                    );
                  },
                  itemCount: listOfMatchedProfilesModelObj
                          ?.twentyeightItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    TwentyeightItemModel model = listOfMatchedProfilesModelObj
                            ?.twentyeightItemList[index] ??
                        TwentyeightItemModel();
                    return TwentyeightItemWidget(
                      model,
                    );
                  },
                );
              },
            ),
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildRecentOrders(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 3.v),
            child: Text(
              "lbl_chats".tr,
              style: theme.textTheme.titleLarge,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 11.h),
            child: Text(
              "lbl_1".tr,
              style: CustomTextStyles.titleLargeInterBluegray900,
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: ImageConstant.imgFlatGray90002,
            height: 24.adaptSize,
            width: 24.adaptSize,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.fillOnPrimaryContainer1,
      child: Row(
        children: [
          Container(
            height: 49.v,
            width: 48.h,
            margin: EdgeInsets.only(top: 2.v),
            child: Stack(
              alignment: Alignment.bottomRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImage11,
                  height: 48.adaptSize,
                  width: 48.adaptSize,
                  radius: BorderRadius.circular(
                    24.h,
                  ),
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.bottomRight,
                  child: Container(
                    height: 12.adaptSize,
                    width: 12.adaptSize,
                    margin: EdgeInsets.only(right: 3.h),
                    decoration: BoxDecoration(
                      color: appTheme.greenA700,
                      borderRadius: BorderRadius.circular(
                        6.h,
                      ),
                      border: Border.all(
                        color:
                            theme.colorScheme.onErrorContainer.withOpacity(1),
                        width: 1.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 16.h,
              top: 6.v,
              bottom: 4.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "lbl_shreyash".tr,
                      style: theme.textTheme.bodyMedium,
                    ),
                    Text(
                      "lbl_1_hours_ago".tr,
                      style: CustomTextStyles.bodySmallGray70011,
                    ),
                  ],
                ),
                SizedBox(height: 7.v),
                Text(
                  "lbl_you_hello".tr,
                  style: CustomTextStyles.bodySmallGray90002,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
