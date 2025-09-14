import 'package:educa_mobile_padres/shared/views/material_button.dart';
import 'package:educa_mobile_padres/shared/theme/app_colors.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var colorScheme = Theme.of(context).colorScheme;
    return Scaffold(
      body: Stack(
        children: [
          _loginBackground(),
          LoginContent()
        ],
      ),
    );
  }

  SvgPicture _loginBackground() {
    return SvgPicture.asset(
          'assets/images/login_background.svg',
          fit: BoxFit.cover,
          width: double.infinity,
          height: double.infinity,
        );
  }
}

class LoginContent extends StatefulWidget {
  const LoginContent({super.key});


  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  bool isBiometricsEnabled = false;

  Row _loginAppHeader() {
    return Row(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 12.0,
            children: [
              SvgPicture.asset(
                'assets/images/ic_app.svg', 
                width: 90, 
                height: 90
              ),
              Text(
                  'WinTeam',
                  style: GoogleFonts.roboto(
                    textStyle: Theme.of(context).textTheme.displayMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    )
                  ),
              )
            ],
          );
  }

  ConstrainedBox _loginTextDescription() {
    return ConstrainedBox(
              constraints: BoxConstraints(maxWidth: 300),
              child: Text.rich(
                style: GoogleFonts.roboto(
                  textStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: Colors.white,
                  )
                ),
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'By logging in, you agree to '
                    ),
                    TextSpan(
                      text: 'WorkWorks Terms of Use ',
                      style: TextStyle(fontSize: 14.0, color: AppColors.secondaryDarkLight),
                      recognizer: TapGestureRecognizer()..
                        onTap = () {
                          print('Terms of Use');
                        }
                    ),
                    TextSpan(
                      text: 'and',
                    ),
                    TextSpan(
                      text: ' Privacy Policy.',
                      style: TextStyle(fontSize: 14.0, color: AppColors.secondaryDarkLight),
                      recognizer: TapGestureRecognizer()..
                        onTap = () {
                          print('Privacy Policy');
                        }
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            );
  }

  @override
  Widget build(BuildContext context) {
    return Center(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
              child: ConstrainedBox(
                constraints: BoxConstraints(maxHeight: 600),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  spacing: 8.0,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          _loginAppHeader(),
                          const SizedBox(height: 24.0,),
                        ],
                      )
                    ),
                    MaterialPrimaryButton(
                      title: isBiometricsEnabled ? 'Log in with Biometrics' : 'Log in',
                      callback: () {
                        setState(() {
                          isBiometricsEnabled = !isBiometricsEnabled;
                        });
                      },
                    ),
                    Expanded(
                      flex: 1,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 8.0,
                        children: [
                          AnimatedSize(
                            duration: Duration(milliseconds: 100),
                            child: Column(
                              spacing: 8.0,
                              children: [
                                if(isBiometricsEnabled)
                                ... [
                                      Text('or', style: TextStyle(color: Colors.white, fontSize: 16.0),),
                                      MaterialSecondaryButton(
                                        title: 'Log in with password',
                                        titleColor: Colors.white,
                                        callback: () {},
                                      ),
                                      const SizedBox(height: 12.0,),
                                      ConstrainedBox(
                                        constraints: BoxConstraints(maxWidth: 250),
                                        child: 
                                          InkWell(
                                            onTap: () { print('Forget me on this device'); },
                                            child: Text(
                                              'Forget me on this device',
                                              style: TextStyle(
                                                color: AppColors.secondaryDarkLight,
                                                fontSize: 16.0
                                              ),
                                            ),
                                          )
                                  ),
                                  const SizedBox(height: 12.0,),
                                ],
                              ],
                            ),
                          ),
                          _loginTextDescription(),
                          IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              Icons.info_outline,
                              color: Colors.white,
                              size: 24.0,
                              ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        );
  }
}
