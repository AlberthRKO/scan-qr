import 'package:qr_scan/app/domain/either/either.dart';
import 'package:qr_scan/app/domain/failures/htpp_request/http_request_failure.dart';
import 'package:qr_scan/app/domain/models/category_menu/category_menu.dart';
import 'package:qr_scan/app/domain/models/food_menu.dart/food_menu.dart';
import 'package:qr_scan/app/domain/models/menu_setup/menu_list/menu_list_model.dart';
import 'package:qr_scan/app/domain/models/menu_setup/requeriment/requeriment_model.dart';
import 'package:qr_scan/app/domain/models/menu_setup/requeriment_group/requeriment_group_modal.dart';

abstract class MenuSetupRepository {
  Future<Either<HttpRequestFailure, List<CategoryMenu>>> getListCategorys(
      int id);
  Future<Either<HttpRequestFailure, List<FoodMenu>>> getListFoodMenu(
      int restaurantId, int id);

  Future<Either<HttpRequestFailure, CategoryMenu>> getCategory(
    int restId,
    int idCategory,
  );

  Future<Either<HttpRequestFailure, void>> addOrEditCategory(
    CategoryMenu category,
    int restId,
    int idCategory,
  );

  Future<void> changeActiveCategory(
      int idCategory, int idRest, bool active, String username);
  Future<void> deleteCategory(int idCategory, int idRest, String username);
  Future<void> changeActiveFoodItem(
      int idFoodMenuItem, bool active, int idRest, String username);
  Future<void> deleteFoodMenuItem(
      int idFoodMenuItem, int idRest, String username);

  // Section Modifier Group
  Future<Either<HttpRequestFailure, List<RequerimentGroupModal>>>
      getListModifierGroup(int id);

  Future<Either<HttpRequestFailure, void>> addOrEditModifierGroup(
    RequerimentGroupModal requerimentGroupModal,
    int restId,
    int idGroup,
  );
  Future<Either<HttpRequestFailure, void>> addOrEditFoodMenuItem(
    FoodMenu foodMenu,
    int restId,
    int idFoodItem,
  );
  Future<Either<HttpRequestFailure, void>> addOrEditModifierItem(
    RequerimentModel requerimentModel,
    int restId,
    int idItem,
  );
  Future<Either<HttpRequestFailure, RequerimentGroupModal>> getModifierGroup(
    int restId,
    int idGroup,
  );
  Future<Either<HttpRequestFailure, FoodMenu>> getFoodMenuItem(
    int restId,
    int idFoodItem,
  );
  Future<Either<HttpRequestFailure, RequerimentModel>> getModifierItem(
    int restId,
    int idItem,
  );

  Future<void> deleteModifierGroup(int idCategory, int idRest, String username);
  Future<void> deleteModifierItem(int idCategory, int idRest, String username);
  Future<Either<HttpRequestFailure, List<RequerimentModel>>>
      getListRequerimentByGroup(int restaurantId, int idGroup);

  Future<Either<HttpRequestFailure, List<MenuListModel>>> getListMenuList(
      int restId);
}
