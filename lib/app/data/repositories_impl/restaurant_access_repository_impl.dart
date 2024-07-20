import 'package:qr_scan/app/data/services/local/token_services.dart';
import 'package:qr_scan/app/data/services/remote/account_api.dart';
import 'package:qr_scan/app/data/services/remote/restaurant_api.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/access_profile/access_profile_model.dart';
import 'package:qr_scan/app/domain/models/restaurant/restaurant.dart';
import 'package:qr_scan/app/domain/repositories/restaunrant_access_repository.dart';

class RestaurantAccessRepositoryImpl implements RestaurantAccessRepository {
  RestaurantAccessRepositoryImpl(this._tokenServices, this._restaurantApi,
      this._accountAPI, this._restaurantServices, this._restaurantIdServices);

  final TokenServices _tokenServices;
  final RestaurantServices _restaurantServices;
  final RestaurantIdServices _restaurantIdServices;
  final AccountAPI _accountAPI;
  final RestaurantApi _restaurantApi;

  @override
  Future<Either<HttpRequestFailure, List<Restaurant>>>
      getListRestaurantAccess() async {
    final token = await _tokenServices.token;
    final usuario = await _accountAPI.getAccount(token: token!);

    return _restaurantApi.getRestaurantsAccess(
        id: usuario!.id.toInt(), token: token);
  }

  @override
  Future<Either<HttpRequestFailure, List<AccessProfileModel>>>
      getAccessProfile() async {
    final token = await _tokenServices.token;
    final usuario = await _accountAPI.getAccount(token: token!);

    return _restaurantApi.getAccessProfile(
        id: usuario!.id.toInt(), token: token);
  }

  @override
  Future<void> asignarRestaurant(String restaurantServer) async {
    return await _restaurantServices.saveRestaurant(restaurantServer);
    // return _tokenServices.deleteToken();
  }

  @override
  Future<String> readRestaurant() async {
    return await _restaurantServices.restaurant ?? '';
    // return _tokenServices.deleteToken();
  }

  @override
  Future<void> deleteRestaurant() {
    return _restaurantServices.deleteRestaurant();
  }

  @override
  Future<void> asignarRestaurantId(String restaurantIdServer) async {
    return await _restaurantIdServices.saveRestId(restaurantIdServer);
    // return _tokenServices.deleteToken();
  }

  @override
  Future<String> readRestaurantId() async {
    return await _restaurantIdServices.restId ?? '';
    // return _tokenServices.deleteToken();
  }

  @override
  Future<void> deleteRestaurantId() {
    return _restaurantIdServices.deleteRestId();
  }
}
