import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Primitives

  // Ocean Blue
  static const Color oceanBlue50 = Color(0xFFE1EBF7);
  static const Color oceanBlue100 = Color(0xFFD4E3F3);
  static const Color oceanBlue200 = Color(0xFFA1C1E6);
  static const Color oceanBlue300 = Color(0xFF699DD7);
  static const Color oceanBlue400 = Color(0xFF4383CC);
  static const Color oceanBlue500 = Color(0xFF1565C0);
  static const Color oceanBlue600 = Color(0xFF11539D);
  static const Color oceanBlue700 = Color(0xFF0E4686);
  static const Color oceanBlue800 = Color(0xFF002D5C);
  static const Color oceanBlue900 = Color(0xFF061C35);
  static const Color oceanBlueA100 = Color(0xFF64ACFF);
  static const Color oceanBlueA200 = Color(0xFF3E98FF);
  static const Color oceanBlueA700 = Color(0xFF2B6AB2);

  // Sky Blue
  static const Color skyBlue50 = Color(0xFFECF5FF);
  static const Color skyBlue100 = Color(0xFFDBECFF);
  static const Color skyBlue200 = Color(0xFFA7D0FF);
  static const Color skyBlue300 = Color(0xFF84BDFF);
  static const Color skyBlue400 = Color(0xFF64ACFF);
  static const Color skyBlue500 = Color(0xFF3E98FF);
  static const Color skyBlue600 = Color(0xFF337DD1);
  static const Color skyBlue700 = Color(0xFF2B6AB2);
  static const Color skyBlue800 = Color(0xFF22548C);
  static const Color skyBlue900 = Color(0xFF112A47);

  // Jade Green
  static const Color jadeGreen50 = Color(0xFFEDF8F3);
  static const Color jadeGreen100 = Color(0xFFDCF2E7);
  static const Color jadeGreen200 = Color(0xFFABDEC6);
  static const Color jadeGreen300 = Color(0xFF8AD1AF);
  static const Color jadeGreen400 = Color(0xFF6BC69B);
  static const Color jadeGreen500 = Color(0xFF47B882);
  static const Color jadeGreen600 = Color(0xFF41A776);
  static const Color jadeGreen700 = Color(0xFF31805B);
  static const Color jadeGreen800 = Color(0xFF276547);
  static const Color jadeGreen900 = Color(0xFF143324);

  // Sunny Yellow
  static const Color sunnyYellow50 = Color(0xFFFEF8E9);
  static const Color sunnyYellow100 = Color(0xFFFEF2D4);
  static const Color sunnyYellow200 = Color(0xFFFCDF96);
  static const Color sunnyYellow300 = Color(0xFFFBD36D);
  static const Color sunnyYellow400 = Color(0xFFFAC748);
  static const Color sunnyYellow500 = Color(0xFFF9BA1B);
  static const Color sunnyYellow600 = Color(0xFFCC9816);
  static const Color sunnyYellow700 = Color(0xFFAE8212);
  static const Color sunnyYellow800 = Color(0xFF89660F);
  static const Color sunnyYellow900 = Color(0xFF453408);

  // Lobster Red
  static const Color lobsterRed50 = Color(0xFFFBECE9);
  static const Color lobsterRed100 = Color(0xFFF7DAD5);
  static const Color lobsterRed200 = Color(0xFFECA598);
  static const Color lobsterRed300 = Color(0xFFE58270);
  static const Color lobsterRed400 = Color(0xFFF1674F);
  static const Color lobsterRed500 = Color(0xFFD63B1F);
  static const Color lobsterRed600 = Color(0xFFA62E18);
  static const Color lobsterRed700 = Color(0xFF892614);
  static const Color lobsterRed800 = Color(0xFF621B0E);
  static const Color lobsterRed900 = Color(0xFF3C1009);

  // Cloud Gray
  static const Color cloudGray50 = Color(0xFFFFFFFF);
  static const Color cloudGray100 = Color(0xFFF9FAFB);
  static const Color cloudGray200 = Color(0xFFF3F5F7);
  static const Color cloudGray300 = Color(0xFFEAEEF2);
  static const Color cloudGrayA400 = Color(0xFF2A323B);
  static const Color cloudGrayA500 = Color(0xFF1A1E23);
  static const Color cloudGrayA600 = Color(0xFF0E1013);
  static const Color cloudGrayA700 = Color(0xFF07080A);

  // Stale Blue Gray
  static const Color slateBlueGray50 = Color(0xFFEBEDEF);
  static const Color slateBlueGray100 = Color(0xFFD3D7DC);
  static const Color slateBlueGray200 = Color(0xFFBAC1C8);
  static const Color slateBlueGray300 = Color(0xFFA1ACB4);
  static const Color slateBlueGray400 = Color(0xFF8996A1);
  static const Color slateBlueGray500 = Color(0xFF70808D);
  static const Color slateBlueGray600 = Color(0xFF586A7A);
  static const Color slateBlueGray700 = Color(0xFF3F5466);
  static const Color slateBlueGray800 = Color(0xFF273E53);
  static const Color slateBlueGray900 = Color(0xFF0E283F);
  static const Color slateBlueGrayA700 = Color(0xFF091B2A);

  // Seafoam Teal
  static const Color seafoamTeal50 = Color(0xFFE7F5F6);
  static const Color seafoamTeal100 = Color(0xFFCFEAED);
  static const Color seafoamTeal200 = Color(0xFFB8E0E4);
  static const Color seafoamTeal300 = Color(0xFF9FD5DB);
  static const Color seafoamTealA400 = Color(0xFF6FBFC8);
  static const Color seafoamTealA500 = Color(0xFF53B3BE);
  static const Color seafoamTealA600 = Color(0xFF0F95A4);
  static const Color seafoamTealA700 = Color(0xFF0B707B);
  static const Color seafoamTealA800 = Color(0xFF074A52);
  static const Color seafoamTealA900 = Color(0xFF042529);

  // Divider
  static const Color dividerLight = slateBlueGray100;
  static const Color dividerDark = slateBlueGray700;

  // Text
  static final Color textPrimaryLight = slateBlueGray900.withValues(alpha: 0.85);
  static final Color textPrimaryDark = slateBlueGray50.withValues(alpha: 0.85);
  static final Color textSecondaryLight = slateBlueGray900.withValues(alpha: 0.7);
  static final Color textSecondaryDark = slateBlueGray50.withValues(alpha: 0.7);
  static final Color textDisabledLight = slateBlueGray900.withValues(alpha: 0.55);
  static final Color textDisabledDark = slateBlueGray50.withValues(alpha: 0.55);
  static const Color textContrastLight = slateBlueGray900;
  static const Color textContrastDark = slateBlueGray50;

  // Primary
  static const Color primaryMainLight = oceanBlue500;
  static const Color primaryMainDark = oceanBlue200;
  static const Color primaryDarkLight = oceanBlue700;
  static const Color primaryDarkDark = oceanBlue300;
  static const Color primaryLightLight = oceanBlue400;
  static const Color primaryLightDark = oceanBlue400;
  static const Color primaryContrastLight = cloudGray50;
  static const Color primaryContrastDark = cloudGrayA700;

  // Secondary
  static const Color secondaryMainLight = oceanBlue100;
  static const Color secondaryMainDark = oceanBlue700;
  static const Color secondaryDarkLight = oceanBlue200;
  static const Color secondaryDarkDark = oceanBlue600;
  static const Color secondaryLightLight = oceanBlue50;
  static const Color secondaryLightDark = oceanBlue800;
  static const Color secondaryContrastLight = oceanBlue50;
  static const Color secondaryContrastDark = oceanBlue800;

  // Action
  static final Color actionActiveLight = slateBlueGrayA700.withValues(alpha: 0.56);
  static final Color actionActiveDark = slateBlueGray50.withValues(alpha: 0.56);
  static final Color actionHoverLight = slateBlueGrayA700.withValues(alpha: 0.04);
  static final Color actionHoverDark = slateBlueGrayA700.withValues(alpha: 0.04);
  static final Color actionSelectedLight = slateBlueGrayA700.withValues(alpha: 0.08);
  static final Color actionSelectedDark = slateBlueGrayA700.withValues(alpha: 0.08);
  static final Color actionDisableBackgroundLight = slateBlueGrayA700.withValues(alpha: 0.12);
  static final Color actionDisableBackgroundDark = slateBlueGrayA700.withValues(alpha: 0.12);
  static final Color actionFocusLight = slateBlueGrayA700.withValues(alpha: 0.12);
  static final Color actionFocusDark = slateBlueGrayA700.withValues(alpha: 0.12);
  static final Color actionDisabledLight = slateBlueGrayA700.withValues(alpha: 0.38);
  static final Color actionDisabledDark = slateBlueGrayA700.withValues(alpha: 0.38);

  // Outlined Button
  static final Color outlinedBorderColorLight = slateBlueGrayA700.withValues(alpha: 0.56);

  // Screens
  static const screenBackgroundColorLight = cloudGray200;

  // App Bar
  static const Color appBarDefaultFillLight = Color(0xFFF5F5F5);
  static const Color appBarDefaultFillDark = Color(0xFFF5F5F5);
  static const Color appBarBackgroundLight = cloudGray100;

  // Color Set
  static const Color seafoamDark = seafoamTealA700;
}
