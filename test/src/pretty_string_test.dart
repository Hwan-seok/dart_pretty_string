// ignore_for_file: prefer_const_constructors

import 'package:pretty_string/pretty_string.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

import 'models/dog.dart';
import 'models/member.dart';

void main() {
  test('Nested Equatable model formats well', () {
    final dog = Dog(
      hasTail: true,
      age: 10,
      parents: const [
        Dog(
          hasTail: true,
          age: 100,
          parents: [],
          friend: null,
        ),
        Dog(
          hasTail: true,
          age: 100,
          parents: [],
          friend: null,
        ),
      ],
      friend: Dog(
        hasTail: true,
        age: 100,
        parents: const [],
        friend: null,
      ),
    );

    const result = '''
Dog(
  true,
  10,
  [
    Dog(
      true,
      100,
      [],
      null
    ),
    Dog(
      true,
      100,
      [],
      null
    )
  ],
  Dog(
    true,
    100,
    [],
    null
  )
)''';

    expect(dog.toString().toPrettier(), result);
    expect(dog.toPrettier(), result);
  });

  test('Nested Freezed model formats well', () {
    final member = Member(
      id: 1,
      name: 'John',
      friends: [
        Member(
          id: 10,
          name: 'Amy',
          friends: [],
        ),
        Member(
          id: 30,
          name: 'Barth',
          friends: [],
        ),
        Member(
          id: 50,
          name: 'Irene',
          friends: [],
        ),
      ],
    );

    expect(member.toString().toPrettier(), '''
Member(
  id: 1,
  name: John,
  friends: [
    Member(
      id: 10,
      name: Amy,
      friends: []
    ),
    Member(
      id: 30,
      name: Barth,
      friends: []
    ),
    Member(
      id: 50,
      name: Irene,
      friends: []
    )
  ]
)''');
  });

  test('Nested json formats well', () {
    final json = {
      'p1': 123,
      'p2': 'v2',
      'p3': {
        'p31': 123,
        'p32': {
          'p321': 123,
          'p322': [1, 2, 3, 4, 5, 6, 7],
        }
      }
    };

    expect(json.toString().toPrettier(), '''
{
  p1: 123,
  p2: v2,
  p3: {
    p31: 123,
    p32: {
      p321: 123,
      p322: [
        1,
        2,
        3,
        4,
        5,
        6,
        7
      ]
    }
  }
}''');
  });
}
