import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:advansio_test/utils/validations.dart';
import 'package:advansio_test/views/authentication/registration.dart';
import 'package:advansio_test/views/dashboard/dashboard_view.dart';
import 'package:advansio_test/widgets/advansio_button.dart';
import 'package:advansio_test/widgets/app_text_field.dart';
import 'package:advansio_test/widgets/text_fields.dart';
import 'package:flutter/material.dart';

class LoginView extends StatefulWidget {
  static String routeName = '/login';
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final _formKey = GlobalKey<FormState>();
  bool hidePassword = true;

  String _email = '';
  final String _password = '';
  bool _isEmailInvalid = false;
  bool _isPasswordInvalid = false;
  final _passwordController = TextEditingController();
  final _hidePassword = ValueNotifier<bool>(true);
  final _enableLoginButton = ValueNotifier<bool>(false);
  // controllers
  final _emailController = TextEditingController();

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
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 95, horizontal: 30),
            child: Column(
              children: [
                SizedBox(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const SizedBox(
                        height: 70,
                        child: Text(
                          'Welcome Back!',
                          style: TextStyle(
                            color: AppColors.advansiodarkBlue,
                            fontSize: 35,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const Text(
                        'Sign in to continue',
                        style: TextStyle(
                          color: AppColors.advansioBlue,
                          fontSize: 20,
                          fontWeight: FontWeight.w400,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(
                        height: 62,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          AppTextField(
                            hintText: 'Email Address',
                            keyboardType: TextInputType.emailAddress,
                            textCapitalization: TextCapitalization.none,
                            validator: Validations.email,
                            isInvalid: _isEmailInvalid,
                            controller: _emailController,
                            onChanged: (value) {
                              setState(() {
                                _email = value;
                              });
                            },
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
                            height: 10,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: GestureDetector(
                              onTap: () {
                                // Navigator.pushNamed(context,
                                //     ForgotPasswordScreen.routeName);
                              },
                              child: Text(
                                'Forgot Password?',
                                style: Styles.p2(
                                  color: AppColors.advansiodarkBlue,
                                  fontSize: 13,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 49,
                          ),
                          SizedBox(
                            child: AppButton(
                              height: 60,
                              width: _mediaQuery.size.width,
                              text: "Sign in my Account",
                              textColor: AppColors.whiteBackgroundColor,
                              fontSize: 17,
                              color: AppColors.defaultButtonColor,
                              onTap: () {
                                Navigator.pushNamed(
                                    context, DashboardScreen.routeName);
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
                                    context, Registration.routeName);
                              },
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Don't have an account? ",
                                    style: Styles.p2(
                                      color: AppColors.advansiodarkBlue,
                                      fontSize: 15,
                                    ),
                                  ),
                                  Text(
                                    ' - Sign Up',
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
