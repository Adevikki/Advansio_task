import 'package:advansio_test/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    Key? key,
    this.color,
    this.textColor,
    this.width,
    this.text,
    this.onTap,
    this.padding,
    this.icon,
    this.margin,
    this.fontSize,
    this.height,
    this.isLoading = false,
  }) : super(key: key);
  final Color? color, textColor;
  final String? text;
  final Image? icon;
  final void Function()? onTap;
  final double? width, height, fontSize;
  final EdgeInsetsGeometry? padding, margin;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    final bool hasFocus = FocusScope.of(context).hasFocus;

    return InkWell(
      onTap: isLoading
          ? null
          : () {
              if (hasFocus) {
                FocusScope.of(context).unfocus();
              }
              onTap?.call();
            },
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: height,
        padding: padding ?? const EdgeInsets.symmetric(vertical: 15),
        margin:
            margin ?? const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: color ?? AppColors.lightBlue,
        ),
        alignment: Alignment.center,
        width: width ?? double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              text ?? "Continue",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: fontSize ?? 15,
                color: textColor ?? AppColors.white,
              ),
            ),
            if (icon != null)
              const SizedBox(
                width: 25,
              ),
            if (icon != null)
              icon ??
                  Image.asset(
                    "assets/images/circle_forward_icon.png",
                    fit: BoxFit.fill,
                  ),
            if (isLoading)
              const SizedBox(
                width: 20,
              ),
            if (isLoading)
              const Align(
                alignment: Alignment.center,
                child: SizedBox(
                  height: 20,
                  width: 20,
                  child: Center(
                    child: CircularProgressIndicator.adaptive(),
                  ),
                ),
              )
          ],
        ),
      ),
    );
  }
}
