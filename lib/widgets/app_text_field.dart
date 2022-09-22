import 'package:advansio_test/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatefulWidget {
  const AppTextField({
    Key? key,
    this.labelText,
    this.fillcolor,
    this.onChanged,
    this.onFieldSubmitted,
    this.keyboardType,
    this.textInputAction,
    this.validator,
    this.controller,
    this.maxLines,
    this.textCapitalization = TextCapitalization.none,
    this.prefixIcon,
    this.prefix,
    this.hintText,
    this.suffixIcon,
    this.leftSideLabelWidget,
    this.enabled,
    this.isInvalid = false,
    this.initialValue,
    this.obscureText = false,
  }) : super(key: key);

  final String? labelText;
  final Function(String)? onChanged;
  final TextInputType? keyboardType;
  final leftSideLabelWidget;
  final suffixIcon;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final Widget? prefixIcon;
  final Widget? prefix;
  final Color? fillcolor;
  final bool obscureText;
  final TextEditingController? controller;
  final Function? onFieldSubmitted;
  final int? maxLines;
  final String? hintText;
  final bool? enabled;
  final bool isInvalid;
  final String? initialValue;

  @override
  _AppTextFieldState createState() => _AppTextFieldState();
}

class _AppTextFieldState extends State<AppTextField> {
  final focusNode = FocusNode();

  @override
  void initState() {
    focusNode.addListener(() => setState(() {}));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.labelText != null
            ? const SizedBox(
                height: 10,
              )
            : Container(),
        SizedBox(
          // height: widget.isInvalid ? null : 70,
          // constraints: widget.isInvalid
          //     ? widget.suffixIcon != null
          //         ? const BoxConstraints(
          //             minHeight: 70,
          //           )
          //         : const BoxConstraints(
          //             minHeight: 45,
          //           )
          //     : null,
          child: TextFormField(
            focusNode: focusNode,
            obscureText: widget.obscureText,
            keyboardType: widget.keyboardType,
            textInputAction: widget.textInputAction,
            onChanged: widget.onChanged,
            onFieldSubmitted: widget.onFieldSubmitted as void Function(String)?,
            initialValue: widget.initialValue,
            maxLines: widget.maxLines ?? 1,
            validator: widget.validator,
            controller: widget.controller,
            textCapitalization: widget.textCapitalization,
            enabled: widget.enabled,
            decoration: InputDecoration(
              alignLabelWithHint: true,
              labelText: widget.labelText,
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon,
              fillColor: AppColors.grey,
              labelStyle: TextStyle(
                color: focusNode.hasFocus ? AppColors.darkBlue : null,
              ),
              hintStyle: TextStyle(
                color: Theme.of(context).textTheme.bodyText2?.color,
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 29, vertical: 20),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: AppColors.darkBlue),
                borderRadius: BorderRadius.circular(12),
              ),
              prefix: widget.prefix != null
                  ? const Padding(
                      padding: EdgeInsets.only(left: 16),
                    )
                  : widget.prefix,
              suffix: widget.suffixIcon == null
                  ? const Padding(
                      padding: EdgeInsets.only(right: 16),
                    )
                  : null,
              suffixIcon: widget.suffixIcon,
              suffixIconConstraints: const BoxConstraints(maxHeight: 15),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black54),
                borderRadius: BorderRadius.circular(12),
              ),
              disabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(color: Colors.black54),
                borderRadius: BorderRadius.circular(12),
              ),
              errorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.shade900),
                borderRadius: BorderRadius.circular(12),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red.shade900),
                borderRadius: BorderRadius.circular(12),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
