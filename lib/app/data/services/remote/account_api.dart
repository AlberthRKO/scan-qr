import '../../../domain/models/user/user.dart';
import '../../http/http.dart';

class AccountAPI {
  AccountAPI(this._http);

  final Http _http;

  Future<User?> getAccount({required String token}) async {
    final result = await _http.request(
      '/api/User',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        return User.fromJson(json);
      },
    );
    return result.when(
      left: (_) => null,
      right: (user) => user,
    );
  }
}
