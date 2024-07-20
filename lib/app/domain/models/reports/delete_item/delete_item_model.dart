import 'package:freezed_annotation/freezed_annotation.dart';

part 'delete_item_model.freezed.dart';
part 'delete_item_model.g.dart';

@freezed
class DeleteItemModel with _$DeleteItemModel {
  factory DeleteItemModel({
    required int id,
    required String employeename,
    required String note,
    required double unitprice,
    required double amount,
    required int quantity,
    required int orderid,
    required int employeeid,
    required String type,
    required String content,
    required String tablename,
    required String itemname,
    required String timestring,
    required String shiftdatestring,
    required int dayid,
  }) = _DeleteItemModel;

  factory DeleteItemModel.fromJson(Map<String, dynamic> json) =>
      _$DeleteItemModelFromJson(json);
}


/* String note,
int unitprice,
    int amount,
    int quantity,
    int orderid,
    int employeeid,
    String type,
    String content,
    String tablename,
    String itemname,
    String timestring,
    String shiftdatestring,
    int dayid, */