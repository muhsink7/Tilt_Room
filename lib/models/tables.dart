import 'package:flutter/material.dart';

class Tables extends StatelessWidget {
  const Tables({super.key, required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
     return Container(
      width: 250,
      height: 120,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xff064821), Color(0xff105c2e)],
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
        borderRadius: BorderRadius.circular(100),
        border: Border.all(
          width: 10,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
              child: Text(text,
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              )),
          const SizedBox(height: 10.0,),
          SizedBox(
            child: ElevatedButton(
              onPressed: () {
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xfff3cb55),
                elevation: 0,
              ),
              child: const Text(
                'Block Seat',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}