import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextInputFieldWidget extends StatefulWidget {
  final TextInputAction textInputAction;
  final TextInputType keyboardType;
  final TextCapitalization textCapitalization;
  final Function? onSaved;
  final hintText;
  final initialValue;
  final labelText;
  final leftSideLabelWidget;
  final bool obscureText;
  final bool? enabled;
  final controller;
  final Function? validation;
  final Function? onChanged;
  final suffixIcon;
  final TextAlign textAlign;
  final FocusNode? focusNode;
  final Function? onFieldSubmitted;
  final isReadOnly;
  final List<TextInputFormatter>? inputFormatters;
  final bool labelTextBold;
  final Function? rightIconAction;
  final TextStyle? textStyle;
  final Widget? prefix;
  final Color? labelStyle, fillColor;
  final bool isInvalid;
  final Widget? prefixIcon;
  final onEditingComplete;
  final String? helperText;

  const TextInputFieldWidget({
    Key? key,
    this.focusNode,
    this.labelStyle,
    this.labelText,
    this.fillColor,
    this.leftSideLabelWidget,
    this.hintText,
    this.keyboardType = TextInputType.text,
    this.onSaved,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction = TextInputAction.next,
    this.obscureText = false,
    this.enabled = true,
    this.controller,
    this.validation,
    this.onChanged,
    this.suffixIcon,
    this.textAlign = TextAlign.start,
    this.onFieldSubmitted,
    this.isReadOnly = false,
    this.inputFormatters,
    this.labelTextBold = false,
    this.rightIconAction,
    this.textStyle,
    this.prefix,
    this.isInvalid = false,
    this.prefixIcon,
    this.onEditingComplete,
    this.helperText,
    this.initialValue,
  }) : super(key: key);

  @override
  _TextInputFieldWidgetState createState() => _TextInputFieldWidgetState();
}

class _TextInputFieldWidgetState extends State<TextInputFieldWidget> {
  /// The node we will monitor to determine if the child is focused
  final FocusNode _focus = FocusNode();

  void _changeLabelTextColorOnFocus() {
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    _focus.addListener(_changeLabelTextColorOnFocus);
  }

  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_changeLabelTextColorOnFocus);

    if (_focus.canRequestFocus) {
      _focus.dispose();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.labelText == null
            ? Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('${widget.labelText}',
                      style: Styles.subtitle2(color: Styles.blue800)),
                  if (widget.leftSideLabelWidget != null)
                    widget.leftSideLabelWidget
                  else
                    Container()
                ],
              )
            : Container(),
        widget.labelText != null
            ? const SizedBox(
                height: 8,
              )
            : Container(),
        TextFormField(
          style: widget.textStyle == null
              ? Styles.p1(
                  color: Styles.appColorGrey900,
                )
              : widget.textStyle,
          // onEditingComplete: ,
          textAlignVertical: TextAlignVertical.center,
          inputFormatters: widget.inputFormatters,
          onFieldSubmitted: widget.onFieldSubmitted as void Function(String)?,
          textAlign: widget.textAlign,
          controller: widget.controller,
          textInputAction: widget.textInputAction,
          keyboardType: widget.keyboardType,
          textCapitalization: widget.textCapitalization,
          obscureText: widget.obscureText,
          initialValue: widget.initialValue,
          onSaved: widget.onSaved as void Function(String?)?,
          validator: widget.validation as String? Function(String?)?,
          onChanged: widget.onChanged as void Function(String)?,
          readOnly: widget.isReadOnly,
          focusNode: widget.focusNode != null ? widget.focusNode : _focus,
          onEditingComplete: widget.onEditingComplete,
          enabled: widget.enabled,

          decoration: InputDecoration(
            // prefixText: widget.prefixText,
            errorMaxLines: 2,
            errorStyle: Styles.p2(color: Styles.appColorErrorColor),
            isDense: true,
            helperText: widget.helperText,
            helperStyle: Styles.p3(color: Styles.appColorGrey600),
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 0,
              vertical: 20,
            ),
            prefix: widget.prefix == null
                ? const Padding(
                    padding: EdgeInsets.only(left: 29),
                  )
                : widget.prefix,
            suffix: widget.suffixIcon == null
                ? const Padding(
                    padding: EdgeInsets.only(right: 16),
                  )
                : null,
            prefixIcon: widget.prefixIcon,
            suffixIcon: widget.suffixIcon,
            suffixIconConstraints: const BoxConstraints(maxHeight: 15),
            enabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide(color: Color(0xff9B9EA9), width: 0.2),
            ),
            disabledBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide(color: Color(0xff9B9EA9), width: 0.2),
            ),
            errorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide:
                  BorderSide(color: Styles.appColorErrorColor, width: 0.5),
            ),
            focusedErrorBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide:
                  BorderSide(color: Styles.appColorErrorColor, width: 0.5),
            ),
            focusedBorder: const OutlineInputBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
              borderSide: BorderSide(color: Styles.appColorGrey500, width: 1),
            ),
            hintText: widget.hintText == null ? null : '${widget.hintText}',
            hintStyle: Styles.p1(color: AppColors.advansiodarkBlue),
            filled: true,
            fillColor: widget.fillColor ?? AppColors.iconGrey,
          ),
        ),
      ],
    );
  }
}
