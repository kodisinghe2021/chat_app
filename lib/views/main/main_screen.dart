import 'package:chat_app/views/common/components/custom_buttons.dart';
import 'package:chat_app/views/common/text/custom_text.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);
  static const pageKey = '/main-screen';
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body: SizedBox(
        width: screenSize.width,
        height: screenSize.height,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            HeaderText(
              text: 'MainScreen',
              fsize: 50,
            ),
            const SizedBox(height: 40),
            SizedBox(
              width: 300,
              child: CustomButton(
                text: 'Login',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
