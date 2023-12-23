import 'bloc/list_of_matched_profiles_container_bloc.dart';
import 'models/list_of_matched_profiles_container_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/presentation/list_of_matched_profiles_page/list_of_matched_profiles_page.dart';
import 'package:renta_buddy/presentation/view_a_profile_tab_container_page/view_a_profile_tab_container_page.dart';
import 'package:renta_buddy/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class ListOfMatchedProfilesContainerScreen extends StatelessWidget {
  ListOfMatchedProfilesContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<ListOfMatchedProfilesContainerBloc>(
        create: (context) => ListOfMatchedProfilesContainerBloc(
            ListOfMatchedProfilesContainerState(
                listOfMatchedProfilesContainerModelObj:
                    ListOfMatchedProfilesContainerModel()))
          ..add(ListOfMatchedProfilesContainerInitialEvent()),
        child: ListOfMatchedProfilesContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ListOfMatchedProfilesContainerBloc,
        ListOfMatchedProfilesContainerState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.listOfMatchedProfilesPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
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
