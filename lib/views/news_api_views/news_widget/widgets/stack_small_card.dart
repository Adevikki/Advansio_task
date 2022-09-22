

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StackPositionWidget extends StatelessWidget {
  const StackPositionWidget({
    Key? key,
    this.bottom,
    this.right,
    this.top,
    this.left,
    this.borderRadius,
    this.text,
    this.widget, this.color,
  }) : super(key: key);

  final double? bottom, right, top, left;
  final BorderRadiusGeometry? borderRadius;
  final String? text;
  final Widget? widget;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: bottom,
      right: right,
      left: left,
      top: top,
      child: Container(
        padding: const EdgeInsets.all(2),
        decoration: BoxDecoration(
          color:color ?? Colors.white,
          boxShadow: const [
            BoxShadow(
              blurRadius: 8,
              color: Color.fromRGBO(0, 0, 0, 0.3),
              offset: Offset(0, 0),
              spreadRadius: 4,
            ),
          ],
          borderRadius: borderRadius,
        ),
        child: widget ??
            Row(
              children: [
                const Icon(CupertinoIcons.pen),
                Text(
                  text ?? '',
                  style: GoogleFonts.lato(
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
      ),
    );
  }
}
