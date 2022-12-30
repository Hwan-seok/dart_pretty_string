# Pretty String

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![License: MIT][license_badge]][license_link]

A simple way to convert strings to be human-readable!

## Installation 💻

Add `pretty_string` to your `pubspec.yaml`:

```yaml
dependencies:
  pretty_string: 1.0.1
```

Install it:

```sh
flutter pub get
```

## Motivation
Almost every application, we need to log APIs, BLoc state transitions, ..etc to debug what is happening there.
Also, we don't want to implement `toString()` by hand because it's quite tedious. So, many developers are finding the solution and finally stops at `Equatable` and `Freezed`. They provides good implementations for `toString()` but its not enough. They returns only one line which makes crazy as the model size is bigger.

See generated string made by `.toPrettier()` in [Equatable model](#equatable-model) and [Freezed model](#freezed-model). Pretty powerful right?
Remember this examples are very simple cases. In real world, you probably knows there are much complicated object that has dozens of properties which makes you crazy to see log without `toPrettier()`.

## Usage💯
- This packages has very simple extension method named `.toPrettier()`.
This makes every strings to be awesome to read!
What only you need to do is calling `.toPrettier()` to an object or a string.

```dart
final object = VeryComplicatedObject(.....);
log(object.toPrettier())

final someVeryComplicatedString = '{..., ..., ...}'
log(someVeryComplicatedString.toPrettier())
```

## Examples🌏
### Equatable model
```dart
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

/// with toString()
Dog(true, 10, [Dog(true, 100, [], null), Dog(true, 100, [], null)], Dog(true, 100, [], null))

/// with toPrettier()
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
)
```

### Freezed model
```dart
@freezed
class Member with _$Member {
  const factory Member({
    required int id,
    required String name,
    required List<Member> friends,
  }) = _Member;

  const Member._();
}
 
/// with toString()
Member(id: 1, name: John, friends: [Member(id: 10, name: Amy, friends: []), Member(id: 30, name: Barth, friends: []), Member(id: 50, name: Irene, friends: [])])

/// with toPrettier()
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
)
```

## Advanced
### Custom
- `.toPrettier()` has a following defaults. If you want to change the behavior, pass it as a argument.
```dart
/// Changes intent width or characters.
String indent = '  ',
/// Needed to use a special separators instead of ','
List<String> separators = const <String>[','],
/// Needed to use brackets rather than followings
Map<String, String> brackets = const {
  '{': '}',
  '[': ']',
  '(': ')',
},
```
# Contribute🤖
- Feel free to open pull request to improve this project!
## Running Tests 🧪

To run all unit tests:

```sh
very_good test --coverage
```

[flutter_install_link]: https://docs.flutter.dev/get-started/install
[github_actions_link]: https://docs.github.com/en/actions/learn-github-actions
[license_badge]: https://img.shields.io/badge/license-MIT-blue.svg
[license_link]: https://opensource.org/licenses/MIT
[logo_black]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_black.png#gh-light-mode-only
[logo_white]: https://raw.githubusercontent.com/VGVentures/very_good_brand/main/styles/README/vgv_logo_white.png#gh-dark-mode-only
[mason_link]: https://github.com/felangel/mason
[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
[very_good_cli_link]: https://pub.dev/packages/very_good_cli
[very_good_coverage_link]: https://github.com/marketplace/actions/very-good-coverage
[very_good_ventures_link]: https://verygood.ventures
[very_good_ventures_link_light]: https://verygood.ventures#gh-light-mode-only
[very_good_ventures_link_dark]: https://verygood.ventures#gh-dark-mode-only
[very_good_workflows_link]: https://github.com/VeryGoodOpenSource/very_good_workflows
