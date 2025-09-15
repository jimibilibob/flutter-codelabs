import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Text(
        title,
        textAlign: TextAlign.left,
        style:
            GoogleFonts.roboto(
            textStyle: Theme.of(context).textTheme.headlineLarge,
          )
      ),
    );
  }
}