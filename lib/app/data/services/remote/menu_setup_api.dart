import 'package:qr_scan/app/data/http/http.dart';
import 'package:qr_scan/app/data/services/utils/handle_failure.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/category_menu/category_menu.dart';
import 'package:qr_scan/app/domain/models/food_menu.dart/food_menu.dart';
import 'package:qr_scan/app/domain/models/menu_setup/menu_list/menu_list_model.dart';
import 'package:qr_scan/app/domain/models/menu_setup/requeriment/requeriment_model.dart';
import 'package:qr_scan/app/domain/models/menu_setup/requeriment_group/requeriment_group_modal.dart';
import 'package:qr_scan/app/domain/typedef.dart';

class MenuSetupApi {
  final Http _http;

  MenuSetupApi(this._http);

  Future<Either<HttpRequestFailure, List<CategoryMenu>>> getListCategorys(
      {required String token, required int id}) async {
    final result = await _http.request(
      '/api/Category/List/$id',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        // devuelve una lista de json de categorias
        // final list = json as List<Json>;
        final list = List<Json>.from(json);
        // tenemos que recorrer la lista para recuperar instancias de empleados
        /* // Programacion tradicional
          final items = <Employee>[];
          for (final item in list) {
            items.add(
              Employee.fromJson(item),
            );} */
        // Programacion funcional
        return list
            .map(
              (item) => CategoryMenu.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  Future<Either<HttpRequestFailure, CategoryMenu>> getCategory({
    required String token,
    required int restId,
    required int idCategory,
  }) async {
    final result = await _http.request(
      '/api/Category/Get/$restId/$idCategory',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        return CategoryMenu.fromJson(json);
      },
    );
    return result.when(
      left: handleHttpFailure,
      right: (category) => Either.right(category),
    );
  }

  Future<Either<HttpRequestFailure, void>> addOrEditCategory(
      {required String token,
      required CategoryMenu category,
      required int restId,
      required int idCategory}) async {
    final result = await _http.request(
      '/api/Category/Post/$restId/$idCategory',
      method: HttpMethod.post,
      body: {
        "name": category.name,
        "type": category.type,
        "fontSize": category.fontSize,
        "description": category.description,
        "usesTandardTax": category.usesTandardTax,
        "taxtRate": category.taxtRate,
        "active": category.active,
        "invisible": category.invisible,
        "printReceIpt": category.printReceIpt,
        "printKitChen": category.printKitChen,
        "printKitChen2": category.printKitChen2,
        "printKitChen4": category.printKitChen4,
        "internet": category.internet,
        "selftOrder": category.selftOrder,
      },
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }

  // Cambiar estado de Categoria
  Future<void> changeActiveCategory({
    required String token,
    required int idCategory,
    required int idRest,
    required bool active,
    required String username,
  }) async {
    final result = await _http.request(
      '/api/Category/ChangeCategory/$idCategory/$idRest/$active/$username',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );
    result.when(left: handleHttpFailure, right: (_) => null);
  }

  // Eliminar Categoria
  Future<void> deleteCategory({
    required String token,
    required int idCategory,
    required int idRest,
    required String username,
  }) async {
    final result = await _http.request(
      '/api/Category/DeleteCategory/$idCategory/$idRest/$username',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );
    result.when(left: handleHttpFailure, right: (_) => null);
  }

  // SubCategoria
  Future<Either<HttpRequestFailure, List<FoodMenu>>> getListFoodMenuCategory({
    required String token,
    required int restaurantId,
    required int id,
  }) async {
    final result = await _http.request(
      '/api/FoodMenuItem/List/$restaurantId/$id',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        // devuelve una lista de json de categorias
        // final list = json as List<Json>;
        final list = List<Json>.from(json);
        // tenemos que recorrer la lista para recuperar instancias de empleados
        /* // Programacion tradicional
          final items = <Employee>[];
          for (final item in list) {
            items.add(
              Employee.fromJson(item),
            );} */
        // Programacion funcional
        return list
            .map(
              (item) => FoodMenu.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  Future<Either<HttpRequestFailure, FoodMenu>> getFoodMenuItem({
    required String token,
    required int restId,
    required int idFoodItem,
  }) async {
    final result = await _http.request(
      '/api/FoodMenuItem/Get/$restId/$idFoodItem',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        return FoodMenu.fromJson(json);
      },
    );
    return result.when(
      left: handleHttpFailure,
      right: (foodItem) => Either.right(foodItem),
    );
  }

  Future<Either<HttpRequestFailure, void>> addOrEditFoodMenuItem({
    required String token,
    required FoodMenu foodMenu,
    required int restId,
    required int idFoodItem,
  }) async {
    final result = await _http.request(
      '/api/FoodMenuItem/Post/$restId/$idFoodItem',
      method: HttpMethod.post,
      body: {
        "name": foodMenu.name,
        "price": foodMenu.price,
        "specialPrice": foodMenu.specialPrice,
        "specialPrice2": foodMenu.specialPrice2,
        "specialPrice3": foodMenu.specialPrice3,
        "taxrate": foodMenu.taxrate,
        "categoryId": foodMenu.categoryId,
        "description": foodMenu.description,
        "active": foodMenu.active,
        "type": foodMenu.type,
        "fontsize": foodMenu.fontsize,
        "usestandardtax": foodMenu.usestandardtax,
        "barcode": foodMenu.barcode,
        "selforder": foodMenu.selforder,
        "breakfastonly": foodMenu.breakfastonly,
        "lunchonly": foodMenu.lunchonly,
        "dinneronly": foodMenu.dinneronly,
        "showonweb": foodMenu.showonweb,
        "printreceipt": foodMenu.printreceipt,
        "printkitchen": foodMenu.printkitchen,
        "printkitcheN2": foodMenu.printkitcheN2,
        "printkitcheN3": foodMenu.printkitcheN3,
        "printkitcheN4": foodMenu.printkitcheN4,
        "printkitcheN5": foodMenu.printkitcheN5,
        "printkitcheN6": foodMenu.printkitcheN6,
        "internet": foodMenu.internet,
        "goodsat": foodMenu.goodsat,
        "goodtes": foodMenu.goodtes,
        "goodsun": foodMenu.goodsun,
        "goodfri": foodMenu.goodfri,
        "goodwed": foodMenu.goodwed,
        "goodthu": foodMenu.goodthu,
        "goodmon": foodMenu.goodmon,
      },
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }

  // Cambiar estado de food Items
  Future<void> changeActiveFoodItem({
    required String token,
    required int idFoodMenuItem,
    required bool active,
    required int idRest,
    required String username,
  }) async {
    final result = await _http.request(
      '/api/FoodMenuItem/ChangeFoodMenuItem/$idFoodMenuItem/$active/$idRest/$username',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );
    result.when(left: handleHttpFailure, right: (_) => null);
  }

  // Delete subcategoria
  // /api/FoodMenuItem/DeleteFoodMenuItem/{IdFoodMenuItem}/{SystemId}/{username}
  // Eliminar Categoria
  Future<void> deleteFoodMenuItem({
    required String token,
    required int idFoodMenuItem,
    required int idRest,
    required String username,
  }) async {
    final result = await _http.request(
      '/api/FoodMenuItem/DeleteFoodMenuItem/$idFoodMenuItem/$idRest/$username',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );
    result.when(left: handleHttpFailure, right: (_) => null);
  }

  // Add FoodMenuItem
  // /api/FoodMenuItem/Post/{SystemId}/{FoodMenuItemId}

  /* Future<Either<HttpRequestFailure, void>> addFoodMenuItem({
    required String token,
    required FoodMenu foodMenu,
    
    required int restId,
  }) async {
    final result = await _http.request(
      '/api/Employee/PostSave/$restId',
      method: HttpMethod.post,
      body: {
        'name': employee.name,
        'firstname': employee.firstname,
        'lastname': employee.lastname,
        'active': employee.active,
        'pin': employee.pin,
      },
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  } */

  // Section de Modifier Group
  Future<Either<HttpRequestFailure, List<RequerimentGroupModal>>>
      getListModifierGroup({required String token, required int id}) async {
    final result = await _http.request(
      '/api/RequirementGroup/List/$id',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        // devuelve una lista de json de categorias
        // final list = json as List<Json>;
        final list = List<Json>.from(json);
        // tenemos que recorrer la lista para recuperar instancias de empleados
        /* // Programacion tradicional
          final items = <Employee>[];
          for (final item in list) {
            items.add(
              Employee.fromJson(item),
            );} */
        // Programacion funcional
        return list
            .map(
              (item) => RequerimentGroupModal.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  // Obtener
  Future<Either<HttpRequestFailure, RequerimentGroupModal>> getModifierGroup({
    required String token,
    required int restId,
    required int idGroup,
  }) async {
    final result = await _http.request(
      '/api/RequirementGroup/Get/$restId/$idGroup',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        return RequerimentGroupModal.fromJson(json);
      },
    );
    return result.when(
      left: handleHttpFailure,
      right: (requerimentGroup) => Either.right(requerimentGroup),
    );
  }

  Future<Either<HttpRequestFailure, void>> addOrEditModifierGroup({
    required String token,
    required RequerimentGroupModal requerimentGroupModal,
    required int restId,
    required int idGroup,
  }) async {
    final result = await _http.request(
      '/api/RequirementGroup/Post/$restId/$idGroup',
      method: HttpMethod.post,
      body: {
        "name": requerimentGroupModal.name,
        "active": requerimentGroupModal.active,
        "fontsize": requerimentGroupModal.fontsize,
        "internet": requerimentGroupModal.internet,
      },
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }

  // Eliminar Modifier Group
  Future<void> deleteModifierGroup({
    required String token,
    required int idGroup,
    required int idRest,
    required String username,
  }) async {
    final result = await _http.request(
      '/api/RequirementGroup/DeleteRequirementGroup/$idGroup/$idRest/$username',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );
    result.when(left: handleHttpFailure, right: (_) => null);
  }

  // Eliminar Modifier Item
  Future<void> deleteModifierItem({
    required String token,
    required int idGroup,
    required int idRest,
    required String username,
  }) async {
    final result = await _http.request(
      '/api/Requirement/DeleteRequirement/$idGroup/$idRest/$username',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );
    result.when(left: handleHttpFailure, right: (_) => null);
  }

  // Requeriment Items
  Future<Either<HttpRequestFailure, List<RequerimentModel>>>
      getListRequerimentByGroup({
    required String token,
    required int restaurantId,
    required int idGroup,
  }) async {
    final result = await _http.request(
      '/api/Requirement/List/$restaurantId/$idGroup',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        // Programacion funcional
        return list
            .map(
              (item) => RequerimentModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }

  // Obtener Modifier Item by Group or global
  Future<Either<HttpRequestFailure, RequerimentModel>> getModifierItem({
    required String token,
    required int restId,
    required int idItem,
  }) async {
    final result = await _http.request(
      '/api/Requirement/Get/$restId/$idItem',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        return RequerimentModel.fromJson(json);
      },
    );
    return result.when(
      left: handleHttpFailure,
      right: (requerimentItem) => Either.right(requerimentItem),
    );
  }

  Future<Either<HttpRequestFailure, void>> addOrEditModifierItem({
    required String token,
    required RequerimentModel requerimentModel,
    required int restId,
    required int idItem,
  }) async {
    final result = await _http.request(
      '/api/Requirement/Post/$restId/$idItem',
      method: HttpMethod.post,
      body: {
        "name": requerimentModel.name,
        "price": requerimentModel.price,
        "price1": requerimentModel.price1,
        "price2": requerimentModel.price2,
        "price3": requerimentModel.price3,
        "requirementGroupId": requerimentModel.requirementGroupId,
        "requirementGroup": requerimentModel.requirementGroup,
        "shortname": requerimentModel.shortname,
        "fontsize": requerimentModel.fontsize,
        "active": requerimentModel.active,
        "internet": requerimentModel.internet,
        "printreceipt": requerimentModel.printreceipt,
        "printkitchen": requerimentModel.printkitchen,
        "printkitcheN2": requerimentModel.printkitcheN2,
        "printkitcheN3": requerimentModel.printkitcheN3,
        "printkitcheN4": requerimentModel.printkitcheN4,
        "printkitcheN5": requerimentModel.printkitcheN5,
        "printkitcheN6": requerimentModel.printkitcheN6,
      },
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {},
    );

    return result.when(
      left: handleHttpFailure,
      right: (_) => Either.right(
        null,
      ),
    );
  }

  /* Section de menuGroup y menuList */
  // listar los menuList del restaurant
  Future<Either<HttpRequestFailure, List<MenuListModel>>> getListMenuList(
      {required String token, required int restId}) async {
    final result = await _http.request(
      '/api/Menu/List/$restId/0',
      headers: {
        'Authorization': 'Bearer $token',
      },
      onSucces: (json) {
        final list = List<Json>.from(json);
        // Programacion funcional
        return list
            .map(
              (item) => MenuListModel.fromJson(item),
            )
            .toList();
      },
    );
    // retornamos los dos caminos
    return result.when(
      left: handleHttpFailure,
      right: (list) => Either.right(list),
    );
  }
}
