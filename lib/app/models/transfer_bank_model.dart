import 'package:hooks_riverpod/hooks_riverpod.dart';

class TransferClass {
  final TransferSource? transfer;
  final String? typeName;
  final String? icon;
  final void Function()? onTap;

  TransferClass({
    this.transfer,
    this.typeName,
    this.icon,
    this.onTap,
  });
}

enum TransferSource {
  mobile,
  bank,
  online,
  qrCode,
}

String transferSourceToString(TransferSource source) {
  switch (source) {
    case TransferSource.online:
      return "Mobile";
    case TransferSource.bank:
      return "Bank";
    case TransferSource.mobile:
      return "Online";
    case TransferSource.qrCode:
      return "QR_Code";
    default:
      return "Unknown";
  }
}

final transferSourceProvider = StateProvider.autoDispose<TransferSource>(
  ((ref) => TransferSource.online),
);
