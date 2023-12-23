import 'bloc/otp_bloc.dart';
import 'models/otp_model.dart';
import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';
import 'package:renta_buddy/widgets/custom_elevated_button.dart';
import 'package:renta_buddy/widgets/custom_text_form_field.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<OtpBloc>(
      create: (context) => OtpBloc(OtpState(
        otpModelObj: OtpModel(),
      ))
        ..add(OtpInitialEvent()),
      child: OtpScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
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
              SizedBox(height: 87.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 44.h),
                  child: Text(
                    "lbl_verify_otp".tr,
                    style: CustomTextStyles.headlineLarge30,
                  ),
                ),
              ),
              SizedBox(height: 2.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 44.h),
                  child: Text(
                    "msg_otp_has_been_sent".tr,
                    style: CustomTextStyles.bodySmallGray500_1,
                  ),
                ),
              ),
              SizedBox(height: 25.v),
              Padding(
                padding: EdgeInsets.only(left: 44.h),
                child: BlocSelector<OtpBloc, OtpState, TextEditingController?>(
                  selector: (state) => state.enterotpController,
                  builder: (context, enterotpController) {
                    return CustomTextFormField(
                      width: 241.h,
                      controller: enterotpController,
                      hintText: "msg_enter_6_digit_otp".tr,
                      hintStyle: theme.textTheme.bodyMedium!,
                      textInputAction: TextInputAction.done,
                      alignment: Alignment.centerLeft,
                    );
                  },
                ),
              ),
              SizedBox(height: 12.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 44.h),
                  child: Text(
                    "msg_55_secs_resend".tr,
                    style: CustomTextStyles.bodySmallGray500_1,
                  ),
                ),
              ),
              SizedBox(height: 29.v),
              CustomElevatedButton(
                text: "lbl_continue".tr,
                margin: EdgeInsets.symmetric(horizontal: 20.h),
                leftIcon: Container(
                  margin: EdgeInsets.only(right: 8.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgFramePrimarycontainer,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.outlineOnPrimaryContainer,
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
  }
}
