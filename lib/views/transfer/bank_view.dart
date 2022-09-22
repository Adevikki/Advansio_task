import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/forms/textformfield.dart';
import 'package:advansio_test/views/news_viewmodel/otp_screens/confirm_otp_view.dart';
import 'package:advansio_test/views/transfer/selected_source.dart';
import 'package:advansio_test/widgets/advansio_button.dart';
import 'package:flutter/material.dart';

class BankView extends StatelessWidget {
  const BankView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Column(
        children: [
          const Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Enter transfer details',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            ),
          ),
          const SizedBox(height: 20),
          SelectWidget(
            onTap: () {
              showModalBottomSheet(
                backgroundColor: Colors.transparent,
                context: context,
                isScrollControlled: true,
                builder: (BuildContext context) {
                  return const SelectSourceBottomSheet();
                },
              );
            },
            icon: Icons.keyboard_arrow_down,
            text: 'Select Account',
          ),
          const SizedBox(height: 10),
          const SearchAreaTextField(
            image: SizedBox(),
            hintText: "Enter Amount",
          ),
          const SizedBox(height: 20),
          const SearchAreaTextField(
            image: SizedBox(),
            hintText: "Enter Recipient Account No.",
          ),
          const SizedBox(height: 10),
          SelectWidget(
            onTap: () {},
            icon: Icons.keyboard_arrow_down,
            text: 'Select Recipient Bank',
          ),
          const SizedBox(height: 10),
          const SearchAreaTextField(
            image: SizedBox(),
            hintText: "Narration",
          ),
          const SizedBox(height: 20),
          AppButton(
            height: 60,
            width: double.infinity,
            fontSize: 20,
            color: AppColors.defaultButtonColor,
            textColor: AppColors.whiteBackgroundColor,
            onTap: () {
              Navigator.pushNamed(context, ConfirmOTP.routeName);
            },
          ),
        ],
      ),
    );
  }
}
