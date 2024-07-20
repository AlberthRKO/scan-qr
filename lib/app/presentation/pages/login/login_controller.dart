import 'package:qr_scan/app/domain/failures/sign_in/sign_in_failure.dart';

import '../../../domain/either/either.dart';
import '../../../domain/models/user/user.dart';
import '../../../domain/repositories/authentication_repository.dart';
import '../../global/state_notifier.dart';
import 'state/login_state.dart';

class LoginController extends StateNotifier<LoginState> {
  LoginController(super.state, {required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  // cambiamos el metodo

  void onUsernameChanged(String text) {
    onlyUpdate(
      state.copyWith(
        username: text.trim().toLowerCase(),
      ),
    );
  }

  void onIpServerChanged(String text) {
    onlyUpdate(
      state.copyWith(
        ipServer: text.trim(),
      ),
    );
  }

  void onPasswordChanged(String text) {
    onlyUpdate(
      state.copyWith(
        password: text.replaceAll(' ', ''),
      ),
    );
  }

  Future<void> guardarIp(String ipServer) async {
    final ip = await authenticationRepository.asignarIP(ipServer);
    return ip;
  }

  Future<void> deleteIp() async {
    return await authenticationRepository.deleteIp();
  }

  Future<String> readIp() async {
    return await authenticationRepository.readIP() ?? "";
  }

  Future<Either<SignInFailure, User>> submit() async {
    state = state.copyWith(
      fetching: true,
    );
    final result =
        await authenticationRepository.signIn(state.username, state.password);
    result.when(
      left: (_) => state = state.copyWith(
        fetching: false,
      ),
      right: (_) => null,
    );
    return result;
  }
}
