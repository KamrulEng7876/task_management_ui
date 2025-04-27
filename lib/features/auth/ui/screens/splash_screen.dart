import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'sign_in_screen.dart'; // make sure this import exists

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 3), () {
      Get.off(() => const SignInScreen());
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(),
              Image.asset('assets/images/logo.png',
              width: 160,
              height: 160,),
              const Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Powered by', style: TextStyle(color: Colors.grey)),
                  Text(' M360 ICT', style: TextStyle(color: Colors.green,fontSize: 16,fontWeight: FontWeight.w600)),
                ],
              ),
              CircularProgressIndicator(),
            ],
          ),
        ),
      ),
    );
  }
}
