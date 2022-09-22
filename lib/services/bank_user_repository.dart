import 'package:advansio_test/app/models/bank_users_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

typedef BankUserList = List<BankUserClass>;

final bankUserRepositoryProvider = Provider<BankUserRepository>((ref) {
  return BankUserRepository(ref);
});
final bankUserFutureRepositoryProvider =
    FutureProvider.autoDispose<BankUserList>((ref) async {
  return ref.watch(bankUserRepositoryProvider).fetchBankUser();
});

class BankUserRepository {
  BankUserRepository(this.ref);

  final Ref ref;
  final BankUserList _balanceType = [];

  BankUserList get balanceType => _balanceType;

  Future<BankUserList> fetchBankUser() async {
    return await Future.delayed(const Duration(milliseconds: 5), () {
      return [
        BankUserClass(
            bankUser: BankUserSource.user1,
            typeName: 'Hailey',
            phoneNumber: '+090078601',
            icon: '/user1.png',
            onTap: () {
              ref.read(bankUserSourceProvider.state).state =
                  BankUserSource.user1;
            }),
        BankUserClass(
            bankUser: BankUserSource.user2,
            typeName: 'Zayn',
            phoneNumber: '+090078601',
            icon: '/user2.png',
            onTap: () {
              ref.read(bankUserSourceProvider.state).state =
                  BankUserSource.user2;
            }),
        BankUserClass(
            bankUser: BankUserSource.user3,
            typeName: 'Hailey',
            phoneNumber: '+090078601',
            icon: '/user2.png',
            onTap: () {
              ref.read(bankUserSourceProvider.state).state =
                  BankUserSource.user2;
            }),
        // BankUserClass(
        //     bankUser: BankUserSource.user1,
        //     typeName: 'Thomson',
        //     phoneNumber: '+090078601',
        //     icon: '/user_icon.png',
        //     onTap: () {
        //       ref.read(bankUserSourceProvider.state).state =
        //           BankUserSource.user3;
        //     }),
      ];
    });
  }
}
