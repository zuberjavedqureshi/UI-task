import 'package:flutter/material.dart';
import 'package:ui_task/components/rounded_button.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/sample3.png",
          height: size.height * 0.5,
          fit: BoxFit.fill,
        ),
        const Text(
          "The only study app you'll ever need",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontFamily: 'Roboto',
            fontSize: 40,
          ),
        ),
        SizedBox(
          width: size.width * 0.9,
          child: const Text(
            textAlign: TextAlign.center,
            "Upload class study material, create electronic flashcards to study.",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        ),
        SizedBox(
          height: size.height * 0.06,
        ),
        const RoundedButton()
      ],
    );
  }
}
