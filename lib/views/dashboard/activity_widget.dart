import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:advansio_test/views/transfer/transfer_view.dart';
import 'package:flutter/material.dart';

class ActivityWidget extends StatelessWidget {
  const ActivityWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Text(
            'Activity',
            style: Styles.p2(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: AppColors.black,
            ),
          ),
        ),
        const SizedBox(
          height: 19,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 2),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, Transfer.routeName);
                  },
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 114,
                    width: 107,
                    decoration: BoxDecoration(
                      color: AppColors.whiteBackgroundColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(19),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/transfer.png",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Transfer',
                            style: Styles.p2(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 114,
                    width: 107,
                    decoration: BoxDecoration(
                      color: AppColors.whiteBackgroundColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(19),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/my_card.png",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            'My Card',
                            style: Styles.p2(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {},
                  child: Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10),
                    height: 114,
                    width: 107,
                    decoration: BoxDecoration(
                      color: AppColors.whiteBackgroundColor,
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(19),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/pay_loan.png",
                            width: 50,
                            height: 50,
                          ),
                          const SizedBox(
                            height: 3,
                          ),
                          Text(
                            'Pay Loan',
                            style: Styles.p2(
                              fontWeight: FontWeight.w700,
                              fontSize: 13,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
