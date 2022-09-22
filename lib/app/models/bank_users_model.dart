import 'package:advansio_test/app/models/transfer_bank_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BankUserClass {
  final BankUserSource? bankUser;
  final String? typeName;
  final String? phoneNumber;
  final String? icon;
  final void Function()? onTap;

  BankUserClass({
    this.bankUser,
    this.phoneNumber,
    this.typeName,
    this.icon,
    this.onTap,
  });
}

enum BankUserSource {
  user1,
  user2,
  user3,
  user4,
  none
}

String bankUserSourceToString(BankUserSource source) {
  switch (source) {
    case BankUserSource.user1:
      return "user1";
    case BankUserSource.user2:
      return "user2";
    case BankUserSource.user3:
      return "user3";
    case BankUserSource.user4:
      return "user4";
      case BankUserSource.none:
      return "none";
    default:
      return "unKnown";
  }
}

final bankUserSourceProvider = StateProvider.autoDispose<BankUserSource>(
  ((ref) => BankUserSource.none),
);
