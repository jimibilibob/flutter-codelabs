
import 'package:educa_mobile_padres/shared/theme/app_colors.dart';
import 'package:educa_mobile_padres/shared/views/custom_material_button.dart';
import 'package:educa_mobile_padres/shared/views/main_description.dart';
import 'package:educa_mobile_padres/shared/views/title_screen.dart';
import 'package:flutter/material.dart';

class TenantScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
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
                    MainTitle(title: 'Choose an account'),
                    MainDescription(text: 'You can always switch this later, inside the app.'),
                  ],
                ),
              ),
              SizedBox(height: 40,),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                spacing: 12,
                children: [
                  CustomMaterialOutlinedButton(title: 'Acme Cleaning Co.', titleColor: AppColors.oceanBlue500),
                  CustomMaterialOutlinedButton(title: "Marsha's Building Maintenance", titleColor: AppColors.oceanBlue500),
                  CustomMaterialOutlinedButton(title: 'Titanium & Co.', titleColor: AppColors.oceanBlue500),
                ],
              ),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
  
}