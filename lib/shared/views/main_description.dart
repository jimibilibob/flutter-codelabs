import 'package:educa_mobile_padres/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainDescription extends StatelessWidget {
  const MainDescription({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
          text,
          textAlign: TextAlign.left,
            style:
                GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.bodyLarge,
                color: AppColors.textSecondaryLight
              )
      ),
    );
  }
}
