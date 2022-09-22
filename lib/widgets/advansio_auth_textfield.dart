import 'package:advansio_test/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AuthTextField extends StatefulWidget {
  final double? width;
  final double? height;
  final String? hintText;
  final TextEditingController? controller;
  final int? minLines;
  final int? maxLines;
  final bool? obscureText;
  final bool? enabled;
  final FormFieldValidator<String>? validateFunction;
  final void Function(String)? onSaved, onChange;
  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final FocusNode? focusNode, nextFocusNode;
  final VoidCallback? submitAction;
  final bool? enableErrorMessage;
  final void Function(String)? onFieldSubmitted;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final Color? bordercolor, backgroundColor;
  final bool? autofocus;
  final String? label;
  final String? labelText;
  final List<TextInputFormatter>? inputFormatters;
  final bool isLoading;
  final double borderRadius;

  const AuthTextField({
    Key? key,
    this.width,
    this.height = 54,
    this.backgroundColor,
    this.isLoading = false,
    @required this.hintText,
    @required this.controller,
    this.minLines = 1,
    this.obscureText = false,
    this.enabled = true,
    this.validateFunction,
    this.onSaved,
    this.onChange,
    this.keyboardType,
    this.textInputAction,
    this.focusNode,
    this.nextFocusNode,
    this.submitAction,
    this.enableErrorMessage = true,
    this.maxLines = 1,
    this.onFieldSubmitted,
    this.suffixIcon,
    this.prefixIcon,
    this.bordercolor,
    this.autofocus,
    this.label,
    this.labelText,
    this.inputFormatters,
    this.borderRadius = 15,
  }) : super(key: key);

  @override
  State<AuthTextField> createState() => _AuthTextFieldState();
}

class _AuthTextFieldState extends State<AuthTextField> {
  String? error;
  @override
  Widget build(BuildContext context) {
    // final _light = Theme.of(context).brightness == Brightness.light;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: widget.height,
          child: TextFormField(
            // textAlignVertical: TextAlignVertical.top,
            textAlign: TextAlign.left,
            inputFormatters: widget.inputFormatters,
            autofocus: widget.autofocus ?? false,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            enabled: widget.enabled,
            onChanged: (val) {
              widget.validateFunction != null
                  ? error = widget.validateFunction!(val)
                  : error = null;
              setState(() {});
              if (widget.onChange != null) widget.onChange!(val);
            },
            style: const TextStyle(
              fontSize: 15.0,
            ),
            cursorColor: AppColors.lightBlue,
            key: widget.key,
            maxLines: widget.maxLines,
            controller: widget.controller,
            obscureText: widget.obscureText!,
            keyboardType: widget.keyboardType,

            textInputAction: widget.textInputAction,
            focusNode: widget.focusNode,
            onFieldSubmitted: widget.onFieldSubmitted,
            validator: widget.validateFunction != null
                ? widget.validateFunction!
                : (value) {
                    return null;
                  },
            onSaved: (val) {
              error = widget.validateFunction!(val);
              setState(() {});
              widget.onSaved!(val!);
            },
            decoration: InputDecoration(
              labelText: widget.labelText,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.suffixIcon,
              filled: true,
              enabled: false,
              errorStyle: const TextStyle(fontSize: 0, height: -30),
              fillColor: widget.backgroundColor ??
                  AppColors.grey.withOpacity(0.1),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                color: AppColors.black.withOpacity(0.5),
              ),
              errorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: const BorderSide(
                  color: AppColors.lightBlue,
                  width: 1,
                ),
              ),
              focusedErrorBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: const BorderSide(
                  color: AppColors.lightBlue,
                  width: 1,
                ),
              ),
              disabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide.none,
              ),
              labelStyle: TextStyle(
                color: AppColors.black.withOpacity(0.5),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide.none,
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide.none,
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(widget.borderRadius),
                borderSide: BorderSide.none,
              ),
            ),
          ),
        ),
        if (error != null)
          const SizedBox(
            height: 5.0,
          ),
        if (error != null)
          Text(
            error!,
            style: const TextStyle(
              color: Colors.red,
              fontSize: 12.0,
            ),
          ),
      ],
    );
  }
}
