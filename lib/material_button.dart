import 'package:educa_mobile_padres/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MaterialPrimaryButton extends StatelessWidget {
  const MaterialPrimaryButton({
    super.key,
    required this.colorScheme,
    required this.title,
    this.callback,
  });

  final ColorScheme colorScheme;
  final String title;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return MaterialButton(
      onPressed: callback,
      color: AppColors.primaryMainLight,
      textColor: Colors.white,
      shape: StadiumBorder(),
      padding: EdgeInsets.symmetric(vertical: 16.0),
      minWidth: double.infinity,
      child: Text(title, style: GoogleFonts.roboto(textStyle: textTheme.labelLarge!.copyWith(color: Colors.white)),),
    );
  }
}

class MaterialSecondaryButton extends StatelessWidget {
  const MaterialSecondaryButton({
    super.key,
    required this.colorScheme,
    required this.title,
    this.callback
  });

  final ColorScheme colorScheme;
  final String title;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialButton(
      onPressed: callback,
      color: Colors.transparent,
      textColor: Colors.white,
      elevation: 0,
      shape: StadiumBorder().copyWith(side: BorderSide(color: Colors.white, width: 1.5)),
      padding: EdgeInsets.symmetric(vertical: 16.0),
      minWidth: double.infinity,
      child: Text(title, style: GoogleFonts.roboto(textStyle: textTheme.titleSmall!.copyWith(color: Colors.white)),),
    );
  }
}
