import 'package:educa_mobile_padres/shared/theme/app_colors.dart';
import 'package:educa_mobile_padres/shared/views/main_description.dart';
import 'package:educa_mobile_padres/shared/views/custom_material_button.dart';
import 'package:educa_mobile_padres/shared/views/title_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

class BiometricScreen extends StatefulWidget {
  const BiometricScreen({super.key});

  @override
  State<BiometricScreen> createState() => _BiometricScreenState();
}

class _BiometricScreenState extends State<BiometricScreen> {
  var faceID = true;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final mediaQuery = MediaQuery.of(context);
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: mediaQuery.size.height > 600 ? mediaQuery.size.height - (mediaQuery.padding.bottom * 2 + mediaQuery.padding.top * 2) : 650),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 4),
                        child: Column(
                          spacing: 8,
                          children: [
                            Spacer(),
                            MainTitle(title: 'Enable Face ID login'),
                            MainDescription(text: "Enable Face ID to access your account, so you won't need to type your passwork each time."),
                            Spacer(),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 60.0),
                      child: SizedBox(
                        height: 300,
                        child: SvgPicture.asset(
                          faceID ? 'assets/images/ic_biometric_face.svg' : 'assets/images/ic_biometric_finger.svg'
                          , fit: BoxFit.contain, height: faceID ? 300 : 200),
                      ),
                    ),
                    Expanded(
                      child: Column(
                        children: [
                          Spacer(),
                          CustomMaterialPrimaryButton(
                            title: "Enable Face ID",
                            callback: () {
                              setState(() {
                                faceID = !faceID;
                              });
                            },
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('No thanks', style: GoogleFonts.roboto(textStyle: TextStyle(color: AppColors.primaryMainLight))),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
