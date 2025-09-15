import 'package:educa_mobile_padres/shared/views/enable_feature_screen.dart';
import 'package:flutter/material.dart';

class EnableLocationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnableFeatureScreen(title: 'Enable your location',
      description: 'Your punches may not be accepted if you have the location permission disabled. Make sure your location accuracy is set to precise.',
      svgAssetPath: 'assets/images/ic_location.svg',
      primaryButtonTitle: 'Enable location',
      primaryButtonCallback: () {},
      secondaryButtonTitle: 'Not right now',
      secondaryButtonCallback: () {},
    );
  }

}
