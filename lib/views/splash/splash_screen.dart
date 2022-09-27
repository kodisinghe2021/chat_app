import 'package:animate_do/animate_do.dart';
import 'package:chat_app/utils/app_colours.dart';
import 'package:chat_app/components/custom_text.dart';
import 'package:chat_app/views/main/main_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    navigatToMatchPage();
    super.initState();
  }

// navigation function
  Future<void> navigatToMatchPage() async {
    Future.delayed(
      const Duration(seconds: 4),
      (() async {
        Navigator.pushReplacementNamed(context, MainScreen.pageKey);
      }),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: Row(
        children: [
          BounceInLeft(
            duration: const Duration(milliseconds: 3000),
            child: Container(
              height: screenSize.height,
              color: kDarkBlack,
              child: SizedBox(
                width: screenSize.width * 0.3,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const [
                    Icon(Icons.chat_outlined, size: 70, color: kPrimeryYellow),
                    SizedBox(height: 30),
                    HeaderText(text: 'chat App'),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: screenSize.height,
            child: SizedBox(
              width: screenSize.width * 0.7,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [Image.asset('assets/images/1.jpg')],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
