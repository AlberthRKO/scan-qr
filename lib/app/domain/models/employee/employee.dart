import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:qr_scan/app/domain/typedef.dart';

part 'employee.freezed.dart';
part 'employee.g.dart';

@freezed
class Employee with _$Employee {
  factory Employee({
    int? id,
    String? firstname,
    String? lastname,
    String? name,
    String? fullname,
    String? type,
    String? pin,
    String? longpin,
    String? email,
    String? cell,
    bool? active,
    bool? ismanager,
    double? managerrate,
    bool? iscurrentdriver,
    double? driverrate,
    bool? shiftmanager,
    bool? iscurrentwaiter,
    double? waiterrate,
    bool? bartender,
    double? bartenderrate,
    bool? iscashier,
    double? cashierrate,
    bool? ishost,
    double? hostrate,
    bool? iscook,
    double? cookrate,
    bool? isbus,
    double? busrate,
    bool? isrunner,
    double? runnerrate,
    bool? isowner,
    bool? iskitchen,
    double? kitchenrate,
    bool? dishwasher,
    double? dishrate,
    bool? linejob,
    double? linerate,
    bool? overtime,
    double? hourlyrate,
    double? salary,
    double? commissionpercent,
    double? dollardiscountlimit,
    double? percentdiscountlimit,
    String? cashdrawerhost,
    String? cashdrawerport,
    bool? localcashdraweronly,
    String? birthday,
    String? contactphoneareacode,
    String? contactphone,
    String? contactperson,
    String? defaultscreen,
  }) = _Employee;

  factory Employee.fromJson(Json json) => _$EmployeeFromJson(json);
}

/* Object? readTitleValue(Map map, String _){
  return map['original'] ?? map['remplazar'];
  // y en el valor que recibe poner @JsonKey(readValue: funcionEsta)
} */



// Content faltante 

/* 
        "color" = "null",
        "cashier2" = false,
        "birthday" = "",
        "deletedby" = 0,
        "percentdiscountlimit" = 0,
        "commissionrate" = 0,
        "carrier" = "null",
        "defaultscreen" = "Main",
        "checkpunch" = false,
        "sushi" = false,
        "sushiRate" = 0,
        "statusType" = 0 */


/* required int restaurantid,
    required String firstname,
    required String lastname,
    required String name,
    required String fullname,
    required String type,
    required String pin,
    required String longpin,
    required String email,
    required String cell,
    required bool active,
    required bool iscurrentdriver,
    required bool ismanager,
    required bool shiftmanager,
    required bool iscurrentwaiter,
    required bool bartender,
    required bool iscashier,
    required bool iscook,
    required bool isbus,
    required bool ishost,
    required bool isowner,
    required bool iskitchen,
    required bool isrunner,
    required bool dishwasher,
    required bool linejob,
    required bool overtime, */
