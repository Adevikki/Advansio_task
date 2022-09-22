import 'package:advansio_test/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class PinTextFieldRow extends StatelessWidget {
  const PinTextFieldRow({
    Key? key,
    required this.phoneController,
    required this.text,
  }) : super(key: key);

  final List<TextEditingController> phoneController;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: List.generate(4, (index) {
        return Expanded(
          child: PinTextField(
            phoneController: phoneController[index],
          ),
        );
      }),
    );
  }
}

class PinTextField extends StatefulWidget {
  const PinTextField({
    Key? key,
    required this.phoneController,
  }) : super(key: key);

  final TextEditingController phoneController;

  @override
  State<PinTextField> createState() => _PinTextFieldState();
}

class _PinTextFieldState extends State<PinTextField> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        // color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.07),
            blurRadius: 17,
            offset: const Offset(5, 30),
          ),
        ],
      ),
      child: SizedBox(
        child: Container(
          margin: const EdgeInsets.symmetric(
            horizontal: 8,
          ),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(16),
            border: Border.all(
              color: Colors.black.withOpacity(0.03),
              width: 1,
            ),
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.black.withOpacity(0.1),
            //     blurRadius: 7,
            //     offset: const Offset(20, 80),
            //   ),
            // ],
          ),
          width: 52,
          height: 52,
          child: TextField(
            readOnly: true,
            controller: widget.phoneController,
            onChanged: (val) {
              if (val.length == 1 || widget.phoneController.text.length == 1) {
                setState(() {
                  FocusScope.of(context).nextFocus();
                });
              }
            },
            textAlign: TextAlign.center,
            cursorColor: AppColors.lightBlue,
            keyboardType: TextInputType.number,
            style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
            ),
            decoration: const InputDecoration(
              border: InputBorder.none,
            ),
          ),
        ),
      ),
    );
  }
}
