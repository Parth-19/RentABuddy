import 'bloc/launch_bloc.dart';
import 'models/launch_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/widgets/custom_elevated_button.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<LaunchBloc>(
        create: (context) =>
            LaunchBloc(LaunchState(launchModelObj: LaunchModel()))
              ..add(LaunchInitialEvent()),
        child: LaunchScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LaunchBloc, LaunchState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                        height: 40.v,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1))),
                    SizedBox(height: 64.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgImage14,
                        height: 220.v,
                        width: 221.h),
                    SizedBox(height: 8.v),
                    Text("lbl_rentabuddy".tr,
                        style: theme.textTheme.headlineLarge),
                    SizedBox(height: 1.v),
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 109.h),
                            child: Text("msg_where_your_feelings".tr,
                                style: CustomTextStyles.bodySmallGray500_1))),
                    Spacer(),
                    CustomElevatedButton(
                        text: "msg_continue_with_facebook".tr,
                        margin: EdgeInsets.symmetric(horizontal: 20.h),
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 8.h),
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgFrameOnerrorcontainer,
                                height: 24.adaptSize,
                                width: 24.adaptSize)),
                        buttonStyle: CustomButtonStyles.outlinePrimary,
                        buttonTextStyle:
                            CustomTextStyles.bodyLargeOnErrorContainer),
                    SizedBox(height: 12.v),
                    CustomElevatedButton(
                        text: "msg_use_phone_number".tr,
                        margin: EdgeInsets.symmetric(horizontal: 20.h),
                        leftIcon: Container(
                            margin: EdgeInsets.only(right: 8.h),
                            child: CustomImageView(
                                imagePath:
                                    ImageConstant.imgFramePrimarycontainer,
                                height: 24.adaptSize,
                                width: 24.adaptSize)),
                        buttonStyle:
                            CustomButtonStyles.outlineOnPrimaryContainer),
                    SizedBox(height: 67.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_by_signing_up_you2".tr,
                              style: theme.textTheme.bodySmall),
                          TextSpan(
                              text: "msg_terms_and_conditions".tr,
                              style: theme.textTheme.bodySmall!.copyWith(
                                  decoration: TextDecoration.underline))
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 9.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_see_how_we_use_your2".tr,
                              style: theme.textTheme.bodySmall),
                          TextSpan(
                              text: "lbl_privacy_policy".tr,
                              style: theme.textTheme.bodySmall!.copyWith(
                                  decoration: TextDecoration.underline))
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 58.v)
                  ]))));
    });
  }
}
