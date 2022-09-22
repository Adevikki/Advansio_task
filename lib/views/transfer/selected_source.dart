import 'package:advansio_test/utils/constants/colors.dart';
import 'package:advansio_test/utils/styles.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SelectSourceBottomSheet extends ConsumerWidget {
  const SelectSourceBottomSheet({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final screenSize = MediaQuery.of(context).size;

    return Container(
      height: screenSize.height * 0.4,
      width: screenSize.width * 0.8,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Align(
                alignment: Alignment.topLeft,
                child: Text(
                  'Select Account',
                  style: Styles.captions2(
                    fontWeight: FontWeight.w600,
                    fontSize: 20,
                    color: AppColors.black,
                  ),
                )),
          ),
          const Expanded(
            child: _FundingOptionsList(),
          ),
        ],
      ),
    );
  }
}

class _FundingOptionsList extends StatelessWidget {
  const _FundingOptionsList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (context, index) {
        return Consumer(
          builder: (context, ref, child) {
            // final fundingOption = fundingOptions[index];
            // final selectedFundingSource =
            //     ref.watch(taskExpensesHistoryProvider);
            // final isSelected = fundingOption.source == selectedFundingSource;

            return ListTile(
              onTap: () {
                Navigator.of(context).pop();
                // fundingOption.onTap!();
              },
              leading: Text(
                '02334457689',
                style: Styles.captions2(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
              //   style: Styles.title1(
              //       color: Styles.trackerGrey300, fontWeight: FontWeight.w700),
              // ),
              title: Align(
                alignment: Alignment.topCenter,
                child: Text(
                  '-',
                  style: Styles.captions2(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                    color: AppColors.black,
                  ),
                ),
              ),
              trailing: Text(
                'N1,000.00',
                style: Styles.captions2(
                  fontWeight: FontWeight.w400,
                  fontSize: 16,
                  color: AppColors.black,
                ),
              ),
            );
          },
        );
      },
      separatorBuilder: (BuildContext context, int index) {
        return const Divider(
          height: 7,
          color: AppColors.grey,
        );
      },
    );
  }
}
