
import 'package:educa_mobile_padres/shared/theme/app_colors.dart';
import 'package:educa_mobile_padres/shared/views/custom_material_button.dart';
import 'package:educa_mobile_padres/shared/views/main_description.dart';
import 'package:educa_mobile_padres/shared/views/title_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EnableNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxHeight: mediaQuery.size.height <= 500 
                  ? 500
                  : mediaQuery.size.height - (mediaQuery.padding.top + mediaQuery.padding.bottom * 2)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(left: 12.0),
                    child: Column(
                      spacing: 5,
                      children: [
                        MainTitle(title: 'Enable notifications'),
                        MainDescription(text: 'Get remainders for missed clock-ins.'),
                      ],
                    ),
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    'assets/images/ic_notification.svg',
                    height: 200, fit: BoxFit.cover,
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 12,
                    children: [
                      CustomMaterialPrimaryButton(
                        title: 'Enable notifications',
                        callback: () {},
                      ),
                      CustomTextButton(title: 'Not right now')
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
  
}