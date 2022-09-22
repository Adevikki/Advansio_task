import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:advansio_test/views/dashboard/dashboard_view.dart';
import 'package:advansio_test/widgets/advansio_button.dart';
import 'package:advansio_test/widgets/pin_code_textfield.dart';
import 'package:advansio_test/widgets/pin_keyboard.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class VerifyOTP extends HookWidget {
  static String routeName = '/otp-verification';

  const VerifyOTP({
    Key? key,
    required this.phoneNumber,
  }) : super(key: key);

  final String phoneNumber;

  @override
  Widget build(BuildContext context) {
    // final _mediaQuery = MediaQuery.of(context);
    var phoneController1 = useTextEditingController();
    var phoneController2 = useTextEditingController();
    var phoneController3 = useTextEditingController();
    var phoneController4 = useTextEditingController();
    var phoneController5 = useTextEditingController();
    var phoneController6 = useTextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: AppColors.whiteBackgroundColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 35.0, vertical: 40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 20,
              ),
              Text(
                'Set your PIN',
                style: Styles.h4(
                  color: AppColors.black,
                  fontWeight: FontWeight.w600,
                  fontSize: 24,
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "You will use this to login next time",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w300,
                ),
              ),
              const SizedBox(height: 40),
              PinTextFieldRow(
                phoneController: [
                  phoneController1,
                  phoneController2,
                  phoneController3,
                  phoneController4,
                  phoneController5,
                  phoneController6,
                ],
                text: '',
              ),
              const SizedBox(height: 30),
              PinKeyBoard(
                phoneController1: phoneController1,
                phoneController2: phoneController2,
                phoneController3: phoneController3,
                phoneController4: phoneController4,
                phoneController5: phoneController5,
                phoneController6: phoneController6,
              ),
              const SizedBox(height: 25),
              AppButton(
                height: 60,
                width: 380,
                text: 'Save PIN',
                fontSize: 20,
                color: AppColors.defaultButtonColor,
                textColor: AppColors.whiteBackgroundColor,
                onTap: () {
                  Navigator.pushNamed(context, DashboardScreen.routeName);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  VerifyOTP copyWith({
    String? phoneNumber,
  }) {
    return VerifyOTP(
      phoneNumber: phoneNumber ?? this.phoneNumber,
    );
  }
}
