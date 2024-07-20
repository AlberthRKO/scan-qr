import '../../domain/models/user/user.dart';
import '../../domain/repositories/account_repository.dart';
import '../services/local/token_services.dart';
import '../services/remote/account_api.dart';

class AccounteRepositoryImpl implements AccounteRepository {
  AccounteRepositoryImpl(this._accountAPI, this._tokenServices);

  final TokenServices _tokenServices;
  final AccountAPI _accountAPI;

  @override
  Future<User?> getUserData() async {
    final token = await _tokenServices.token;
    // return User(
    //   name: 'alberth',
    // );
    return _accountAPI.getAccount(token: token ?? '');
  }
}
