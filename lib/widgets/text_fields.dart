import 'package:advansio_test/utils/constants.dart';
import 'package:advansio_test/utils/forms/text_input_field_widget.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:advansio_test/utils/validations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({
    Key? key,
    required this.controller,
    this.labelText,
    this.onChange,
    this.hintText = 'Enter your email address',
  }) : super(key: key);

  final TextEditingController controller;
  final String? labelText;
  final hintText;
  final Function? onChange;

  @override
  Widget build(BuildContext context) {
    return TextInputFieldWidget(
      // enabled: true,
      labelText: '',
      hintText: 'Email Address',
      keyboardType: TextInputType.emailAddress,
      textCapitalization: TextCapitalization.none,
      validation: Validations.email,
      controller: controller,
      onChanged: onChange,
    );
  }
}

class PasswordTextField extends StatelessWidget {
  const PasswordTextField({
    Key? key,
    required this.controller,
    required this.hidePassword,
    required this.toggleHidePassword,
    required this.validator,
    this.focusNode,
    this.labelText = '',
    this.hintText = 'Password',
    this.textInputAction = TextInputAction.done,
    this.onFieldSubmitted,
  }) : super(key: key);

  final TextEditingController controller;
  final bool hidePassword;
  final ValueChanged<bool> toggleHidePassword;
  final FormFieldValidator<String> validator;
  final FocusNode? focusNode;
  final TextInputAction textInputAction;
  final String labelText;
  final String hintText;
  final ValueChanged<String>? onFieldSubmitted;

  @override
  Widget build(BuildContext context) {
    return TextInputFieldWidget(
      labelText: labelText,
      hintText: hintText,
      textCapitalization: TextCapitalization.none,
      focusNode: focusNode,
      validation: validator,
      controller: controller,
      textInputAction: textInputAction,
      onFieldSubmitted: onFieldSubmitted,
      obscureText: hidePassword,
      suffixIcon: IconButton(
        padding: EdgeInsets.zero,
        icon: !hidePassword
            ? Image.asset(
                "assets/images/eye.png",
                width: 45,
              )
            : Image.asset(
                "assets/images/eye.png",
                width: 45,
              ),
        onPressed: () {
          toggleHidePassword(!hidePassword);
        },
      ),
    );
  }
}
