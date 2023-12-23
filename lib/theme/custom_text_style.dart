import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLarge16 => theme.textTheme.bodyLarge!.copyWith(
        fontSize: 16.fSize,
      );
  static get bodyLargeAmberA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.amberA700,
        fontSize: 16.fSize,
      );
  static get bodyLargeBluegray200 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.blueGray200,
        fontSize: 16.fSize,
      );
  static get bodyLargeEpilogueGray90002 =>
      theme.textTheme.bodyLarge!.epilogue.copyWith(
        color: appTheme.gray90002,
        fontSize: 16.fSize,
      );
  static get bodyLargeEpilogueGray90002_1 =>
      theme.textTheme.bodyLarge!.epilogue.copyWith(
        color: appTheme.gray90002,
      );
  static get bodyLargeEpilogueOnErrorContainer =>
      theme.textTheme.bodyLarge!.epilogue.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyLargeGray700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyLargeGray90002 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray90002,
        fontSize: 16.fSize,
      );
  static get bodyLargeOnErrorContainer => theme.textTheme.bodyLarge!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMediumBluegray200 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodyMediumDeeppurpleA400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.deepPurpleA400,
      );
  static get bodyMediumGray500 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray500,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumOnErrorContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodyMediumPrimaryContainer => theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.primaryContainer,
      );
  static get bodySmall11 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 11.fSize,
      );
  static get bodySmallBluegray200 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray200,
      );
  static get bodySmallEpilogueErrorContainer =>
      theme.textTheme.bodySmall!.epilogue.copyWith(
        color: theme.colorScheme.errorContainer,
      );
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 11.fSize,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 11.fSize,
      );
  static get bodySmallGray5001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray5001,
        fontSize: 11.fSize,
      );
  static get bodySmallGray500_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
      );
  static get bodySmallGray70011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 11.fSize,
      );
  static get bodySmallGray900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
      );
  static get bodySmallGray90002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
      );
  static get bodySmallGray9000211 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray90002,
        fontSize: 11.fSize,
      );
  static get bodySmallGray90011 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray900,
        fontSize: 11.fSize,
      );
  static get bodySmallLightgreen900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightGreen900,
        fontSize: 11.fSize,
      );
  static get bodySmallLightgreen900_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lightGreen900,
      );
  static get bodySmallLime900 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.lime900,
        fontSize: 11.fSize,
      );
  static get bodySmallManropeOnErrorContainer =>
      theme.textTheme.bodySmall!.manrope.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 9.fSize,
      );
  static get bodySmallOnError => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 11.fSize,
      );
  static get bodySmallOnErrorContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 11.fSize,
      );
  static get bodySmallOnErrorContainer9 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontSize: 9.fSize,
      );
  static get bodySmallOnErrorContainer_1 => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
      );
  static get bodySmallOnPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get bodySmallPrimaryContainer => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primaryContainer,
        fontSize: 11.fSize,
      );
  // Headline text style
  static get headlineLarge30 => theme.textTheme.headlineLarge!.copyWith(
        fontSize: 30.fSize,
      );
  static get headlineLargeOnPrimaryContainer =>
      theme.textTheme.headlineLarge!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
  static get headlineSmallOnErrorContainer =>
      theme.textTheme.headlineSmall!.copyWith(
        color: theme.colorScheme.onErrorContainer.withOpacity(1),
        fontWeight: FontWeight.w700,
      );
  // Label text style
  static get labelLargeDeeppurpleA400 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.deepPurpleA400,
      );
  // Title text style
  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get titleLargeInterBluegray900 =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: appTheme.blueGray900,
      );
  static get titleLargeSemiBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallOnError => theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onError,
      );
  static get titleSmallOnPrimaryContainer =>
      theme.textTheme.titleSmall!.copyWith(
        color: theme.colorScheme.onPrimaryContainer.withOpacity(1),
      );
}

extension on TextStyle {
  TextStyle get epilogue {
    return copyWith(
      fontFamily: 'Epilogue',
    );
  }

  TextStyle get manrope {
    return copyWith(
      fontFamily: 'Manrope',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
