import 'package:freezed_annotation/freezed_annotation.dart';

part 'category_menu.freezed.dart';
part 'category_menu.g.dart';

@freezed
class CategoryMenu with _$CategoryMenu {
  factory CategoryMenu({
    int? id,
    String? name,
    String? type,
    int? fontSize,
    String? description,
    String? usesTandardTax,
    String? taxtRate,
    bool? active,
    bool? invisible,
    bool? printReceIpt,
    bool? printKitChen,
    bool? printKitChen2,
    bool? printKitChen4,
    bool? internet,
    bool? selftOrder,
  }) = _CategoryMenu;

  factory CategoryMenu.fromJson(Map<String, dynamic> json) =>
      _$CategoryMenuFromJson(json);
}
