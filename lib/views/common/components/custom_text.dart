import 'package:chat_app/utils/app_colours.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HeaderText extends StatelessWidget {
  HeaderText({
    this.fsize = 15,
    required this.text,
    Key? key,
  }) : super(key: key);

  double fsize;
  String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        text,
        style: GoogleFonts.acme(
          fontSize: fsize,
          color: kPrimeryYellow,
        ),
      ),
    );
  }
}
