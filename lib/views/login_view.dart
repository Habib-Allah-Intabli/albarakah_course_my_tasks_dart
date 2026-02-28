import 'package:flutter/material.dart';
import 'package:task_22_full_design/views/home_view.dart';
import 'package:task_22_full_design/views/nav_bar_view.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login to your account',
            style: TextStyle(
              color: Color(0xff1A1A1A),
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Text(
            'It’s great to see you again.',
            style: TextStyle(color: Color(0xff808080), fontSize: 17),
          ),

          SizedBox(height: 10),
          TextField(
            decoration: InputDecoration(
              label: Text('Email'),
              hint: Text('Enter your email address'),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 20),
          TextField(
            decoration: InputDecoration(
              label: Text('Passowrd'),
              hint: Text('Enter your passowrd'),
              suffixIcon: Icon(Icons.visibility_off_outlined),
              border: OutlineInputBorder(),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Forgot your password?'),
              TextButton(onPressed: () {}, child: Text('Reset your passowrd')),
            ],
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return NavBarView();
                  },
                ),
              );
            },
            style: ElevatedButton.styleFrom(
              fixedSize: Size(370, 50),
              backgroundColor: Color(0xffCCCCCC),
            ),
            child: Text(
              'login',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
          ),
          SizedBox(height: 30),
          Center(child: Text('Or')),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(fixedSize: Size(370, 50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/google_icon.png'),
                SizedBox(width: 10),
                Text(
                  'login with Google',
                  style: TextStyle(color: Color(0xff1A1A1A), fontSize: 20),
                ),
              ],
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              fixedSize: Size(370, 50),
              backgroundColor: Color(0xff1877F2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/images/facebook_icon.png'),
                SizedBox(width: 10),
                Text(
                  'login with Google',
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ],
            ),
          ),
          Spacer(),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Dont\'t have an account?'),
              TextButton(onPressed: () {}, child: Text('Join')),
            ],
          ),
        ],
      ),
    );
  }
}
