import 'package:freezed_annotation/freezed_annotation.dart';

part 'member.freezed.dart';

@freezed
class Member with _$Member {
  const factory Member({
    required int id,
    required String name,
    required List<Member> friends,
  }) = _Member;

  const Member._();
}
