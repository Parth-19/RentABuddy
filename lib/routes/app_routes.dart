import 'package:flutter/material.dart';
import 'package:renta_buddy/presentation/launch_screen/launch_screen.dart';
import 'package:renta_buddy/presentation/otp_screen/otp_screen.dart';
import 'package:renta_buddy/presentation/edit_my_profile_screen/edit_my_profile_screen.dart';
import 'package:renta_buddy/presentation/filters_for_profile_screen/filters_for_profile_screen.dart';
import 'package:renta_buddy/presentation/list_of_matched_profiles_container_screen/list_of_matched_profiles_container_screen.dart';
import 'package:renta_buddy/presentation/facebook_login_screen/facebook_login_screen.dart';
import 'package:renta_buddy/presentation/my_profile_screen/my_profile_screen.dart';
import 'package:renta_buddy/presentation/notification_tab_container_screen/notification_tab_container_screen.dart';
import 'package:renta_buddy/presentation/new_matched_profile_notification_one_screen/new_matched_profile_notification_one_screen.dart';
import 'package:renta_buddy/presentation/message_a_matched_profile_screen/message_a_matched_profile_screen.dart';
import 'package:renta_buddy/presentation/new_matched_profile_notification_two_screen/new_matched_profile_notification_two_screen.dart';
import 'package:renta_buddy/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String launchScreen = '/launch_screen';

  static const String otpScreen = '/otp_screen';

  static const String editMyProfileScreen = '/edit_my_profile_screen';

  static const String filtersForProfileScreen = '/filters_for_profile_screen';

  static const String viewAProfilePage = '/view_a_profile_page';

  static const String viewAProfileTabContainerPage =
      '/view_a_profile_tab_container_page';

  static const String listOfMatchedProfilesPage =
      '/list_of_matched_profiles_page';

  static const String listOfMatchedProfilesContainerScreen =
      '/list_of_matched_profiles_container_screen';

  static const String facebookLoginScreen = '/facebook_login_screen';

  static const String gettingStartedPage = '/getting_started_page';

  static const String myProfileScreen = '/my_profile_screen';

  static const String browseProfilesPage = '/browse_profiles_page';

  static const String explorePage = '/explore_page';

  static const String notificationPage = '/notification_page';

  static const String notificationTabContainerScreen =
      '/notification_tab_container_screen';

  static const String newMatchedProfileNotificationOneScreen =
      '/new_matched_profile_notification_one_screen';

  static const String messageAMatchedProfileScreen =
      '/message_a_matched_profile_screen';

  static const String newMatchedProfileNotificationTwoScreen =
      '/new_matched_profile_notification_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        launchScreen: LaunchScreen.builder,
        otpScreen: OtpScreen.builder,
        editMyProfileScreen: EditMyProfileScreen.builder,
        filtersForProfileScreen: FiltersForProfileScreen.builder,
        listOfMatchedProfilesContainerScreen:
            ListOfMatchedProfilesContainerScreen.builder,
        facebookLoginScreen: FacebookLoginScreen.builder,
        myProfileScreen: MyProfileScreen.builder,
        notificationTabContainerScreen: NotificationTabContainerScreen.builder,
        newMatchedProfileNotificationOneScreen:
            NewMatchedProfileNotificationOneScreen.builder,
        messageAMatchedProfileScreen: MessageAMatchedProfileScreen.builder,
        newMatchedProfileNotificationTwoScreen:
            NewMatchedProfileNotificationTwoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: LaunchScreen.builder
      };
}
