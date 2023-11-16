import "package:chap2/linked_list.dart";

void main() {
  final list = LinkedList<int>();

  list.append(3);
  list.append(4);
  list.append(5);

  print('Before pop: $list');

  list.pop();

  print("After pop: $list");
}
