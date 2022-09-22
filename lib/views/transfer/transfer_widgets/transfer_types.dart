import 'package:advansio_test/app/models/transfer_bank_model.dart';
import 'package:advansio_test/services/transfer_repository.dart';
import 'package:advansio_test/utils/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransferTypes extends StatelessWidget {
  const TransferTypes({
    Key? key,
    required this.transferType,
  }) : super(key: key);

  final TransferTypeOptionList transferType;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        // padding: const EdgeInsets.all(20.0),
        // physics: const ClampingScrollPhysics(),
        scrollDirection: Axis.horizontal,
        itemCount: transferType.length,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return Consumer(
            builder: (context, ref, child) {
              final transferTypes = transferType[index];
              final selectedType = ref.watch(transferSourceProvider);
              final isSelected = transferTypes.transfer == selectedType;
              return SizedBox(
                // width: double.infinity,
                child: InkWell(
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          height: 60,
                          width: 60,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            color: isSelected
                                ? AppColors.white
                                : AppColors.deepRed,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                "assets/images${transferTypes.icon}",
                                fit: BoxFit.none,
                                color: isSelected
                                    ? AppColors.deepRed
                                    : AppColors.white,
                                height: 30,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Text(
                          transferTypes.typeName!,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.w400,
                            color: AppColors.whiteBackgroundColor,
                          ),
                        ),
                      ],
                    ),
                    onTap: () {
                      // Navigator.pop(context);
                      transferTypes.onTap!();
                    }),
              );
            },
          );
        });
  }
}
