import 'package:codelab2/const/color.dart';
import 'package:flutter/material.dart';

import '../landing_page.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const LandingPage(),
        ),
      );
    });
    return Stack(
      children: [
        Container(
          color: mainYellow,
        ),
        const Align(
          alignment: Alignment.center,
          child: Icon(
            Icons.airplanemode_on,
            color: Colors.black,
            size: 80,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: SizedBox(
            width: 160,
            height: 160,
            child: CircularProgressIndicator(
              color: Colors.black.withOpacity(0.5),
              strokeWidth: 10,
            ),
          ),
        )
      ],
    );
  }
}
