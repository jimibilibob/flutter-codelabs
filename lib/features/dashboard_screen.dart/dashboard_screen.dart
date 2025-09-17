import 'package:educa_mobile_padres/features/home/home_screen.dart';
import 'package:educa_mobile_padres/shared/theme/app_colors.dart';
import 'package:educa_mobile_padres/shared/views/custom_drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';

class DashboardScreen extends StatefulWidget {
  @override
  State<DashboardScreen> createState() => _DashboardScreenState();
}

class _DashboardScreenState extends State<DashboardScreen> {
  var selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final mediaQuery = MediaQuery.of(context);
    final landScapeScreenHeight = mediaQuery.size.height -
      (mediaQuery.padding.top * 2 + mediaQuery.padding.bottom + kToolbarHeight * 2);
    final usableScreenHeight = mediaQuery.size.height >= 500.0
      ? landScapeScreenHeight : 500.0;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarBackgroundLight,
        title: Text(
          'Welcome back',
          style: GoogleFonts.roboto(
            textStyle: textTheme.bodyLarge!.copyWith(
              color: AppColors.textSecondaryLight,
            )
          ),
        ),
        centerTitle: true,
      ),
      backgroundColor: AppColors.screenBackgroundColorLight,
      drawer: CustomDrawer(),
      body: [
        HomeScreen(usableScreenHeight: usableScreenHeight),
        Text('Timekeeping Screen')
      ][selectedIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: selectedIndex,
        labelTextStyle: WidgetStatePropertyAll(GoogleFonts.roboto(
          textStyle: TextStyle(
            color: AppColors.textPrimaryLight
          )
        )),
        backgroundColor: AppColors.appBarBackgroundLight,
        indicatorColor: AppColors.secondaryMainLight,
        overlayColor: WidgetStateMapper(
          {WidgetState.pressed: AppColors.secondaryMainLight},
        ),
        onDestinationSelected: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        destinations: [
          NavigationDestination(
            icon: Icon(
              Icons.home,
              color: AppColors.actionActiveLight,),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Icon(
              Icons.timer,
              color: AppColors.actionActiveLight,
            ),
            label: 'Time'
          )
        ],
      ),
    );
  }
}
