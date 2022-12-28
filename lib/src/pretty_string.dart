/// The extension which contains the only method([prettyPrint]) of this library.
extension PrettyString on String {
  String? _tryGet(int idx) {
    if (idx >= length || idx < 0) {
      return null;
    }
    return this[idx];
  }

  /// This prettily prints all strings.
  String prettyPrint({
    String indent = '  ',
    List<String> separators = const <String>[','],
    Map<String, String> brackets = const {
      '{': '}',
      '[': ']',
      '(': ')',
    },
  }) {
    final buff = StringBuffer();
    final stack = <String>[];

    bool isOpenings(String? char) => brackets.keys.contains(char);
    bool isClosings(String? char) => brackets.values.contains(char);
    bool isSeparator(String? char) => separators.contains(char);

    var withLineBreak = false;
    var formerLineBreak = false;

    for (var idx = 0; idx < length; idx++) {
      final prevChar = _tryGet(idx - 1);
      final currChar = this[idx];
      final nextChar = _tryGet(idx + 1);
      withLineBreak = false;
      formerLineBreak = false;

      if (isOpenings(currChar)) {
        stack.add(currChar);
        withLineBreak = !isClosings(nextChar);
      } else if (isClosings(currChar)) {
        stack.removeLast();
        if (!isOpenings(prevChar)) {
          formerLineBreak = true;
          withLineBreak = true;
        }
      } else if (isSeparator(currChar)) {
        withLineBreak = true;
        if (nextChar ==
            ' ' /** , Ignore a whitespace if its with separator */) {
          idx++;
        }
      } else {
        withLineBreak = false;
      }

      if (withLineBreak) {
        if (formerLineBreak) {
          buff
            ..writeln()
            ..write(indent * stack.length)
            ..write(currChar);
        } else {
          buff
            ..writeln(currChar)
            ..write(indent * stack.length);
        }
      } else {
        buff.write(currChar);
      }
    }

    return buff.toString();
  }
}
