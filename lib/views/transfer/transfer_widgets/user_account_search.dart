import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/forms/textformfield.dart';
import 'package:advansio_test/views/transfer/transfer_widgets/bank_contact_widget.dart';
import 'package:flutter/material.dart';

class AllAccountsSearch extends StatelessWidget {
  const AllAccountsSearch({
    Key? key,
    this.image,
    this.leading,
    this.subtitle,
    this.trailing,
  }) : super(key: key);

  final Image? image;
  final String? leading;
  final String? subtitle;
  final String? trailing;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 403,
      width: double.infinity,
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.topLeft,
              child: Text(
                'All Contacts',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w600,
                  color: AppColors.black,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const SearchAreaTextField(),
            const SizedBox(
              height: 10,
            ),
            BankContactsWidget(
              image: Image.asset(
                "assets/images/user1.png",
                // width: 50,
                // height: 50,
                fit: BoxFit.fill,
              ),
              leading: 'Hailey Sanders',
              subtitle: '+090078601',
            ),
            const Divider(
              height: 8,
              thickness: 0.6,
              color: AppColors.inviteBtnColor,
            ),
            BankContactsWidget(
              image: Image.asset(
                "assets/images/user2.png",
                // width: 50,
                // height: 50,
                fit: BoxFit.fill,
              ),
              leading: 'Zayn Michel',
              subtitle: '+090078601',
            ),
            const Divider(
              height: 8,
              thickness: 0.6,
              color: AppColors.inviteBtnColor,
            ),
            BankContactsWidget(
              image: Image.asset(
                "assets/images/user2.png",
                // width: 80,
                // height: 100,
                fit: BoxFit.fill,
              ),
              leading: 'Thomas Denver',
              subtitle: '+090078601',
              trailing: const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }
}