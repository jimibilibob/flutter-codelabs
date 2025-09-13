import 'package:educa_mobile_padres/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:material_color_utilities/material_color_utilities.dart';


class ThemeSettings {
  ThemeSettings({required this.sourceColor, required this.themeMode});
  
  final Color sourceColor;
  final ThemeMode themeMode;
}

class ThemeSettingsChange extends Notification {
  final ThemeSettings settings;

  ThemeSettingsChange(this.settings);
}

class ThemeProvider extends InheritedWidget {
  ThemeProvider({
    super.key,
    required super.child,
    required this.settings,
    required this.lightDynamic,
    required this.darkDynamic
  });

  final ValueNotifier<ThemeSettings> settings;
  final ColorScheme? lightDynamic;
  final ColorScheme? darkDynamic;

  Color blend(Color targetColor) {
    return Color(
      Blend.harmonize(
        targetColor.toARGB32(),
        settings.value.sourceColor.toARGB32(),  
      )
    );
  }

  Color source(Color? targetColor) {
    return targetColor != null
      ? blend(targetColor)
      : settings.value.sourceColor;
  }

  ColorScheme colors(Brightness brightness, Color? targetColor) {
    final dynamicPrimary = brightness == Brightness.dark
        ? darkDynamic?.primary
        : lightDynamic?.primary;
    return ColorScheme.fromSeed(
      seedColor: dynamicPrimary ?? source(targetColor),
      brightness: brightness,
    );
  }

  ThemeMode themeMode () {
    return settings.value.themeMode;
  }

  ThemeData light([Color? targetColor]) {
    final colorScheme = colors(Brightness.light, targetColor);
    return ThemeData.light().copyWith(
      colorScheme: colorScheme,
      brightness: Brightness.light,
      primaryColor: AppColors.primaryMainLight,
      scaffoldBackgroundColor: AppColors.oceanBlue50,
      buttonTheme: ButtonThemeData(
        buttonColor: AppColors.primaryMainLight,
        shape: StadiumBorder(),
        textTheme: ButtonTextTheme.primary,
      )
    );
  }

  ThemeData dark([Color? targetColor]) {
    final colorScheme = colors(Brightness.dark, targetColor);
    return ThemeData.dark().copyWith(
      colorScheme: colorScheme,
      brightness: Brightness.dark,
    );
  }

  @override
  bool updateShouldNotify(covariant ThemeProvider oldWidget) {
    return oldWidget.settings != settings;
  }
}


