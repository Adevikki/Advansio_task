import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/constants/helpers.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:advansio_test/views/authentication/login.dart';
import 'package:advansio_test/widgets/advansio_button.dart';
import 'package:flutter/material.dart';

class SuccessSignUpView extends StatefulWidget {
  static String routeName = '/success-view-page';
  const SuccessSignUpView({Key? key}) : super(key: key);

  @override
  State<SuccessSignUpView> createState() => _SuccessSignUpViewState();
}

class _SuccessSignUpViewState extends State<SuccessSignUpView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteBackgroundColor,
      //
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        child: SafeArea(
            child: SingleChildScrollView(
          physics: const ClampingScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SizedBox(
                    width: double.infinity,
                    height: height(context) / 2.9,
                    child: Image.asset(
                      "assets/images/thumbs_Up.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                Text(
                  'Account Created!',
                  style: Styles.p2(
                    color: AppColors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  'Dear user your account has been created successfully. Continue to start using app',
                  style: Styles.p2(
                    color: AppColors.advansiodarkBlue,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 70),
                AppButton(
                  height: 60,
                  width: 380,
                  fontSize: 20,
                  color: AppColors.defaultButtonColor,
                  textColor: AppColors.whiteBackgroundColor,
                  onTap: () {
                    Navigator.pushNamed(context, LoginView.routeName);
                  },
                ),
              ],
            ),
          ),
        )),
      ),
    );
  }
}
