import 'package:chap2/stack.dart';

void main() {
  final list = ['S', 'M', "A", "L"];
  final smokeStack = Stack.of(list);
  print(smokeStack);
}
