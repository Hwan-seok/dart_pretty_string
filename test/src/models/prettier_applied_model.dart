import 'package:equatable/equatable.dart';
import 'package:pretty_string/pretty_string.dart';

class PrettierAppliedModel extends Equatable with Prettier {
  const PrettierAppliedModel({required this.id});
  final int id;

  @override
  List<Object?> get props => [id];
}
