import 'bloc/facebook_login_bloc.dart';
import 'models/facebook_login_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/widgets/custom_elevated_button.dart';
import 'package:renta_buddy/widgets/custom_icon_button.dart';

class FacebookLoginScreen extends StatelessWidget {
  const FacebookLoginScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<FacebookLoginBloc>(
      create: (context) => FacebookLoginBloc(FacebookLoginState(
        facebookLoginModelObj: FacebookLoginModel(),
      ))
        ..add(FacebookLoginInitialEvent()),
      child: FacebookLoginScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FacebookLoginBloc, FacebookLoginState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    height: 40.v,
                    width: double.maxFinite,
                    decoration: BoxDecoration(
                      color: theme.colorScheme.onErrorContainer.withOpacity(1),
                    ),
                  ),
                  SizedBox(height: 79.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage14,
                    height: 220.v,
                    width: 221.h,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "lbl_rentabuddy".tr,
                    style: theme.textTheme.headlineLarge,
                  ),
                  SizedBox(height: 1.v),
                  Text(
                    "msg_where_your_feelings".tr,
                    style: CustomTextStyles.bodySmallGray500_1,
                  ),
                  SizedBox(height: 40.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 44.h),
                      child: Text(
                        "msg_login_via_facebook".tr,
                        style: CustomTextStyles.headlineLarge30,
                      ),
                    ),
                  ),
                  SizedBox(height: 47.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 1.v),
                        child: CustomIconButton(
                          height: 80.v,
                          width: 81.h,
                          child: CustomImageView(),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgImage58,
                        height: 84.v,
                        width: 88.h,
                        radius: BorderRadius.circular(
                          42.h,
                        ),
                        margin: EdgeInsets.only(left: 29.h),
                      ),
                    ],
                  ),
                  SizedBox(height: 50.v),
                  CustomElevatedButton(
                    text: "msg_continue_with_shreyash".tr,
                    margin: EdgeInsets.only(
                      left: 30.h,
                      right: 10.h,
                    ),
                    leftIcon: Container(
                      margin: EdgeInsets.only(right: 8.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgFrameOnerrorcontainer,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                    ),
                    buttonStyle: CustomButtonStyles.outlinePrimary,
                    buttonTextStyle: CustomTextStyles.bodyLargeOnErrorContainer,
                    alignment: Alignment.centerRight,
                  ),
                  SizedBox(height: 43.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_by_signing_up_you2".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "msg_terms_and_conditions".tr,
                          style: theme.textTheme.bodySmall!.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 9.v),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "msg_see_how_we_use_your2".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: "lbl_privacy_policy".tr,
                          style: theme.textTheme.bodySmall!.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                  SizedBox(height: 5.v),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
