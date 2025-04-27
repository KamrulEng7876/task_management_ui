import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatelessWidget {
  ResetPasswordScreen({super.key});

  final TextEditingController _nPasswordTEController = TextEditingController();
  final TextEditingController _cPasswordTEController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Send OTP",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 10),
              const Text(
                "Recover your account in easy steps",
                style: TextStyle(fontSize: 16, color: Colors.grey),
              ),
              const SizedBox(height: 120),
              TextField(
                controller: _nPasswordTEController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'New Password',labelStyle: TextStyle(
                  color: Colors.black,
                  fontSize: 16,fontWeight: FontWeight.w500
                ),
                  hintText: '********',
                  hintStyle: TextStyle(letterSpacing: 3, color: Colors.grey),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              SizedBox(height: 16),
              TextField(
                controller: _cPasswordTEController,
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Confirm Password',
                  labelStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16,fontWeight: FontWeight.w500
                  ),
                  hintText: '********',
                  hintStyle: TextStyle(letterSpacing: 3, color: Colors.grey),
                  suffixIcon: Icon(Icons.remove_red_eye),
                ),
              ),
              const SizedBox(height: 110),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  child: const Text(
                    "Send OTP",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 210),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Powered by', style: TextStyle(color: Colors.grey)),
                  Text(
                    ' M360 ICT',
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
