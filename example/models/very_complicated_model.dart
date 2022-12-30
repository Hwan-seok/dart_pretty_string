import 'package:freezed_annotation/freezed_annotation.dart';

import 'device.dart';

part 'very_complicated_model.freezed.dart';

@freezed
class VeryComplicatedModel with _$VeryComplicatedModel {
  const factory VeryComplicatedModel({
    required int id,
    required String name,
    required String imageUrl,
    required String address,
    required int laptopCount,
    required int age,
    required String parentImageUrl,
    required String wayToGoHome,
    required bool hasChildren,
    required bool hasCamera,
    required bool hasOwnWebsite,
    required Map<String, dynamic> characteristics,
    required String refrigeratorBrand,
    required String carBrand,
    required String status,
    required bool hasGlasses,
    required List<Device> devices,
    required VeryComplicatedModel? friend,
  }) = _VeryComplicatedModel;

  const VeryComplicatedModel._();
}
