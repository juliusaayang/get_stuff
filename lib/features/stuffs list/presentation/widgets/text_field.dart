import 'package:flutter/material.dart';
import 'package:get_stuff/core/constants/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hintText,
     this.controller,
    this.keyboardtype = TextInputType.name,
  }) : super(key: key);
  final String? hintText;
  final TextEditingController? controller;
  final TextInputType keyboardtype;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15,
      ),
      width: MediaQuery.of(context).size.width,
      height: 55,
      decoration: BoxDecoration(
        border: Border.all(
          color: AppColors.primaryColor,
        ),
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      child: TextField(
        keyboardType: keyboardtype,
        controller: controller,
        cursorColor: Colors.black54,
        style: GoogleFonts.poppins(
          fontWeight: FontWeight.w500,
          color: Colors.black54,
        ),
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: GoogleFonts.poppins(
            fontWeight: FontWeight.w500,
            color: Colors.black54,
          ),
          border: InputBorder.none,
          errorBorder: InputBorder.none,
          enabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
