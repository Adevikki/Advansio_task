import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:flutter/material.dart';

class CompleteVerificationWidget extends StatelessWidget {
  const CompleteVerificationWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: Text(
              'Complete Verification',
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
          Container(
            decoration: BoxDecoration(
              color: AppColors.whiteBackgroundColor,
              borderRadius: BorderRadius.circular(16),
            ),
            height: 380,
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '75%',
                            textAlign: TextAlign.left,
                            style: Styles.p2(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black,
                            ),
                          ),
                          Text(
                            '7 of 10 completed',
                            style: Styles.p2(
                              fontSize: 11,
                              fontWeight: FontWeight.w400,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: const LinearProgressIndicator(
                          value: 0.7,
                          minHeight: 10,
                          color: Colors.yellow,
                          backgroundColor: AppColors.grey,
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        height: 10,
                        thickness: 0.5,
                        color: AppColors.black.withOpacity(0.5),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              "assets/images/user_icon.png",
                              width: 20,
                              height: 20,
                              fit: BoxFit.fill,
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Personal Information',
                                textAlign: TextAlign.left,
                                style: Styles.p2(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700,
                                  color: AppColors.black,
                                ),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width * 0.58,
                                child: Text(
                                  'When you register for an account, we collect personal informmation',
                                  style: Styles.p2(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 13,
                              ),
                              Align(
                                alignment: Alignment.topLeft,
                                child: InkWell(
                                  onTap: () {},
                                  child: Text(
                                    'Continue',
                                    style: Styles.p2(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w700,
                                      color: AppColors.defaultButtonColor,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        height: 10,
                        thickness: 0.5,
                        color: AppColors.black.withOpacity(0.5),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              "assets/images/shape.png",
                              color: AppColors.defaultButtonColor,
                              fit: BoxFit.none,
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Verification',
                            textAlign: TextAlign.left,
                            style: Styles.p2(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Divider(
                        height: 10,
                        thickness: 0.5,
                        color: AppColors.black.withOpacity(0.5),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.topRight,
                            child: Image.asset(
                              "assets/images/email.png",
                              color: AppColors.defaultButtonColor,
                              fit: BoxFit.none,
                            ),
                          ),
                          const SizedBox(
                            width: 25,
                          ),
                          Text(
                            'Confirm email',
                            textAlign: TextAlign.left,
                            style: Styles.p2(
                              fontSize: 14,
                              fontWeight: FontWeight.w700,
                              color: AppColors.black,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 13,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}