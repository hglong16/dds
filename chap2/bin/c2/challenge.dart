import "package:chap2/stack.dart";

void main() {
  challengeOne();
  challengeTwo();
}

void challengeOne() {
  const list = ["s", "m", "a", "l", "l"];
  printInReverse(list);
}

void printInReverse(List<String> list) {
  final stack = Stack.of(list);
  while (stack.isNotEmpty) {
    print(stack.pop());
  }
}

void challengeTwo() {
  print(areParenthesesBalanced('h((e))llo(world)()'));
  print(areParenthesesBalanced('(hello world'));
  print(areParenthesesBalanced('hello)(world'));
}

bool areParenthesesBalanced(String text) {
  print(text);
  print('is Balanced?');
  final stack = Stack<String>();
  for (var i = 0; i < text.length; i++) {
    final char = text[i];
    if (char == '(') {
      stack.push(char);
    } else if (char == ')') {
      if (stack.isEmpty) {
        return false;
      } else {
        stack.pop();
      }
    }
  }
  return stack.isEmpty;
}
