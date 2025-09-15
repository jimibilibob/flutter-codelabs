import 'package:educa_mobile_padres/shared/theme/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
    required this.usableScreenHeight,
  });

  final double usableScreenHeight;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        height: usableScreenHeight,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HomeBodyTop(usableScreenHeight: usableScreenHeight),
            HomeBodyBottom()
          ],
        ),
      ),
    );
  }
}

class HomeBodyBottom extends StatelessWidget {
  const HomeBodyBottom({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(child:
      Padding(
        padding: EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        _HomeScreenItem(
                          title: 'Pay & Benefits',
                          description: 'Paychecks, time off, and tax forms',
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 5.0),
                          child: Divider(thickness: 1, color: AppColors.slateBlueGray50,),
                        ),
                        _HomeScreenItem(
                          title: 'Timekeeping',
                          description: 'Access time clock and time records',
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )
    );
  }
}

class HomeBodyTop extends StatelessWidget {
  const HomeBodyTop({
    super.key,
    required this.usableScreenHeight,
  });

  final double usableScreenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Container(
        height: usableScreenHeight/2,
        width: double.infinity,
        color: AppColors.appBarBackgroundLight,
        child: Padding(
          padding: const EdgeInsets.all(48.0),
          child: SvgPicture.asset(
            'assets/images/ic_cover_placeholder.svg',
            fit: BoxFit.contain,
          ),
        ),
      )
    );
  }
}

class _HomeScreenItem extends StatelessWidget {
  const _HomeScreenItem({
    super.key,
    required this.title,
    required this.description,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: 14,
      children: [
        Container(
          width: 25,
          height: 25,
          decoration: BoxDecoration(
            color: AppColors.seafoamTeal100,
            shape: BoxShape.circle
          ),
          child: Icon(
            Icons.attach_money,
            color: AppColors.seafoamDark,
          )
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: 0,
          children: [
            Text(title, style: GoogleFonts.roboto(
              textStyle: textTheme.bodyLarge!.copyWith(
                color: AppColors.textPrimaryLight,
                fontWeight: FontWeight.w400,
                height: 1.4
              )
            ),),
            Text(description, style: GoogleFonts.roboto(
              textStyle: textTheme.bodyMedium!.copyWith(
                color: AppColors.textSecondaryLight,
                fontWeight: FontWeight.w400,
                height: 1.4
              )
            ),),
          ],
        )
      ],
    );
  }
}