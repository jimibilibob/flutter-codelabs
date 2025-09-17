import 'package:educa_mobile_padres/shared/theme/app_colors.dart';
import 'package:educa_mobile_padres/shared/views/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final mediaQuery = MediaQuery.of(context);
    final usableHeight = mediaQuery.size.height -
      (mediaQuery.padding.top + mediaQuery.padding.bottom);

    return Drawer(
      backgroundColor: AppColors.cloudGray100,
      child: SafeArea(
        child: SingleChildScrollView(
          child: SizedBox(
            height: usableHeight < 400 ? 400 : usableHeight,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 28),
                  child: CustomDrawerHeader(textTheme: textTheme),
                ),
                CustomDrawerItem(
                  title: 'Profile',
                  icon: Icons.person,
                  textTheme: textTheme,
                ),
                CustomDrawerItem(
                  title: 'Preferences',
                  icon: Icons.settings,
                  textTheme: textTheme,
                ),
                CustomDrawerItem(
                  title: 'Resources',
                  icon: Icons.info_outline,
                  textTheme: textTheme,
                ),
                Spacer(),
                CustomDivider(color: AppColors.slateBlueGray100),
                CustomDrawerItem(
                  title: 'Log out',
                  icon: Icons.logout,
                  textTheme: textTheme,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomDrawerItem extends StatelessWidget {
  const CustomDrawerItem({
    super.key,
    required this.textTheme,
    required this.title,
    required this.icon,
  });

  final String title;
  final IconData icon;

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(8))
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            spacing: 12,
            children: [
              Icon(
                icon,
                color: AppColors.actionActiveLight,
                size: 30,
              ),
              Text(title, style: GoogleFonts.roboto(
                textStyle: textTheme.titleMedium!.copyWith(
                  color: AppColors.textPrimaryLight,
                  fontWeight: FontWeight.w500
                )
              ),)
            ],
          ),
        ),
      ),
    );
  }
}

class CustomDrawerHeader extends StatelessWidget {
  const CustomDrawerHeader({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      spacing: 16,
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.slateBlueGray600,
          ),
          child: Center(
            child: Text('CS', style: GoogleFonts.roboto(
              textStyle: textTheme.headlineMedium!.copyWith(
                color: Colors.white,
              )
            ),),
          ),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Carlos Sanches', style: GoogleFonts.roboto(
              textStyle: textTheme.bodyLarge!.copyWith(
                color: AppColors.textPrimaryLight
              )
            ),),
            Text('Employee #1992', style: GoogleFonts.roboto(
              textStyle: textTheme.bodyMedium!.copyWith(
                color: AppColors.textSecondaryLight
              )
            ),)
          ],
        )
      ],
    );
  }
}