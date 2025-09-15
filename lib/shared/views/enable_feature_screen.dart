
import 'package:educa_mobile_padres/shared/views/custom_material_button.dart';
import 'package:educa_mobile_padres/shared/views/main_description.dart';
import 'package:educa_mobile_padres/shared/views/title_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class EnableFeatureScreen extends StatelessWidget {
  const EnableFeatureScreen({super.key,
    required this.title,
    required this.description,
    required this.svgAssetPath,
    required this.primaryButtonTitle,
    this.primaryButtonCallback,
    required this.secondaryButtonTitle,
    this.secondaryButtonCallback
  });
  
  final String title;
  final String description;
  final String svgAssetPath;
  final String primaryButtonTitle;
  final VoidCallback? primaryButtonCallback;
  final String secondaryButtonTitle;
  final VoidCallback? secondaryButtonCallback;


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
                        MainTitle(title: title),
                        MainDescription(text: description),
                      ],
                    ),
                  ),
                  Spacer(),
                  SvgPicture.asset(
                    svgAssetPath,
                    height: 200, fit: BoxFit.cover,
                  ),
                  Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    spacing: 12,
                    children: [
                      CustomMaterialPrimaryButton(
                        title: primaryButtonTitle,
                        callback: primaryButtonCallback,
                      ),
                      CustomTextButton(
                        title: 'Not right now',
                        callbackAction: secondaryButtonCallback,
                      )
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