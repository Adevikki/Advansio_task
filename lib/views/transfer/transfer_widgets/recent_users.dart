import 'package:advansio_test/services/bank_user_repository.dart';
import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class RecentUsers extends StatelessWidget {
  const RecentUsers({
    Key? key,
    required this.bankUser,
  }) : super(key: key);

  final BankUserList bankUser;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 230,
      width: double.infinity,
      child: ListView.builder(
          padding: const EdgeInsets.all(20.0),
          physics: const ClampingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemCount: bankUser.length,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return Consumer(
              builder: (context, ref, child) {
                final user = bankUser[index];
                return InkWell(
                    child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, Transfer.routeName);
                            },
                            child: Container(
                              height: 164,
                              width: 142,
                              decoration: BoxDecoration(
                                color: AppColors.whiteBackgroundColor,
                                borderRadius: BorderRadius.circular(12),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(19),
                                child: Column(
                                  children: [
                                    Image.asset(
                                      "assets/images${user.icon}",
                                      width: 80,
                                      height: 80,
                                      fit: BoxFit.contain,
                                    ),
                                    const SizedBox(
                                      height: 2,
                                    ),
                                    Text(
                                      user.typeName!,
                                      style: Styles.p2(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 13,
                                        color: AppColors.black,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 3,
                                    ),
                                    Text(
                                      user.phoneNumber!,
                                      style: Styles.p2(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13,
                                        color: AppColors.black,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ));
              },
            );
          }),
    );
  }
}