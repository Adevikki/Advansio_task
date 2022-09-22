import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/views/dashboard/activity_widget.dart';
import 'package:advansio_test/views/dashboard/complete_verification.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../utils/styles.dart';

class DashboardScreen extends ConsumerStatefulWidget {
  static const routeName = "dashboard-screen";

  const DashboardScreen({Key? key}) : super(key: key);
  @override
  _ChangePasswordScreenState createState() => _ChangePasswordScreenState();
}

class _ChangePasswordScreenState extends ConsumerState<DashboardScreen> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dashboardAppbar,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: const BoxDecoration(
                  color: AppColors.dashboardAppbar,
                ),
                width: double.infinity,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 30, horizontal: 40),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            'N170,425',
                            textAlign: TextAlign.left,
                            style: Styles.p2(
                              fontSize: 35,
                              fontWeight: FontWeight.w700,
                              color: Styles.appColorWhite,
                            ),
                          ),
                          Text(
                            'Available Credit',
                            textAlign: TextAlign.left,
                            style: Styles.p2(
                              fontSize: 15,
                              color: Styles.appColorWhite,
                            ),
                          ),
                        ],
                      ),
                      Align(
                        alignment: Alignment.topRight,
                        child: Image.asset(
                          "assets/images/profile_Image.png",
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.78,
              child: SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: Container(
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: AppColors.backgroundColor,
                  ),
                  // height: MediaQuery.of(context).size.height,
                  child: Stack(
                    children: [
                      Container(
                        decoration: const BoxDecoration(
                          color: AppColors.dashboardAppbar,
                        ),
                        height: MediaQuery.of(context).size.height / 4.7,
                        width: double.infinity,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 37, right: 37, top: 50),
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.whiteBackgroundColor,
                                borderRadius: BorderRadius.circular(16),
                              ),
                              height: 212,
                              width: double.infinity,
                              child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(20.0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Credit Score',
                                              textAlign: TextAlign.left,
                                              style: Styles.p2(
                                                fontSize: 11,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.black,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Align(
                                                  alignment: Alignment.topLeft,
                                                  child: Image.asset(
                                                    "assets/images/online.png",
                                                    color: Colors.green,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 8,
                                                ),
                                                Text(
                                                  '700',
                                                  textAlign: TextAlign.left,
                                                  style: Styles.p2(
                                                    fontWeight: FontWeight.w700,
                                                    fontSize: 24,
                                                    color: AppColors.black,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ],
                                        ),
                                        Align(
                                          alignment: Alignment.topRight,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Remark',
                                                style: Styles.p2(
                                                  fontSize: 11,
                                                  fontWeight: FontWeight.w400,
                                                  color: AppColors.black,
                                                ),
                                              ),
                                              Text(
                                                'Excellent',
                                                style: Styles.p2(
                                                  fontWeight: FontWeight.w700,
                                                  fontSize: 20,
                                                  color: AppColors.black,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    height: 8,
                                    thickness: 0.6,
                                    color: AppColors.black.withOpacity(0.5),
                                  ),
                                  const SizedBox(
                                    height: 21,
                                  ),
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Here are tips on how to improve your credit score to have access to more credit.',
                                              style: Styles.p2(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w400,
                                                color: AppColors.black,
                                              ),
                                            ),
                                            const SizedBox(
                                              height: 5,
                                            ),
                                            Text(
                                              'Tell me more',
                                              style: Styles.p2(
                                                fontWeight: FontWeight.w700,
                                                fontSize: 14,
                                                color: AppColors
                                                    .defaultButtonColor,
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
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          const Align(
                            alignment: Alignment.topLeft,
                            child: ActivityWidget(),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          const CompleteVerificationWidget(),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}



