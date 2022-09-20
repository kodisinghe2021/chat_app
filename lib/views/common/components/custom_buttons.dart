import 'package:chat_app/utils/app_colours.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.onTap,
    required this.text,
    this.height = 50,
    this.isLoading = false,
    Key? key,
  }) : super(key: key);
  final double height;
  final String text;
  final Function() onTap;
  final bool isLoading;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
          alignment: Alignment.bottomRight,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              width: double.infinity,
              height: height + 3,
              decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.8),
                    spreadRadius: 1,
                    blurRadius: 10,
                    offset: const Offset(0, 3), // changes position of shadow
                  ),
                ],
                color: const Color(0xFF293462),
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(right: 3),
          height: height,
          decoration: BoxDecoration(
            gradient: const LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment(0.8, 1),
              colors: <Color>[
                Color(0xFF293462),
                Color(0xff5b0060),
              ], // Gradient from https://learnui.design/tools/gradient-generator.html
              tileMode: TileMode.mirror,
            ),
            // color: kNavyBlue,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Center(
            child: isLoading
                ? const SpinKitThreeInOut(
                    color: kWhite,
                  )
                : Text(
                    'Login',
                    style: GoogleFonts.dangrek(
                      fontSize: 20,
                      color: kWhite,
                      letterSpacing: 2.5,
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}
