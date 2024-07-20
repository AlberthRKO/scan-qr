import 'package:qr_scan/app/data/http/http.dart';
import 'package:qr_scan/app/data/services/utils/handle_failure.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/access_profile/access_profile_model.dart';
import 'package:qr_scan/app/domain/models/restaurant/restaurant.dart';
import 'package:qr_scan/app/domain/typedef.dart';

class RestaurantApi {
  RestaurantApi(this._http);

  final Http _http;

  Future<Either<HttpRequestFailure, List<Restaurant>>> getRestaurantsAccess({
    required int id,
    required String token,
  }) async {
    final result = await _http.request(
      '/api/User/Get/$id',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(
          json['collectionSystem'],
        );
        return list
            .map(
              (item) => Restaurant.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
        left: handleHttpFailure,
        right: (list) {
          // print('Se convirtio la respuesta');
          return Either.right(list);
        });
  }

  Future<Either<HttpRequestFailure, List<AccessProfileModel>>>
      getAccessProfile({
    required int id,
    required String token,
  }) async {
    final result = await _http.request(
      '/api/User/Get/$id',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(
          json['profile']['collectionMenuOption'],
        );
        return list
            .map(
              (item) => AccessProfileModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
        left: handleHttpFailure,
        right: (list) {
          // print('Se convirtio la respuesta');
          return Either.right(list);
        });
  }
}
