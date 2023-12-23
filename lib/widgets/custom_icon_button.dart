import 'package:flutter/material.dart';
import 'package:renta_buddy/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.yellow50,
                  borderRadius: BorderRadius.circular(8.h),
                  boxShadow: [
                    BoxShadow(
                      color: theme.colorScheme.onPrimaryContainer,
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        4,
                      ),
                    ),
                  ],
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get outlineRed => BoxDecoration(
        color: appTheme.red50,
        borderRadius: BorderRadius.circular(26.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.red600.withOpacity(0.19),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineGreenA => BoxDecoration(
        color: appTheme.gray10002,
        borderRadius: BorderRadius.circular(26.h),
        boxShadow: [
          BoxShadow(
            color: appTheme.greenA700.withOpacity(0.19),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get outlineOnPrimaryContainerTL18 => BoxDecoration(
        color: appTheme.yellow50,
        borderRadius: BorderRadius.circular(18.h),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              4,
            ),
          ),
        ],
      );
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
        borderRadius: BorderRadius.circular(22.h),
      );
}
