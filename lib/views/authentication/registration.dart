import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:advansio_test/utils/validations.dart';
import 'package:advansio_test/views/authentication/login.dart';
import 'package:advansio_test/views/success_screens/success_signup_screen.dart';
import 'package:advansio_test/widgets/advansio_button.dart';
import 'package:advansio_test/widgets/app_text_field.dart';
import 'package:advansio_test/widgets/text_fields.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';


class Registration extends StatefulWidget {
  static String routeName = '/registration';
  const Registration({Key? key}) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {
  final _formKey = GlobalKey<FormState>();
  bool hidePassword = true;

  String _email = '';
  bool _agree = false;
  String _fullName = '';
  final String _password = '';
  bool _isEmailInvalid = false;
  bool _isPasswordInvalid = false;
  final _passwordController = TextEditingController();

  final _hidePassword = ValueNotifier<bool>(true);
  final _enableLoginButton = ValueNotifier<bool>(false);
  // controllers
  final _emailController = TextEditingController();
  final _fullNameController = TextEditingController();

  // validate login form
  void validateForm() async {
    if (Validations.email(_email) != null) {
      setState(() {
        _isEmailInvalid = true;
      });
    } else {
      setState(() {
        _isEmailInvalid = false;
      });
    }

    if (Validations.loginPassword(_password) != null) {
      setState(() {
        _isPasswordInvalid = true;
      });
    } else {
      setState(() {
        _isPasswordInvalid = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    final _mediaQuery = MediaQuery.of(context);
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      resizeToAvoidBottomInset: false,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height,
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 80,
                      ),
                      const Text(
                        'Welcome!',
                        style: TextStyle(
                          color: AppColors.advansiodarkBlue,
                          fontSize: 35,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      const Text(
                        'Please provide following \ndetails for your new account',
                        style: TextStyle(
                          color: AppColors.advansioBlue,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Column(
                        children: [
                          AppTextField(
                            hintText: 'Full Name',
                            keyboardType: TextInputType.emailAddress,
                            textCapitalization: TextCapitalization.none,
                            validator: Validations.email,
                            isInvalid: _isEmailInvalid,
                            controller: _fullNameController,
                            onChanged: (value) {
                              setState(() {
                                _fullName = value;
                              });
                            },
                          ),
                          EmailTextField(
                            controller: _emailController,
                          ),
                          // Password input field container
                          ValueListenableBuilder<bool>(
                            valueListenable: _hidePassword,
                            builder: (context, value, child) {
                              return PasswordTextField(
                                controller: _passwordController,
                                hidePassword: value,
                                validator: Validations.loginPassword,
                                onFieldSubmitted: (_) => validateForm(),
                                toggleHidePassword: (value) =>
                                    _hidePassword.value = value,
                              );
                            },
                          ),
                          const SizedBox(
                            height: 18,
                          ),
                          Column(children: [
                            SizedBox(
                              width: double.infinity,
                              child: Row(
                                children: [
                                  Material(
                                    child: Checkbox(
                                      value: _agree,
                                      checkColor: AppColors.white,
                                      fillColor:
                                          MaterialStateProperty.all<Color>(
                                              AppColors.advansiodarkBlue),
                                      onChanged: (value) {
                                        setState(() {
                                          _agree = value ?? false;
                                        });
                                      },
                                    ),
                                  ),
                                  SizedBox(
                                    width: MediaQuery.of(context).size.width *
                                        0.59,
                                    child: RichText(
                                      text: TextSpan(
                                        text:
                                            'By creating your account you have to agree with our ',
                                        style: Styles.p1(
                                          color: Styles.appColorGrey800,
                                          fontSize: 10,
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Terms and Conditions.',
                                            style: Styles.p1(
                                              color: AppColors.advansiodarkBlue,
                                              fontWeight: FontWeight.w500,
                                              fontSize: 13,
                                            ),
                                            recognizer: TapGestureRecognizer()
                                              ..onTap = () {
                                              },
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ]),
                          const SizedBox(
                            height: 29,
                          ),
                          SizedBox(
                            child: AppButton(
                              height: 60,
                              width: _mediaQuery.size.width,
                              text: "Sign up my Account",
                              textColor: AppColors.whiteBackgroundColor,
                              fontSize: 17,
                              color: AppColors.defaultButtonColor,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, SuccessSignUpView.routeName);
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 30,
                          ),
                          Align(
                            alignment: Alignment.topCenter,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pushNamed(
                                    context, LoginView.routeName);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    'Already have an account? ',
                                    style: Styles.p2(
                                      color: AppColors.advansiodarkBlue,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    ' - Sign In',
                                    style: Styles.p2(
                                        color: AppColors.darkBlue,
                                        fontSize: 15,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
