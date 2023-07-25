import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';
import 'package:tilt_room/constants/constants.dart';
import 'package:tilt_room/home_screen/home_screen.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}

class _OtpScreenState extends State<OtpScreen> {
  final TextEditingController pinController = TextEditingController();
  String pin = '';

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
                      width: 250, height: 150, child: Image.asset(Images.logo)),
                  const SizedBox(
                    height: 20,
                  ),
                  const SizedBox(
                      child: Text(
                    "Please enter the OTP",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                        fontWeight: FontWeight.normal
                    ),
                  )),
                  const SizedBox(
                    height: 20,
                  ),
                  Pinput(
                    length: 4,
                    showCursor: true,
                    controller: pinController,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    defaultPinTheme: const PinTheme(
                        width: 50.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                        )),
                    onChanged: (value) {
                      setState(() {
                        pin = value;
                      });
                    },
                  ),
                  const SizedBox(height: 30),
                  InkWell(
                    child: SizedBox(
                      width: 260,
                      height: 60,
                      child: Image.asset(
                        Images.next,
                        fit: BoxFit.fill,
                      ),
                    ),
                    onTap: () {
                      if (pin == '1234') {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const HomeScreen()),
                        );
                        print('OTP is correct');
                      } else {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: const Text('Incorrect OTP'),
                            content:
                                const Text('Please enter the correct OTP.'),
                            actions: [
                              TextButton(
                                child: const Text('OK'),
                                onPressed: () => Navigator.pop(context),
                              ),
                            ],
                          ),
                        );
                        print('Incorrect OTP');
                      }
                    },
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextButton(
                      style: ButtonStyle(
                        textStyle: MaterialStateProperty.resolveWith<TextStyle>(
                              (states) => TextStyle(
                            decoration: states.contains(MaterialState.hovered)
                                ? TextDecoration.underline
                                : TextDecoration.underline,
                          ),
                        ),
                      ),
                      onPressed: () {},
                      child: const Text(
                        'Resend OTP',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.normal
                        ),
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
