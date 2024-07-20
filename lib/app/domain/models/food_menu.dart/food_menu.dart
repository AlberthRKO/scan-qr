import 'package:freezed_annotation/freezed_annotation.dart';

part 'food_menu.freezed.dart';
part 'food_menu.g.dart';

@freezed
class FoodMenu with _$FoodMenu {
  factory FoodMenu({
    int? id,
    String? name,
    double? price,
    double? specialPrice,
    double? specialPrice2,
    double? specialPrice3,
    double? taxrate,
    int? categoryId,
    String? description,
    bool? active,
    String? type,
    int? fontsize,
    String? usestandardtax,
    String? barcode,
    bool? selforder,
    bool? breakfastonly,
    bool? lunchonly,
    bool? dinneronly,
    bool? showonweb,
    bool? printreceipt,
    bool? printkitchen,
    bool? printkitcheN2,
    bool? printkitcheN3,
    bool? printkitcheN4,
    bool? printkitcheN5,
    bool? printkitcheN6,
    bool? internet,
    bool? goodsat,
    bool? goodtes,
    bool? goodsun,
    bool? goodfri,
    bool? goodwed,
    bool? goodthu,
    bool? goodmon,
  }) = _FoodMenu;

  factory FoodMenu.fromJson(Map<String, dynamic> json) =>
      _$FoodMenuFromJson(json);
}

/* 
required int? specialPrice,
    required int? specialPrice2,
    required int? specialPrice3,
required int? categoryId,
    required String? description,
    required bool active,
required String? type,
    required String? fontsize,
    required String? usestandardtax,
    required String? barcode,
    required bool? selforder,
    required bool? breakfastonly,
    required bool? lunchonly,
    required bool? dinneronly,
    required bool? printreceipt,
    required bool? printkitchen,
    required bool? printkitcheN2,
    required bool? printkitcheN3,
    required bool? printkitcheN4,
    required bool? printkitcheN5,
    required bool? internet,
    required bool? goodsat,
    required bool? goodtes,
    required bool? goodsun,
    required bool? goodfri,
    required bool? goodwed,
    required bool? goodthu,
    required bool? goodmon, */
