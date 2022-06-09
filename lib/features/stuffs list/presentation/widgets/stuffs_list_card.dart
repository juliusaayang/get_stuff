import 'package:flutter/material.dart';
import 'package:get_stuff/core/constants/colors/colors.dart';

class StuffsListCard extends StatelessWidget {
  const StuffsListCard({
    Key? key,
    required this.child,
    this.onTap,
  }) : super(key: key);
  final Widget child;
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(
            color: const Color.fromARGB(255, 94, 89, 89),
          ),
        ),
        child: Center(
          child: child,
        ),
      ),
    );
  }
}
