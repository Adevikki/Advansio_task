import 'package:advansio_test/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class SearchAreaTextField extends StatelessWidget {
  const SearchAreaTextField({
    Key? key,
    this.image,
    this.hintText,
  }) : super(key: key);
  final Widget? image;
  final String? hintText;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          decoration: BoxDecoration(
            color: AppColors.faintGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          height: 49,
          width: double.infinity,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(0.0),
                child: image ?? Image.asset("assets/images/search_icon.png"),
              ),
              const SizedBox(
                width: 25,
              ),
              Flexible(
                child: TextFormField(
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(0.0),
                    hintText: hintText ?? 'search name or number..',
                    hintStyle: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                      color: AppColors.searchAreaColor,
                    ),
                    border: InputBorder.none,
                  ),
                  style: const TextStyle(
                    color: Colors.black,
                    fontSize: 11.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class SelectWidget extends StatelessWidget {
  const SelectWidget({
    Key? key,
    this.icon,
    this.text,
    this.onTap,
  }) : super(key: key);
  final IconData? icon;
  final String? text;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: InkWell(
        onTap: onTap!,
        child: Container(
          decoration: BoxDecoration(
            color: AppColors.faintGrey,
            borderRadius: BorderRadius.circular(12),
          ),
          height: 49,
          width: double.infinity,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      text!,
                      style: const TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                        color: AppColors.searchAreaColor,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Icon(
                      icon!,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
