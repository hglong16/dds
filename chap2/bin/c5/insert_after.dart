import "package:chap2/linked_list.dart";

void main() {
  final list = LinkedList<int>();

  list.append(3);
  list.append(4);
  list.append(6);

  print('Before insertAfter: $list');

  var middleNode = list.nodeAt(1)!;
  list.insertAfter(middleNode, 5);

  print('After insertAfter: $list');
}
