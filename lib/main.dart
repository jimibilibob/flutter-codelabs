import 'package:educa_mobile_padres/features/biometric/biometric_screen.dart';
import 'package:educa_mobile_padres/features/dashboard_screen.dart/dashboard_screen.dart';
import 'package:educa_mobile_padres/features/enable/enable_location_screen.dart';
import 'package:educa_mobile_padres/features/enable/enable_notification_screen.dart';
import 'package:educa_mobile_padres/features/login/login_screen.dart';
import 'package:educa_mobile_padres/shared/views/enable_feature_screen.dart';
import 'package:educa_mobile_padres/features/tenant/tenant_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DocumentApp());
}

class DocumentApp extends StatelessWidget {
  const DocumentApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: DashboardScreen(),
    );
  }
}
