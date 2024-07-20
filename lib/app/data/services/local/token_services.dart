import 'package:flutter_secure_storage/flutter_secure_storage.dart';

const _token = 'token';
const _restId = 'restId';
const _ipServer = 'ipServer';
const _restaurant = 'restaurant';
const _user = 'user';
const _passUser = 'pass';

class TokenServices {
  TokenServices(this._flutterSecureStorage);

  final FlutterSecureStorage _flutterSecureStorage;

  Future<String?> get token async {
    final token = await _flutterSecureStorage.read(key: _token);
    return token;
  }

  Future<void> saveToken(String token) {
    return _flutterSecureStorage.write(key: _token, value: token);
  }

  Future<void> deleteToken() {
    return _flutterSecureStorage.delete(key: _token);
  }
}

class IpServices {
  IpServices(this._flutterSecureStorage);

  final FlutterSecureStorage _flutterSecureStorage;

  Future<String?> get ipServer async {
    final ipServer = await _flutterSecureStorage.read(key: _ipServer);
    return ipServer;
  }

  Future<void> saveIp(String ipServer) {
    return _flutterSecureStorage.write(key: _ipServer, value: ipServer);
  }

  Future<void> deleteIp() {
    return _flutterSecureStorage.delete(key: _ipServer);
  }
}

class RestaurantServices {
  RestaurantServices(this._flutterSecureStorage);

  final FlutterSecureStorage _flutterSecureStorage;

  Future<String?> get restaurant async {
    final restaurant = await _flutterSecureStorage.read(key: _restaurant);
    return restaurant;
  }

  Future<void> saveRestaurant(String restaurant) {
    return _flutterSecureStorage.write(key: _restaurant, value: restaurant);
  }

  Future<void> deleteRestaurant() {
    return _flutterSecureStorage.delete(key: _restaurant);
  }
}

class RestaurantIdServices {
  RestaurantIdServices(this._flutterSecureStorage);

  final FlutterSecureStorage _flutterSecureStorage;

  Future<String?> get restId async {
    final restId = await _flutterSecureStorage.read(key: _restId);
    return restId;
  }

  Future<void> saveRestId(String restId) {
    return _flutterSecureStorage.write(key: _restId, value: restId);
  }

  Future<void> deleteRestId() {
    return _flutterSecureStorage.delete(key: _restId);
  }
}

class UserServices {
  UserServices(this._flutterSecureStorage);

  final FlutterSecureStorage _flutterSecureStorage;

  Future<String?> get user async {
    final user = await _flutterSecureStorage.read(key: _user);
    return user;
  }

  Future<void> saveUser(String user) {
    return _flutterSecureStorage.write(key: _user, value: user);
  }

  Future<void> deleteUser() {
    return _flutterSecureStorage.delete(key: _user);
  }
}

class PassUserServices {
  PassUserServices(this._flutterSecureStorage);

  final FlutterSecureStorage _flutterSecureStorage;

  Future<String?> get passUser async {
    final passUser = await _flutterSecureStorage.read(key: _passUser);
    return passUser;
  }

  Future<void> savePassUser(String passUser) {
    return _flutterSecureStorage.write(key: _passUser, value: passUser);
  }

  Future<void> deletePassUser() {
    return _flutterSecureStorage.delete(key: _passUser);
  }
}
