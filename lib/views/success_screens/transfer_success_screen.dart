import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/constants/helpers.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:advansio_test/views/dashboard/dashboard_view.dart';
import 'package:advansio_test/views/landingpage.dart';
import 'package:advansio_test/views/news_viewmodel/otp_screens/create_pin_view.dart';
import 'package:advansio_test/widgets/advansio_button.dart';
import 'package:flutter/material.dart';

class TransferSuccessfulUpView extends StatefulWidget {
  static String routeName = '/success-transfer-page';
  const TransferSuccessfulUpView({Key? key}) : super(key: key);

  @override
  State<TransferSuccessfulUpView> createState() =>
      _TransferSuccessfulUpViewState();
}

class _TransferSuccessfulUpViewState extends State<TransferSuccessfulUpView> {
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
                  'Transfer completed successfully!',
                  style: Styles.p2(
                    color: AppColors.black,
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                Text(
                  'Thanks for choosing us',
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
                    Navigator.pushNamed(context, DashboardScreen.routeName);
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
