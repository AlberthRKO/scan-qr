import 'package:flutter/foundation.dart';

abstract class StateNotifier<State> extends ChangeNotifier {
  StateNotifier(this._state) : _oldState = _state;

  State _state, _oldState;
  bool _mounted = true;

  State get state => _state;
  State get oldState => _oldState;
  bool get mounted => _mounted;

  set state(State newState) {
    _update(newState);
  }

  void onlyUpdate(State newState) {
    _update(newState, notify: false);
  }

  void onlyUpdateWithNotify(State newState) {
    _update(newState, notify: true);
  }

  // funcion para no llamar a changenotifier
  void _update(
    State newState, {
    bool notify = true,
  }) {
    // hacemos la notificacion a la vista solo si el estado cambio
    if (_state != newState) {
      _oldState = _state;
      _state = newState;
      if (notify) {
        notifyListeners();
      }
    }
  }

  @override
  void dispose() {
    _mounted = false;
    super.dispose();
  }
}
