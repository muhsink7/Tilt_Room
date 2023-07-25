import 'package:flutter/material.dart';
import 'package:tilt_room/constants/constants.dart';
import 'package:tilt_room/models/tables.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
               child: Image.asset(Images.image2)),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
                child: Text(
                  "2 Tables runing at present",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
            const Tables(text: "20K - 100/200"),
            const SizedBox(
              height: 40,
            ),
            const SizedBox(
                child: Text(
                  "3 Tables runing at present",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.w600
                  ),
                )),
            const SizedBox(
              height: 20,
            ),
             const Tables(text: "10K - 100/100"),
          ],
        ),
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.settings,color: Color(0xfff3cb55),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person,color: Color(0xfff3cb55),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home,color: Color(0xfff3cb55),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.emoji_events,color: Color(0xfff3cb55),),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.menu,color: Color(0xfff3cb55),),
            label: '',
          ),
        ],
      ),
    );
  }
}
