import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:task_22_full_design/views/login_view.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.all(10),
                child: SizedBox(
                  width: 300,
                  child: Text(
                    'Define yourself in your unique way.',
                    style: TextStyle(fontSize: 50, fontWeight: FontWeight.w900),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60),
                child: Image.asset(
                  'assets/images/image_1.png',
                  height: 550,
                  width: double.maxFinite,
                ),
              ),
            ],
          ),

          InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return LoginView();
                  },
                ),
              );
            },
            child: Container(
              width: 340,
              height: 54,
              margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xff1A1A1A),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Get Statrted', style: TextStyle(color: Colors.white)),
                    SizedBox(width: 20),
                    Icon(Icons.arrow_forward, color: Colors.white),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
