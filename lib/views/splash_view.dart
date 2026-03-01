import 'package:flutter/material.dart';
import 'package:task_22_full_design/views/home_view.dart';
import 'package:task_22_full_design/views/onboarding_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff1A1A1A),
      body: Center(child: Image.asset('assets/images/logo.png')),
    );
  }
}
