import 'package:educa_mobile_padres/shared/views/enable_feature_screen.dart';
import 'package:flutter/material.dart';

class EnableNotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return EnableFeatureScreen(title: 'Enable notifications',
      description: 'Get remainders for missed clock-ins.',
      svgAssetPath: 'assets/images/ic_notification.svg',
      primaryButtonTitle: 'Enable notifications',
      primaryButtonCallback: () {},
      secondaryButtonTitle: 'Not right now',
      secondaryButtonCallback: () {},
    );
  }

}
