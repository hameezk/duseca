// ignore_for_file: unused_element

import 'package:flutter/material.dart';
import 'package:duseca/utils/size_utils.dart';
import 'theme_helper.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body style
  static get bodySmallMontserrat => theme.textTheme.bodySmall!.montserrat;
  static get bodySmallMontserratBluegray900 =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: appTheme.blueGray900,
      );
  static get bodySmallMontserratOnPrimary =>
      theme.textTheme.bodySmall!.montserrat.copyWith(
        color: theme.colorScheme.onPrimary,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  // Label text style
  static get labelLargeBluegray700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray700,
      );
  static get labelLargeBluegray800 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.blueGray800,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRed700 => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeRed700SemiBold => theme.textTheme.labelLarge!.copyWith(
        color: appTheme.red700.withOpacity(0.4),
        fontWeight: FontWeight.w600,
      );
  static get labelLargeSecondaryContainer =>
      theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get labelMediumRed600 => theme.textTheme.labelMedium!.copyWith(
        color: appTheme.red600,
      );
  static get labelSmallMontserratSecondaryContainer =>
      theme.textTheme.labelSmall!.montserrat.copyWith(
        color: theme.colorScheme.secondaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallPoppinsWhiteA700 =>
      theme.textTheme.labelSmall!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 9.fSize,
        fontWeight: FontWeight.w500,
      );
  static get labelSmallRed700 => theme.textTheme.labelSmall!.copyWith(
        color: appTheme.red700,
      );
  // Title text style
  static get titleLargeInterOnError =>
      theme.textTheme.titleLarge!.inter.copyWith(
        color: theme.colorScheme.onError,
        fontSize: 22.fSize,
      );
  static get titleMediumDMSansOnPrimaryContainer =>
      theme.textTheme.titleMedium!.dMSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumPoppinsWhiteA700 =>
      theme.textTheme.titleMedium!.poppins.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
        fontWeight: FontWeight.w500,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 16.fSize,
      );
  static get titleSmallInterWhiteA700 =>
      theme.textTheme.titleSmall!.inter.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
        fontWeight: FontWeight.w700,
      );
}

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }

  TextStyle get ponnala {
    return copyWith(
      fontFamily: 'Ponnala',
    );
  }

  TextStyle get dMSans {
    return copyWith(
      fontFamily: 'DM Sans',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }

  TextStyle get montserrat {
    return copyWith(
      fontFamily: 'Montserrat',
    );
  }
}
