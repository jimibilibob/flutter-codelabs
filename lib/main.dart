import 'package:educa_mobile_padres/features/biometric/biometric_screen.dart';
import 'package:educa_mobile_padres/features/login/login_screen.dart';
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
      home: TenantScreen(),
    );
  }
}
