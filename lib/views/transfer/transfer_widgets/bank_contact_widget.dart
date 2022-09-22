import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:flutter/material.dart';

class BankContactsWidget extends StatelessWidget {
  const BankContactsWidget({
    Key? key,
    required this.image,
    required this.leading,
    required this.subtitle,
    this.trailing,
  }) : super(key: key);

  final Image image;
  final String leading;
  final String subtitle;
  final Widget? trailing;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 1),
        child: ListTile(
          onTap: () {},
          leading: image,
          title: Text(
            leading,
            style: Styles.amountFont(
              color: AppColors.black,
              fontWeight: FontWeight.w600,
              fontSize: 16,
            ),
          ),
          subtitle: Text(
            subtitle,
            style: Styles.amountFont(
              fontWeight: FontWeight.w500,
              fontSize: 12,
            ),
          ),
          trailing: trailing ??
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  InkWell(
                    child: Container(
                      height: 35,
                      width: 73,
                      decoration: BoxDecoration(
                        color: AppColors.inviteBtnColor,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Align(
                        alignment: Alignment.center,
                        child: Text(
                          'Invite',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: AppColors.whiteBackgroundColor,
                          ),
                        ),
                      ),
                    ),
                  ) // )
                ],
              ),
        ),
      ),
    );
  }
}