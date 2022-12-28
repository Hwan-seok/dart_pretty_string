import 'package:equatable/equatable.dart';

class Dog extends Equatable {
  const Dog({
    required this.hasTail,
    required this.age,
    required this.parents,
    required this.friend,
  });

  final bool hasTail;
  final int age;
  final List<Dog> parents;
  final Dog? friend;

  @override
  List<Object?> get props => [hasTail, age, parents, friend];
}
