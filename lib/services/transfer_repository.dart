import 'package:advansio_test/app/models/transfer_bank_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef TransferTypeOptionList = List<TransferClass>;

final transferListRepositoryProvider =
    Provider<TransferSourceRepository>((ref) {
  return TransferSourceRepository(ref);
});
final transferSourceRepositoryProvider =
    FutureProvider.autoDispose<TransferTypeOptionList>((ref) async {
  return ref.watch(transferListRepositoryProvider).fetchTransferSources();
});

class TransferSourceRepository {
  TransferSourceRepository(this.ref);

  final Ref ref;
  final TransferTypeOptionList _balanceType = [];

  TransferTypeOptionList get balanceType => _balanceType;

  Future<TransferTypeOptionList> fetchTransferSources() async{
    return await Future.delayed(const Duration(milliseconds: 5), () {
      return [
        TransferClass(
            transfer: TransferSource.online,
            typeName: 'Online',
            icon: '/user_icon.png',
            onTap: () {
              ref.read(transferSourceProvider.state).state =
                  TransferSource.online;
            }),
        TransferClass(
          transfer: TransferSource.bank,
          typeName: 'Bank',
          icon: '/bank.png',
          onTap: () {
            ref.read(transferSourceProvider.state).state = TransferSource.bank;
          },
        ),
        TransferClass(
          transfer: TransferSource.mobile,
          typeName: 'Mobile',
          icon: '/wireless-symbol.png',
          onTap: () {
            ref.read(transferSourceProvider.state).state =
                TransferSource.mobile;
          },
        ),
        TransferClass(
          transfer: TransferSource.qrCode,
          typeName: 'QR Code',
          icon: '/qr-code.png',
          onTap: () {
            ref.read(transferSourceProvider.state).state =
                TransferSource.qrCode;
          },
        ),
      ];
    });
  }
}
