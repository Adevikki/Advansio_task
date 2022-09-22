import 'package:advansio_test/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import '../utils/constants/helpers.dart';

class ProviderAuthButton extends StatelessWidget {
  const ProviderAuthButton({
    Key? key,
    this.color,
    this.textColor,
    this.text,
    this.width,
    required this.icon,
    this.onTap,
  }) : super(key: key);
  final Color? color, textColor;
  final String? icon, text;
  final void Function()? onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: height(context) * 0.02),
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: color ?? AppColors.lightBlue,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
            ),
          ],
        ),
        alignment: Alignment.center,
        width: width ?? double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Image.asset(
              "assets/images/$icon.png",
              height: 20,
            ),
            // SizedBox(
            //   width: 10,
            // ),
            Text(
              text ?? "Continue",
              style: TextStyle(
                fontWeight: FontWeight.w500,
                color: textColor ?? AppColors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
