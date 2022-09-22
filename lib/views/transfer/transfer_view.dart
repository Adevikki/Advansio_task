import 'package:advansio_test/app/models/transfer_bank_model.dart';
import 'package:advansio_test/services/bank_user_repository.dart';
import 'package:advansio_test/services/transfer_repository.dart';
import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:advansio_test/views/dashboard/dashboard_view.dart';
import 'package:advansio_test/views/transfer/bank_view.dart';
import 'package:advansio_test/views/transfer/transfer_widgets/recent_users.dart';
import 'package:advansio_test/views/transfer/transfer_widgets/transfer_types.dart';
import 'package:advansio_test/views/transfer/transfer_widgets/user_account_search.dart';
import 'package:advansio_test/widgets/async_value_widget.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Transfer extends StatefulWidget {
  static const routeName = "transfer-screen";
  const Transfer({Key? key}) : super(key: key);

  @override
  State<Transfer> createState() => _TransferState();
}

class _TransferState extends State<Transfer> {
  // TransferSource? transferTypes;
  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, _) {
      final transferTypeFutureProvider =
          ref.watch(transferSourceRepositoryProvider);
      final bankUserFutureProvider =
          ref.watch(bankUserFutureRepositoryProvider);
      final transferTypes = ref.watch(transferSourceProvider);
      return Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: SafeArea(
            child: Column(
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.28,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
                color: AppColors.dashboardAppbar.withOpacity(0.95),
              ),
              // height: MediaQuery.of(context).size.height / 2,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Column(
                  children: [
                    Row(
                      // mainAxisSize: MainAxisSize.min,
                      children: [
                        Align(
                          alignment: Alignment.topRight,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.popAndPushNamed(
                                  context, DashboardScreen.routeName);
                            },
                            child: Image.asset(
                              "assets/images/Path.png",
                              width: 15,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 105,
                        ),
                        Align(
                          alignment: Alignment.topCenter,
                          child: Text(
                            'Transfer',
                            style: Styles.p2(
                              fontSize: 25,
                              fontWeight: FontWeight.w700,
                              color: Styles.appColorWhite,
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 32),
                    Expanded(
                      child: SizedBox(
                        width: double.infinity,
                        child: AsyncValueWidget<TransferTypeOptionList>(
                          value: transferTypeFutureProvider,
                          data: (transferType) {
                            return TransferTypes(
                              transferType: transferType,
                            );
                          },
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: SizedBox(
                height: 600,
                child: SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  child: Container(
                    width: double.infinity,
                    // height: 500,
                    decoration: const BoxDecoration(),
                    child: Column(children: [
                      const SizedBox(
                        height: 10,
                      ),
                      Visibility(
                        visible: TransferSource.online == transferTypes,
                        child: Column(
                          children: [
                            Align(
                              alignment: Alignment.topLeft,
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 22),
                                child: Text(
                                  'Recent',
                                  style: Styles.p2(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.black,
                                  ),
                                ),
                              ),
                            ),
                            AsyncValueWidget<BankUserList>(
                              value: bankUserFutureProvider,
                              data: (bankUser) {
                                return RecentUsers(
                                  bankUser: bankUser,
                                );
                              },
                            ),
                            const AllAccountsSearch(),
                          ],
                        ),
                      ),
                      Visibility(
                        visible: TransferSource.bank == transferTypes,
                        child: const BankView(),
                      ),
                    ]),
                  ),
                ),
              ),
            ),
          ],
        )),
      );
    });
  }
}
