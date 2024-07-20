import 'package:freezed_annotation/freezed_annotation.dart';

part 'requeriment_group_modal.freezed.dart';
part 'requeriment_group_modal.g.dart';

@freezed
class RequerimentGroupModal with _$RequerimentGroupModal {
  factory RequerimentGroupModal({
    int? id,
    String? name,
    bool? active,
    int? fontsize,
    bool? internet,
  }) = _RequerimentGroupModal;

  factory RequerimentGroupModal.fromJson(Map<String, dynamic> json) =>
      _$RequerimentGroupModalFromJson(json);
}
