import 'package:flutter/material.dart';
import 'package:get_stuff/core/constants/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class ContentHolder extends StatelessWidget {
  const ContentHolder({Key? key, required this.text}) : super(key: key);
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: AppColors.primaryColor,
      ),
      child: Center(
        child: Text(
          text,
          softWrap: true,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.w600,
            fontSize: 18,
            color: Colors.black54,
          ),
        ),
      ),
    );
  }
}
