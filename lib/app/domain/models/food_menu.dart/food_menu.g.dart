// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'food_menu.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FoodMenuImpl _$$FoodMenuImplFromJson(Map<String, dynamic> json) =>
    _$FoodMenuImpl(
      id: (json['id'] as num?)?.toInt(),
      name: json['name'] as String?,
      price: (json['price'] as num?)?.toDouble(),
      specialPrice: (json['specialPrice'] as num?)?.toDouble(),
      specialPrice2: (json['specialPrice2'] as num?)?.toDouble(),
      specialPrice3: (json['specialPrice3'] as num?)?.toDouble(),
      taxrate: (json['taxrate'] as num?)?.toDouble(),
      categoryId: (json['categoryId'] as num?)?.toInt(),
      description: json['description'] as String?,
      active: json['active'] as bool?,
      type: json['type'] as String?,
      fontsize: (json['fontsize'] as num?)?.toInt(),
      usestandardtax: json['usestandardtax'] as String?,
      barcode: json['barcode'] as String?,
      selforder: json['selforder'] as bool?,
      breakfastonly: json['breakfastonly'] as bool?,
      lunchonly: json['lunchonly'] as bool?,
      dinneronly: json['dinneronly'] as bool?,
      showonweb: json['showonweb'] as bool?,
      printreceipt: json['printreceipt'] as bool?,
      printkitchen: json['printkitchen'] as bool?,
      printkitcheN2: json['printkitcheN2'] as bool?,
      printkitcheN3: json['printkitcheN3'] as bool?,
      printkitcheN4: json['printkitcheN4'] as bool?,
      printkitcheN5: json['printkitcheN5'] as bool?,
      printkitcheN6: json['printkitcheN6'] as bool?,
      internet: json['internet'] as bool?,
      goodsat: json['goodsat'] as bool?,
      goodtes: json['goodtes'] as bool?,
      goodsun: json['goodsun'] as bool?,
      goodfri: json['goodfri'] as bool?,
      goodwed: json['goodwed'] as bool?,
      goodthu: json['goodthu'] as bool?,
      goodmon: json['goodmon'] as bool?,
    );

Map<String, dynamic> _$$FoodMenuImplToJson(_$FoodMenuImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'price': instance.price,
      'specialPrice': instance.specialPrice,
      'specialPrice2': instance.specialPrice2,
      'specialPrice3': instance.specialPrice3,
      'taxrate': instance.taxrate,
      'categoryId': instance.categoryId,
      'description': instance.description,
      'active': instance.active,
      'type': instance.type,
      'fontsize': instance.fontsize,
      'usestandardtax': instance.usestandardtax,
      'barcode': instance.barcode,
      'selforder': instance.selforder,
      'breakfastonly': instance.breakfastonly,
      'lunchonly': instance.lunchonly,
      'dinneronly': instance.dinneronly,
      'showonweb': instance.showonweb,
      'printreceipt': instance.printreceipt,
      'printkitchen': instance.printkitchen,
      'printkitcheN2': instance.printkitcheN2,
      'printkitcheN3': instance.printkitcheN3,
      'printkitcheN4': instance.printkitcheN4,
      'printkitcheN5': instance.printkitcheN5,
      'printkitcheN6': instance.printkitcheN6,
      'internet': instance.internet,
      'goodsat': instance.goodsat,
      'goodtes': instance.goodtes,
      'goodsun': instance.goodsun,
      'goodfri': instance.goodfri,
      'goodwed': instance.goodwed,
      'goodthu': instance.goodthu,
      'goodmon': instance.goodmon,
    };
