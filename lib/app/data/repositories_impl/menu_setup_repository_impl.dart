import 'package:qr_scan/app/data/services/local/token_services.dart';
import 'package:qr_scan/app/data/services/remote/menu_setup_api.dart';
import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/category_menu/category_menu.dart';
import 'package:qr_scan/app/domain/models/food_menu.dart/food_menu.dart';
import 'package:qr_scan/app/domain/models/menu_setup/menu_list/menu_list_model.dart';
import 'package:qr_scan/app/domain/models/menu_setup/requeriment/requeriment_model.dart';
import 'package:qr_scan/app/domain/models/menu_setup/requeriment_group/requeriment_group_modal.dart';
import 'package:qr_scan/app/domain/repositories/menu_setup_repository.dart';

class MenuSetupRepositoryImpl extends MenuSetupRepository {
  MenuSetupRepositoryImpl(this._tokenServices, this._menuSetupApi);

  final TokenServices _tokenServices;
  final MenuSetupApi _menuSetupApi;

  @override
  Future<Either<HttpRequestFailure, List<CategoryMenu>>> getListCategorys(
      int id) async {
    final token = await _tokenServices.token;

    return _menuSetupApi.getListCategorys(token: token ?? '', id: id);
  }

  @override
  Future<Either<HttpRequestFailure, List<FoodMenu>>> getListFoodMenu(
      int restaurantId, int id) async {
    final token = await _tokenServices.token;

    return _menuSetupApi.getListFoodMenuCategory(
        token: token ?? '', restaurantId: restaurantId, id: id);
  }

  @override
  Future<void> changeActiveCategory(
      int idCategory, int idRest, bool active, String username) async {
    final token = await _tokenServices.token;
    _menuSetupApi.changeActiveCategory(
        token: token ?? '',
        idCategory: idCategory,
        idRest: idRest,
        active: active,
        username: username);
  }

  @override
  Future<void> changeActiveFoodItem(
      int idFoodMenuItem, bool active, int idRest, String username) async {
    final token = await _tokenServices.token;
    _menuSetupApi.changeActiveFoodItem(
        token: token ?? '',
        idFoodMenuItem: idFoodMenuItem,
        active: active,
        idRest: idRest,
        username: username);
  }

  @override
  Future<void> deleteCategory(
      int idCategory, int idRest, String username) async {
    final token = await _tokenServices.token;
    _menuSetupApi.deleteCategory(
        token: token ?? '',
        idCategory: idCategory,
        idRest: idRest,
        username: username);
  }

  @override
  Future<void> deleteModifierGroup(
      int idGroup, int idRest, String username) async {
    final token = await _tokenServices.token;
    _menuSetupApi.deleteModifierGroup(
        token: token ?? '',
        idGroup: idGroup,
        idRest: idRest,
        username: username);
  }

  @override
  Future<void> deleteModifierItem(
      int idGroup, int idRest, String username) async {
    final token = await _tokenServices.token;
    _menuSetupApi.deleteModifierItem(
        token: token ?? '',
        idGroup: idGroup,
        idRest: idRest,
        username: username);
  }

  @override
  Future<void> deleteFoodMenuItem(
      int idFoodMenuItem, int idRest, String username) async {
    final token = await _tokenServices.token;
    _menuSetupApi.deleteFoodMenuItem(
      token: token ?? '',
      idFoodMenuItem: idFoodMenuItem,
      idRest: idRest,
      username: username,
    );
  }

  /* Seccion de Edits y Gets */
  @override
  Future<Either<HttpRequestFailure, void>> addOrEditCategory(
      CategoryMenu category, int restId, int idCategory) async {
    final token = await _tokenServices.token;
    return _menuSetupApi.addOrEditCategory(
        token: token ?? '',
        category: category,
        restId: restId,
        idCategory: idCategory);
  }

  @override
  Future<Either<HttpRequestFailure, void>> addOrEditModifierGroup(
      RequerimentGroupModal requerimentGroupModal,
      int restId,
      int idGroup) async {
    final token = await _tokenServices.token;
    return _menuSetupApi.addOrEditModifierGroup(
        token: token ?? '',
        requerimentGroupModal: requerimentGroupModal,
        restId: restId,
        idGroup: idGroup);
  }

  @override
  Future<Either<HttpRequestFailure, void>> addOrEditFoodMenuItem(
      FoodMenu foodMenu, int restId, int idFoodItem) async {
    final token = await _tokenServices.token;
    return _menuSetupApi.addOrEditFoodMenuItem(
        token: token ?? '',
        foodMenu: foodMenu,
        restId: restId,
        idFoodItem: idFoodItem);
  }

  @override
  Future<Either<HttpRequestFailure, void>> addOrEditModifierItem(
      RequerimentModel requerimentModel, int restId, int idItem) async {
    final token = await _tokenServices.token;
    return _menuSetupApi.addOrEditModifierItem(
        token: token ?? '',
        requerimentModel: requerimentModel,
        restId: restId,
        idItem: idItem);
  }

  @override
  Future<Either<HttpRequestFailure, CategoryMenu>> getCategory(
      int restId, int idCategory) async {
    final token = await _tokenServices.token;
    return _menuSetupApi.getCategory(
        token: token ?? '', restId: restId, idCategory: idCategory);
  }

  @override
  Future<Either<HttpRequestFailure, FoodMenu>> getFoodMenuItem(
      int restId, int idFoodItem) async {
    final token = await _tokenServices.token;
    return _menuSetupApi.getFoodMenuItem(
        token: token ?? '', restId: restId, idFoodItem: idFoodItem);
  }

  @override
  Future<Either<HttpRequestFailure, RequerimentGroupModal>> getModifierGroup(
      int restId, int idGroup) async {
    final token = await _tokenServices.token;
    return _menuSetupApi.getModifierGroup(
        token: token ?? '', restId: restId, idGroup: idGroup);
  }

  @override
  Future<Either<HttpRequestFailure, RequerimentModel>> getModifierItem(
      int restId, int idItem) async {
    final token = await _tokenServices.token;
    return _menuSetupApi.getModifierItem(
        token: token ?? '', restId: restId, idItem: idItem);
  }

  // Section de ModifierGroup
  @override
  Future<Either<HttpRequestFailure, List<RequerimentGroupModal>>>
      getListModifierGroup(int id) async {
    final token = await _tokenServices.token;

    return _menuSetupApi.getListModifierGroup(token: token ?? '', id: id);
  }

  @override
  Future<Either<HttpRequestFailure, List<RequerimentModel>>>
      getListRequerimentByGroup(int restaurantId, int idGroup) async {
    final token = await _tokenServices.token;

    return _menuSetupApi.getListRequerimentByGroup(
        token: token ?? '', restaurantId: restaurantId, idGroup: idGroup);
  }

  // Section MenuList

  @override
  Future<Either<HttpRequestFailure, List<MenuListModel>>> getListMenuList(
      int restId) async {
    final token = await _tokenServices.token;

    return _menuSetupApi.getListMenuList(token: token ?? '', restId: restId);
  }
}
