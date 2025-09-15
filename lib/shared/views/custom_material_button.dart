import 'package:educa_mobile_padres/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomMaterialPrimaryButton extends StatelessWidget {
  const CustomMaterialPrimaryButton({
    super.key,
    required this.title,
    this.callback,
  });

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

class CustomMaterialSecondaryButton extends StatelessWidget {
  const CustomMaterialSecondaryButton({
    super.key,
    required this.title,
    required this.titleColor,
    this.callback
  });

  final String title;
  final Color titleColor;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialButton(
      onPressed: callback,
      color: Colors.transparent,
      textColor: titleColor,
      elevation: 0,
      shape: StadiumBorder().copyWith(side: BorderSide(color: Colors.white, width: 1.5)),
      padding: EdgeInsets.symmetric(vertical: 16.0),
      minWidth: double.infinity,
      child: Text(title, style: GoogleFonts.roboto(textStyle: textTheme.titleSmall!.copyWith(color: titleColor)),),
    );
  }
}

class CustomMaterialOutlinedButton extends StatelessWidget {
  const CustomMaterialOutlinedButton({
    super.key,
    required this.title,
    required this.titleColor,
    this.callback
  });

  final String title;
  final Color titleColor;
  final VoidCallback? callback;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return MaterialButton(
      onPressed: callback,
      color: Colors.transparent,
      textColor: titleColor,
      elevation: 0,
      shape: StadiumBorder().copyWith(side: BorderSide(color: AppColors.outlinedBorderColorLight, width: 1.5)),
      padding: EdgeInsets.symmetric(vertical: 16.0),
      minWidth: double.infinity,
      child: Text(title, style: GoogleFonts.roboto(textStyle: textTheme.titleSmall!.copyWith(color: titleColor)),),
    );
  }
}

class CustomTextButton extends StatelessWidget {
  const CustomTextButton({
    super.key, required this.title, this.callbackAction,
  });

  final String title;
  final VoidCallback? callbackAction;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: callbackAction,
      child: Text(
        title,
        style: GoogleFonts.roboto(
          textStyle: TextStyle(color: AppColors.primaryMainLight)
        )
      ),
    );
  }
}
