import 'package:chap2/linked_list.dart';

void main() {
  final list = LinkedList<int>();

  list.append(5);
  list.append(6);
  list.append(7);

  print('Before removeLast: $list');

  list.removeLast();

  print("After removeLast: $list");
}
