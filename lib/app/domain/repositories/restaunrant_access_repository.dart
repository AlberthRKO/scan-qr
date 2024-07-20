import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/access_profile/access_profile_model.dart';
import 'package:qr_scan/app/domain/models/restaurant/restaurant.dart';

abstract class RestaurantAccessRepository {
  Future<Either<HttpRequestFailure, List<Restaurant>>>
      getListRestaurantAccess();
  Future<Either<HttpRequestFailure, List<AccessProfileModel>>>
      getAccessProfile();
  Future<void> deleteRestaurant();
  Future<void> asignarRestaurant(String restaurantServer);
  Future<String?> readRestaurant();
  Future<void> deleteRestaurantId();
  Future<void> asignarRestaurantId(String restaurantIdServer);
  Future<String?> readRestaurantId();
}
