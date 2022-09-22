import 'package:flutter/material.dart';

PreferredSizeWidget inAppAppBar({
  showBackButton = false,
  BuildContext? context,
  Widget? content,
}) {
  return AppBar(
    automaticallyImplyLeading: false,
    toolbarHeight: 120,
    backgroundColor: Colors.transparent,
    elevation: 0,
    centerTitle: true,
    leading: showBackButton
        ? Padding(
            padding: const EdgeInsets.only(
              left: 16,
            ),
            child: SizedBox(
              width: 24,
              height: 24,
              child: Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context!);
                  },
                  // child: SvgPicture.asset(
                  //   '$kImagePath/white_back_btn.svg',
                  //   width: 24,
                  //   height: 24,
                  //   semanticsLabel: 'Back',
                  // ),
                ),
              ),
            ),
          )
        : Container(),
    title: content,
    /*bottom: PreferredSize(
        child: Container(
          color: Color(0xffE8F0FB),
          height: 0.5,
        ),
        preferredSize: Size.fromHeight(0.5)),*/
  );
}
