// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'employee.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$EmployeeImpl _$$EmployeeImplFromJson(Map<String, dynamic> json) =>
    _$EmployeeImpl(
      id: (json['id'] as num?)?.toInt(),
      firstname: json['firstname'] as String?,
      lastname: json['lastname'] as String?,
      name: json['name'] as String?,
      fullname: json['fullname'] as String?,
      type: json['type'] as String?,
      pin: json['pin'] as String?,
      longpin: json['longpin'] as String?,
      email: json['email'] as String?,
      cell: json['cell'] as String?,
      active: json['active'] as bool?,
      ismanager: json['ismanager'] as bool?,
      managerrate: (json['managerrate'] as num?)?.toDouble(),
      iscurrentdriver: json['iscurrentdriver'] as bool?,
      driverrate: (json['driverrate'] as num?)?.toDouble(),
      shiftmanager: json['shiftmanager'] as bool?,
      iscurrentwaiter: json['iscurrentwaiter'] as bool?,
      waiterrate: (json['waiterrate'] as num?)?.toDouble(),
      bartender: json['bartender'] as bool?,
      bartenderrate: (json['bartenderrate'] as num?)?.toDouble(),
      iscashier: json['iscashier'] as bool?,
      cashierrate: (json['cashierrate'] as num?)?.toDouble(),
      ishost: json['ishost'] as bool?,
      hostrate: (json['hostrate'] as num?)?.toDouble(),
      iscook: json['iscook'] as bool?,
      cookrate: (json['cookrate'] as num?)?.toDouble(),
      isbus: json['isbus'] as bool?,
      busrate: (json['busrate'] as num?)?.toDouble(),
      isrunner: json['isrunner'] as bool?,
      runnerrate: (json['runnerrate'] as num?)?.toDouble(),
      isowner: json['isowner'] as bool?,
      iskitchen: json['iskitchen'] as bool?,
      kitchenrate: (json['kitchenrate'] as num?)?.toDouble(),
      dishwasher: json['dishwasher'] as bool?,
      dishrate: (json['dishrate'] as num?)?.toDouble(),
      linejob: json['linejob'] as bool?,
      linerate: (json['linerate'] as num?)?.toDouble(),
      overtime: json['overtime'] as bool?,
      hourlyrate: (json['hourlyrate'] as num?)?.toDouble(),
      salary: (json['salary'] as num?)?.toDouble(),
      commissionpercent: (json['commissionpercent'] as num?)?.toDouble(),
      dollardiscountlimit: (json['dollardiscountlimit'] as num?)?.toDouble(),
      percentdiscountlimit: (json['percentdiscountlimit'] as num?)?.toDouble(),
      cashdrawerhost: json['cashdrawerhost'] as String?,
      cashdrawerport: json['cashdrawerport'] as String?,
      localcashdraweronly: json['localcashdraweronly'] as bool?,
      birthday: json['birthday'] as String?,
      contactphoneareacode: json['contactphoneareacode'] as String?,
      contactphone: json['contactphone'] as String?,
      contactperson: json['contactperson'] as String?,
      defaultscreen: json['defaultscreen'] as String?,
    );

Map<String, dynamic> _$$EmployeeImplToJson(_$EmployeeImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'firstname': instance.firstname,
      'lastname': instance.lastname,
      'name': instance.name,
      'fullname': instance.fullname,
      'type': instance.type,
      'pin': instance.pin,
      'longpin': instance.longpin,
      'email': instance.email,
      'cell': instance.cell,
      'active': instance.active,
      'ismanager': instance.ismanager,
      'managerrate': instance.managerrate,
      'iscurrentdriver': instance.iscurrentdriver,
      'driverrate': instance.driverrate,
      'shiftmanager': instance.shiftmanager,
      'iscurrentwaiter': instance.iscurrentwaiter,
      'waiterrate': instance.waiterrate,
      'bartender': instance.bartender,
      'bartenderrate': instance.bartenderrate,
      'iscashier': instance.iscashier,
      'cashierrate': instance.cashierrate,
      'ishost': instance.ishost,
      'hostrate': instance.hostrate,
      'iscook': instance.iscook,
      'cookrate': instance.cookrate,
      'isbus': instance.isbus,
      'busrate': instance.busrate,
      'isrunner': instance.isrunner,
      'runnerrate': instance.runnerrate,
      'isowner': instance.isowner,
      'iskitchen': instance.iskitchen,
      'kitchenrate': instance.kitchenrate,
      'dishwasher': instance.dishwasher,
      'dishrate': instance.dishrate,
      'linejob': instance.linejob,
      'linerate': instance.linerate,
      'overtime': instance.overtime,
      'hourlyrate': instance.hourlyrate,
      'salary': instance.salary,
      'commissionpercent': instance.commissionpercent,
      'dollardiscountlimit': instance.dollardiscountlimit,
      'percentdiscountlimit': instance.percentdiscountlimit,
      'cashdrawerhost': instance.cashdrawerhost,
      'cashdrawerport': instance.cashdrawerport,
      'localcashdraweronly': instance.localcashdraweronly,
      'birthday': instance.birthday,
      'contactphoneareacode': instance.contactphoneareacode,
      'contactphone': instance.contactphone,
      'contactperson': instance.contactperson,
      'defaultscreen': instance.defaultscreen,
    };
