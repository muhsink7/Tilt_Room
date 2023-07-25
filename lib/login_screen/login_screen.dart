import 'package:flutter/material.dart';
import 'package:tilt_room/constants/constants.dart';
import 'package:tilt_room/otp_screen/otp_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xff1E1E1E),
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: Center(
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 330, height: 200, child: Image.asset(Images.logo)),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                      child: Text(
                    "Enter mobile number and login",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  const TextField(
                    keyboardType: TextInputType.phone,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      hintText: "Mobile number",
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    child: SizedBox(
                        width: 260,
                        height: 60,
                        child: Image.asset(
                          Images.next,
                          fit: BoxFit.fill,
                        )),
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpScreen()),
                      );
                    },
                  ),
                  const SizedBox(
                    height: 70,
                  ),
                  SizedBox(
                      width: 150,
                      height: 75,
                      child: Image.asset(Images.image1)),
                ],
              ),
            ),
          ),
        )));
  }
}
