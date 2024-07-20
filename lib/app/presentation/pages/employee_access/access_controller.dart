import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/employee/employee.dart';
import 'package:qr_scan/app/presentation/pages/employee_access/state/access_state.dart';

import '../../../domain/either/either.dart';
import '../../../domain/repositories/authentication_repository.dart';
import '../../global/state_notifier.dart';

class AccessController extends StateNotifier<AccessState> {
  AccessController(super.state, {required this.authenticationRepository});

  final AuthenticationRepository authenticationRepository;

  void onPinChanged(String text) {
    onlyUpdate(
      state.copyWith(
        pin: text.trim().toLowerCase(),
      ),
    );
  }

  Future<Either<HttpRequestFailure, Employee>> submitPin(String restId) async {
    state = state.copyWith(
      fetching: true,
    );
    final result =
        await authenticationRepository.accessWithPin(restId, state.pin);
    result.when(
      left: (_) => state = state.copyWith(
        fetching: false,
      ),
      right: (_) => state = state.copyWith(
        fetching: false,
      ),
    );
    return result;
  }
}
