import 'package:flutter/material.dart';
import 'package:get_stuff/core/constants/colors/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: GoogleFonts.poppins(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: AppColors.primaryColor,
          ),
        ),
        InkWell(
          onTap: () => Navigator.pop(context),
          child: Container(
            height: 35,
            width: 35,
            decoration: BoxDecoration(
              color: AppColors.primaryColor,
              shape: BoxShape.circle,
            ),
            child: const Center(
              child: Icon(
                Icons.close,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
