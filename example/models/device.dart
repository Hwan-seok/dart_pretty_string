import 'package:freezed_annotation/freezed_annotation.dart';

part 'device.freezed.dart';

@freezed
class Device with _$Device {
  const factory Device({
    required String id,
    required String platform,
    required String version,
    required bool isRooted,
  }) = _Device;

  const Device._();
}
